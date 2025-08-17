#!/usr/bin/env bash
set -euo pipefail

# Builds the Brooklyn.saver and packages it into a macOS .pkg installer.
# Requirements (run on macOS): Xcode command line tools, pkgbuild, productbuild

ROOT_DIR=$(cd "$(dirname "$0")/.." && pwd)
INSTALLER_DIR="$ROOT_DIR/Installer"
DERIVED_DATA="$INSTALLER_DIR/build"
PAYLOAD_DIR="$INSTALLER_DIR/payload"
SCRIPTS_DIR="$INSTALLER_DIR/scripts"
OUT_DIR="$INSTALLER_DIR/out"

echo "[1/6] Determining version from Brooklyn/Info.plist"
PLIST="$ROOT_DIR/Brooklyn/Info.plist"
VERSION=$(/usr/libexec/PlistBuddy -c "Print :CFBundleShortVersionString" "$PLIST" 2>/dev/null || echo "0.0.0")
BUILD_NUM=$(/usr/libexec/PlistBuddy -c "Print :CFBundleVersion" "$PLIST" 2>/dev/null || echo "0")
echo "Version: $VERSION ($BUILD_NUM)"

echo "[2/6] Building Brooklyn target (Release)"
xcodebuild \
  -project "$ROOT_DIR/Brooklyn.xcodeproj" \
  -scheme Brooklyn \
  -configuration Release \
  -derivedDataPath "$DERIVED_DATA" \
  -quiet \
  build

PRODUCT_PATH="$DERIVED_DATA/Build/Products/Release/Brooklyn.saver"
if [[ ! -d "$PRODUCT_PATH" ]]; then
  echo "ERROR: Built product not found at $PRODUCT_PATH" >&2
  exit 1
fi

echo "[3/6] Preparing payload"
rm -rf "$PAYLOAD_DIR"
mkdir -p "$PAYLOAD_DIR/Library/Screen Savers"
cp -R "$PRODUCT_PATH" "$PAYLOAD_DIR/Library/Screen Savers/Brooklyn.saver"

echo "[4/6] Ensuring scripts directory exists"
mkdir -p "$SCRIPTS_DIR"
chmod +x "$SCRIPTS_DIR"/* 2>/dev/null || true

echo "[5/6] Building component package (.pkg)"
mkdir -p "$OUT_DIR"
PKG_ID="io.github.mookwoo.brooklyn.pkg"
PKG_PATH="$OUT_DIR/Brooklyn-$VERSION.pkg"

pkgbuild \
  --root "$PAYLOAD_DIR" \
  --identifier "$PKG_ID" \
  --version "$VERSION" \
  --install-location / \
  --scripts "$SCRIPTS_DIR" \
  "$PKG_PATH"

if [[ -n "${INSTALLER_SIGN_IDENTITY:-}" ]]; then
  echo "[6/6] Signing installer with identity: $INSTALLER_SIGN_IDENTITY"
  SIGNED_PKG_PATH="$OUT_DIR/Brooklyn-$VERSION-signed.pkg"
  productsign --sign "$INSTALLER_SIGN_IDENTITY" "$PKG_PATH" "$SIGNED_PKG_PATH"
  echo "Signed pkg: $SIGNED_PKG_PATH"
else
  echo "[6/6] Skipping signing (set INSTALLER_SIGN_IDENTITY to sign)"
fi

echo "Done. Output in: $OUT_DIR"

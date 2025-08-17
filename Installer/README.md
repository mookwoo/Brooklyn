# Installer

Build a macOS installer package (.pkg) for Brooklyn.

Requirements (run on macOS):
- Xcode (Command Line Tools)
- `pkgbuild` and `productbuild` (included with Xcode tools)

## Build

```shell
chmod +x Installer/build_installer.sh Installer/scripts/postinstall
./Installer/build_installer.sh
```

Outputs to `Installer/out/`.

Optional: sign the package by exporting your Developer ID Installer identity name:

```shell
export INSTALLER_SIGN_IDENTITY="Developer ID Installer: Your Name (TEAMID)"
./Installer/build_installer.sh
```

After installing, find Brooklyn in System Settings > Screen Saver. If Gatekeeper blocks it, see the Troubleshooting section in the main README.

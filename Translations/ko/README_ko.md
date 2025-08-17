![](https://github.com/pedrommcarrasco/Brooklyn/blob/master/Design/logo.jpg?raw=true)

> Brooklyn Academy of Music의 Howard Gilman Opera House에서 진행된 **[Apple Special Event](https://www.youtube.com/watch?v=bfHEnw6Rm-4)** (2018년 10월 30일)에서 선보인 애니메이션을 바탕으로 하여 [Pedro Carrasco](https://twitter.com/pedrommcarrasco)가 제작한 화면 보호기입니다.

<p align="center">
    <img src="https://github.com/pedrommcarrasco/Brooklyn/blob/master/Design/showcase.gif?raw=true" alt="Example"/>
</p>

![GitHub All Releases](https://img.shields.io/github/downloads/pedrommcarrasco/brooklyn/total.svg) [![Build Status](https://travis-ci.org/pedrommcarrasco/Brooklyn.svg?branch=master)](https://travis-ci.org/pedrommcarrasco/Brooklyn) ![GitHub contributors](https://img.shields.io/github/contributors/pedrommcarrasco/brooklyn.svg) [![apm](https://img.shields.io/apm/l/vim-mode.svg)](https://github.com/pedrommcarrasco/Brooklyn/blob/master/LICENSE)

## 기능 ✅

* 인터넷 연결이 필요하지 않음
* Homebrew 지원
* 라이트 테마와 다크 테마
* 보고 싶은 애니메이션을 선택
* 각 애니메이션을 원하는 횟수만큼 반복
* 애니메이션을 무작위로 재생함

<p align="center">
    <img src="https://github.com/pedrommcarrasco/Brooklyn/blob/master/Design/preferenceMenu.png?raw=true" alt="Example"/>
</p>

## 설치 📦

**Brooklyn**을 어떤 방법으로 설치하든지 간에 설치하는 동안 시스템 환경설정(몬터레이 이하) 또는 시스템 설정(벤투라 이상)을 닫아주세요.

### 수동 :hand:

1. [다운로드하려면 여기를 클릭하세요](https://github.com/pedrommcarrasco/Brooklyn/releases/download/2.2.0/Brooklyn.saver.zip)
2. **Brooklyn.saver**을 여세요 (더블 클릭)
3. `'Brooklyn.saver'은(는) 확인되지 않은 개발자가 배포했기 때문에 열 수 없습니다.`라는 메시지가 보이면, `확인`을 클릭하세요
4. 시스템 환경설정(또는 Ventura 이상에서는 시스템 설정)을 여세요
5. `보안 및 개인 정보 보호` → `일반`(Ventura 이상에서는 `개인 정보 보호 및 보안`)
6. Brooklyn 항목에서 `열기` 또는 `Open Anyway`를 클릭하세요

### Homebrew 🍺

1. 터미널을 실행하세요
2. `brew install --cask brooklyn --no-quarantine`을 입력하세요
    - Gatekeeper가 계속 차단하면, 시스템 설정 → 개인 정보 보호 및 보안에서 Brooklyn에 대해 `Open Anyway`를 선택하세요.

## 제거 🗑️

### 수동 :hand:

- 시스템 환경설정에서 Brooklyn을 우클릭 하여 `Delete Brooklyn`을 선택하거나,
- `/Library/Screen Savers`와 `/Users/USERNAME/Library/Screen Savers`에서 `Brooklyn.saver`를 삭제하세요.

### Homebrew 🍺

1. 터미널을 실행하세요
2. `brew cask uninstall brooklyn`을 입력하세요

## 호환성 🔧

최신 macOS 버전(최근 릴리스 포함)에서 동작합니다. 최소 요구 사항은 이제 macOS High Sierra (10.13)입니다. 최신 macOS(Tahoe)에서도 위 설치 절차로 동일하게 동작해야 하며, 보안 경고가 반복되면 아래 문제 해결 명령을 사용하세요.

## 문제 해결 🤕

Brooklyn 화면 보호기는 Gatekeeper에 의해 차단될 수 있습니다. 일부 macOS 버전에서는 `Open Anyway`를 클릭해도 충분하지 않을 수 있습니다.

격리(quarantine) 속성을 제거하려면 터미널에서 다음 명령을 실행하세요:

```shell
sudo xattr -dr com.apple.quarantine "$HOME/Library/Screen Savers/Brooklyn.saver"
```

## Brooklyn 지원 ❤️

안녕하세요 👋

저는 지난 2017년 2월부터 iOS 엔지니어로 지내온 포르투갈인 Pedro입니다. 저는 OSS의 열렬한 팬이자 기여자입니다. 공유함으로써 도움을 주고, 또 공유된 것을 통해 배웁니다.

저는 **[Brooklyn](https://github.com/pedrommcarrasco/Brooklyn)**과 **[CocoaHub](https://cocoahub.app)**를 포함한 여러 프레임워크와 애플리케이션을 제작하고 오픈소스화했습니다.

또한, 저는 **[SwiftAveiro](https://swiftaveiro.xyz)**와 **[CocoaHeads Porto](https://www.meetup.com/CocoaHeads-Porto/)**의 일원으로 회의 및 모임 주최자입니다.

만약 제가 한 일들이 마음에 들고 제가 이러한 일들을 계속하는 것을 돕고 싶으시다면, 다음을 고려해 주세요:
* https://github.com/users/pedrommcarrasco/sponsorship
* https://www.buymeacoffee.com/pedrommcarrasco
* https://www.paypal.me/pedrommcarrasco


## 기여 🙌 

[아이디어](https://github.com/pedrommcarrasco/Brooklyn/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc)를 제공하거나, 새로운 기능을 포함한 [Pull Requests](https://github.com/pedrommcarrasco/Brooklyn/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-desc)를 열거나, 기존에 존재하던 이슈를 해결하는 것 등을 통해 이 프로젝트에 이바지할 수 있으니 부담 갖지 말고 기여해보세요.

## 라이선스 ⛔

Brooklyn은 MIT 라이선스 하에 이용할 수 있습니다. 더 자세한 정보는 [라이선스](https://github.com/pedrommcarrasco/Brooklyn/blob/master/LICENSE) 파일을 참고해주세요. 로고와 원본 애니메이션은 Apple 사의 소유물입니다.
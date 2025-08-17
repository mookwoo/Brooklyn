**Brooklyn is not actively maintained, as it doesn’t generate income to justify the time investment. If you need a bug fixed, feel free to contact the author via email to discuss having it resolved for a fee.**

![](https://github.com/pedrommcarrasco/Brooklyn/blob/master/Design/logo.jpg?raw=true)

> Screen Saver by [Pedro Carrasco](https://twitter.com/pedrommcarrasco) based on the animations presented during **[Apple Special Event](https://www.youtube.com/watch?v=bfHEnw6Rm-4)** (October 30, 2018) from the Brooklyn Academy of Music, Howard Gilman Opera House.

<p align="center">
    <img src="https://github.com/pedrommcarrasco/Brooklyn/blob/master/Design/showcase.gif?raw=true" alt="Example"/>
</p>

![GitHub All Releases](https://img.shields.io/github/downloads/pedrommcarrasco/brooklyn/total.svg) [![Build Status](https://travis-ci.org/pedrommcarrasco/Brooklyn.svg?branch=master)](https://travis-ci.org/pedrommcarrasco/Brooklyn) ![GitHub contributors](https://img.shields.io/github/contributors/pedrommcarrasco/brooklyn.svg) [![apm](https://img.shields.io/apm/l/vim-mode.svg)](https://github.com/pedrommcarrasco/Brooklyn/blob/master/LICENSE)

## Features ✅

* Doesn't require internet connection
* Homebrew support
* Light & Dark theme
* Select which animations you want to see
* Loop each animation how many times you want
* Make the animations' order random

<p align="center">
    <img src="https://github.com/pedrommcarrasco/Brooklyn/blob/master/Design/preferenceMenu.png?raw=true" alt="Example"/>
</p>

## Installation 📦

Independently of how you install **Brooklyn**, please close System Preferences (macOS ≤ Monterey) or System Settings (macOS Ventura and later) while installing.

Screen savers can be set programmatically with this Terminal command:

```shell
defaults -currentHost write com.apple.screensaver moduleDict -dict moduleName Brooklyn path "$HOME/Library/Screen Savers/Brooklyn.saver"
```

### Manual :hand:

1. [Click here to Download](https://github.com/pedrommcarrasco/Brooklyn/releases/download/2.2.0/Brooklyn.saver.zip)
2. Open **Brooklyn.saver** (double click)
3. If you see `"Brooklyn.saver" can't be opened because it is from an unidentified developer`, press `OK`
4. Open System Preferences (or System Settings on Ventura+)
5. Go to `Security & Privacy` → `General` (or `Privacy & Security` on Ventura+)
6. Click `Open Anyway` for Brooklyn

### Homebrew 🍺

1. Open terminal
2. Enter `brew install --cask brooklyn --no-quarantine`
    - If Gatekeeper still blocks it, open System Settings → Privacy & Security and choose `Open Anyway` for Brooklyn.

## Uninstallation 🗑️

### Manual :hand:

- Right-click on Brooklyn in System Preferences and select `Delete Brooklyn`, or
- Delete `Brooklyn.saver` either in `/Library/Screen Savers` or `/Users/USERNAME/Library/Screen Savers`. 

### Homebrew 🍺

1. Open terminal
2. Enter `brew uninstall --cask brooklyn`

## Compatibility 🔧

Works on modern macOS versions, including recent releases. Minimum macOS is now 10.13 (High Sierra). If you’re on the latest macOS (Tahoe), installation via the steps above should work the same; if you hit a security prompt loop, use the troubleshooting command below.

## Troubleshooting 🤕

The Brooklyn screen saver can be blocked by Gatekeeper. Sometimes clicking `Open Anyway` is not enough on some macOS versions.  

To remove the quarantine attribute, run this command in your terminal:

```shell
sudo xattr -dr com.apple.quarantine "$HOME/Library/Screen Savers/Brooklyn.saver"
```

## Support Brooklyn ❤️

Hello there 👋

I’m Pedro, a Portuguese iOS Engineer since February 2017. I’m an avid OSS enthusiast and contributor - help by sharing, learn by what’s shared.

I've built and open-sourced multiple frameworks and applications, including **[Brooklyn](https://github.com/pedrommcarrasco/Brooklyn)** and **[CocoaHub](https://cocoahub.app)**.

I'm also a conference and meetup organizer, being part of **[SwiftAveiro](https://swiftaveiro.xyz)** and **[CocoaHeads Porto](https://www.meetup.com/CocoaHeads-Porto/)**.

If you enjoy my work and would like to help me continue it, please consider:
* https://github.com/users/pedrommcarrasco/sponsorship
* https://www.buymeacoffee.com/pedrommcarrasco
* https://www.paypal.me/pedrommcarrasco


## Contributing  🙌 

Feel free to contribute to this project by providing [ideas](https://github.com/pedrommcarrasco/Brooklyn/issues?q=is%3Aissue+is%3Aopen+sort%3Aupdated-desc) or opening [pull requests](https://github.com/pedrommcarrasco/Brooklyn/pulls?q=is%3Apr+is%3Aopen+sort%3Aupdated-desc) with new features or solving an existing issue.

## License ⛔

Brooklyn's available under the MIT license. See the [LICENSE](https://github.com/pedrommcarrasco/Brooklyn/blob/master/LICENSE) file for more information. Logo & original animations are Apple's property.

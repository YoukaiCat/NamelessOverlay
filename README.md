# Installation

## Add overlay manually:
```
in /etc/portage/repos.conf/nameless.conf

[nameless]
priority = 50
location = /usr/local/overlay/nameless
sync-type = git
sync-uri = https://github.com/YoukaiCat/NamelessOverlay.git
auto-sync = Yes
```

## Or with layman:
```
layman -o https://raw.githubusercontent.com/YoukaiCat/NamelessOverlay/master/repositories.xml -f -a nameless
```

Travis CI status: [![Build Status](https://travis-ci.org/YoukaiCat/NamelessOverlay.svg)](https://travis-ci.org/YoukaiCat/NamelessOverlay)

# Overlay contents
| Name                               | Desc                                                                   |
|------------------------------------|------------------------------------------------------------------------|
| app-misc/mimic                     | Substitutes common ASCII characters to UTF8 homoglyphs                 |
| app-misc/tagsistant                | Tag-based filesystem that turns directories into tags and search files |
| app-misc/tmsu                      | Tag your files and then access them through a virtual filesystem       |
| dev-db/unixodbc-gui-qt             | Qt based GUI for unixODBC                                              |
| dev-lang/clips                     | Expert system                                                          |
| dev-lang/mosml                     | Moscow ML is a light-weight implementation of Standard ML              |
| dev-libs/msgpack                   | MessagePack is a binary-based efficient data interchange format        |
| net-im/purple-vk-plugin            | Vk.com plugin for Pidgin                                               |
| net-im/purple-skypeweb             | SkypeWeb plugin for Pidgin                                             |
| net-libs/opendht                   | C++11 Distributed Hash Table implementation                            |
| net-misc/mac-telnet                | Mac-Telnet - Connect to RouterOS or mactelnetd devices via MAC address |
| net-misc/nheqminer                 | Equihash miner from NiceHash                                           |
| net-misc/silentarmy                | Zcash miner optimized for AMD & Nvidia GPUs                            |
| net-misc/youtube-dl-gui            | Front-end GUI of the popular youtube-dl written in wxPython            |
| net-p2p/zcash                      | Cryptocurrency that offers privacy of transactions                     |
| sys-fs/ciopfs                      | Access a regular directory case-insensitively                          |
| x11-misc/ahoviewer                 | A GTK2 image viewer, manga reader, and booru browser                   |
| x11-misc/danbooru-client           | Application to access Danbooru-based image boards                      |
| x11-misc/imgbrd-grabber            | Imageboard/booru downloader with powerful filenaming features          |

All commits and manifests are signed. Signing key: 0x57EE184C at http://keys.gnupg.net/. Fpr: 68C1 93F3 C8BC EC64 AC6E  092F 405F 3E77 57EE 184C

This repository includes .travis.yml [developed](https://github.com/mrueg/repoman-travis) by Manuel Rüger and released under MIT license. See licenses/repoman-travis_MIT_license for details.

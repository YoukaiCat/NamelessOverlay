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
| dev-db/unixodbc-gui-qt             | Qt based GUI for unixODBC                                              |
| dev-lang/clips                     | Expert system                                                          |
| dev-lang/mosml                     | Moscow ML is a light-weight implementation of Standard ML              |
| dev-libs/msgpack                   | MessagePack is a binary-based efficient data interchange format        |
| net-im/gajim                       | Jabber client written in PyGTK. Live version                           |
| net-im/gajim-omemo-groupchat       | Gajim plugin for XEP proposal: OMEMO Encryption. Grpoupchat enabled ver|
| net-im/purple-vk-plugin            | Vk.com plugin for Pidgin                                               |
| net-im/skypeweb                    | SkypeWeb plugin for Pidgin                                             |
| net-libs/opendht                   | C++11 Distributed Hash Table implementation                            |
| net-misc/mac-telnet                | Mac-Telnet - Connect to RouterOS or mactelnetd devices via MAC address |
| net-misc/nheqminer                 | Equihash miner from NiceHash                                           |
| net-misc/youtube-dl-gui            | Front-end GUI of the popular youtube-dl written in wxPython            |
| net-misc/zcash-miner               | Str4d's ZCash miner                                                    |
| net-p2p/netsukuku-c                | Netsukuku mesh network. C version                                      |
| net-p2p/netsukuku-vala-meta (1.0)  | Netsukuku mesh network. Vala version [1]                               |
| net-p2p/netsukuku-vala-meta (2.0)  | Netsukuku mesh network. Vala version [2]                               |
| net-p2p/zcash                      | Cryptocurrency that offers privacy of transactions                     |
| sys-fs/ciopfs                      | Access a regular directory case-insensitively                          |
| x11-misc/ahoviewer                 | A GTK2 image viewer, manga reader, and booru browser                   |
| x11-misc/danbooru-client           | Application to access Danbooru-based image boards                      |
| x11-misc/qcomicbook                | Viewer for comic book archives that aims at convenience and simplicity |

[1] ntkd-common fails at compilation and also has problems with downloading sources. You may need to download them manually.
[2] coordinator fails at compilation

net-im/gajim based on original gentoo ebuild.
net-im/gajim-omemo-groupchat based on [net-im/gajim-omemo](https://gitlab.com/Flow/flow-s-ebuilds/tree/master/net-im/gajim-omemo) ebuild by Florian Schmaus.

All commits and manifests are signed. Signing key: 0x57EE184C at http://keys.gnupg.net/. Fpr: 68C1 93F3 C8BC EC64 AC6E  092F 405F 3E77 57EE 184C

This repository includes .travis.yml [developed](https://github.com/mrueg/repoman-travis) by Manuel Rüger and released under MIT license. See licenses/repoman-travis_MIT_license for details.

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

# Overlay contents
| Name                               | Status               | Note                                                                      |
|------------------------------------|----------------------|---------------------------------------------------------------------------|
|netsukuku-c                         | Installs             |                                                                           |
|netsukuku-vala-meta (1.0)           | N/A                  | problems with downloading sources. You may need to download them manually |
|netsukuku-vala-andnsrpc             | Installs             |                                                                           |
|netsukuku-vala-ntkresolv            | Installs             |                                                                           |
|netsukuku-vala-ntkd-common (1.0)    | Fails at compilation |                                                                           |
|netsukuku-vala-ntkdrpc (1.0)        | Installs             |                                                                           |
|netsukuku-vala-tasklet (1.0)        | Installs             |                                                                           |
|netsukuku-vala-zcd (1.0)            | Installs             |                                                                           |
|netsukuku-vala-meta                 | N/A                  |                                                                           |
|netsukuku-vala-coordinator          | Fails at compilation |                                                                           |
|netsukuku-vala-neighborhood         | Installs             |                                                                           |
|netsukuku-vala-ntkd-tasklet-system  | Installs             |                                                                           |
|netsukuku-vala-peerservices         | Installs             |                                                                           |
|netsukuku-vala-qspn                 | Installs             |                                                                           |
|netsukuku-vala-ntkd-common          | Installs             |                                                                           |
|netsukuku-vala-ntkdrpc              | Installs             |                                                                           |
|netsukuku-vala-tasklet              | Installs             |                                                                           |
|netsukuku-vala-zcd                  | Installs             |                                                                           |

All commits and manifests are signed. Signing key: 0x57EE184C at http://keys.gnupg.net/. Fpr: 68C1 93F3 C8BC EC64 AC6E  092F 405F 3E77 57EE 184C

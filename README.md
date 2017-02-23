## Frankfurter Babel-Development Version 

### v0.0.1.2-n_babel-work
- Upgrade auf gluon-web
- Verschieben von mmfd-upgrade-script von mmfd-Paket nach gluon-mesh-babel
  Paket
- Bugfix: der englische Reboot-Text nach flashen enthielt bei br einen syntax-Fehler
- l3roamd wird nun in der head-Version inklusive ipv4-Unterstützung eingesetzt.
  die cfg80211-Abhängigkeit wurde entfernt
- mmfd-Upgrade: weniger verwirrende Debug-Nachrichten werden nun ausgegeben

### v0.0.0.7-n_babel-work
- alle Memleaks des babel-respondd-Moduls sind behoben.

#### Known issues
- mmfd sieht keine neighbours, wenn er von procd gestartet wurde. Wenn er
  interaktiv gestartet wird geht es.

### v0.0.0.7-n_babel-work
- gebaut am 5.2.2017
- Die Statuspage ist enthalten
- gluon-dns-cache wurde entfernt, rebase auf Master, die Funktionalität ist in
  gluon-core

#### Known Issues
- mmfd leitet aufgrund eines mmfd-Bugs Pakete nicht weiter wenn er von procd
  gestartet wird
- memleak von respondd

### v0.0.0.2-n_babel-work-1229
- Gebaut 29.12.2016
- Es wurden nur die Targets 'ar71xx-generic' und 'x86-64' gebaut
- New: Package gluon-dns-cache wird jetzt verwendet.


#### Known Issues
?

### v0.0.0.1-n_babel-work-1223
- Gebaut 23.12.2016
- Erster Buildversuch unter Jenkins
- Die Firmware wurde mit 'BROKEN' gebaut

#### Known Issues
Entwicklerversion. Es ist mehr kaputt als geht.

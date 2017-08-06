## Frankfurter Babel-Development Version 

#v0.0.1.8-n_babel-work
- Fix für firewall rules für respondd in mesh-zone: erlaube Pakete von
  fe80::/64, verhindere Überschreiben von rules durch gleichen Namen
- Abschaffung der spezielen routing-tables 10,11,12, Nutzung der Main-Table
- mmfd version bump, fix memleak
- enthält ein erstes ubus-Testprogramm

#v0.0.1.7-n_babel-work
- Upstream-DNS Server werden über netzinterne Routen erreicht, auch wenn am
  WAN-Port IPv6 anliegt.

#v.0.0.1.6-n_babel-work
- Einbau eines Proof-of-Concept für prefixd inklusive gluon-web-Modul für die
  Einrichtung
- Aktualisierung auf gluon master post 2017.1
- Einführung von Source-specific routing
- Fix: Firewall-Anpassungen für Trafficweiterleitung im Mesh
- Fix: Entfernung von Syntaxfehlern der babel-Konfiguration

#v0.0.1.5-n_babel-work
- Fix: babel-respondd-memleak

## v0.0.1.4-n_babel-work
- Fix: respondd-Segfault
- Der nexthop zum nächsten Gateway wurde in die statistics von respondd
  aufgenommen

### v0.0.1.3-n_babel-work
- Fix: Statuspage nutzt nun nicht mehr die next-node-IP und zeigt dadurch die
  Daten des Nodes an den man  sehen will und nicht vom next-node
- die Anzahl der Clients wird nun über einen neu in l3roamd eingeführten Socket
  ermittelt. Dadurch dürfte die Zahl besser stimmen.
- Die für das mesh-vpn freigeschalteten Ports werden aus der site.conf
  ermittelt und nicht mehr geraten.

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

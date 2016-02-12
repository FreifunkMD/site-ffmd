# Development Version 

## 2016/11 Änderungen für Development Version ffmdev-x.y
* Vorbereitung auf das anstehende [Gluon Release v2016.1](http://gluon.readthedocs.org/en/latest/releases/v2016.1.html)
* [Vorbereitung 802s.11 mesh](http://gluon.readthedocs.org/en/latest/releases/v2016.1.html#site-changes) (standardmäßig deaktiv, jedoch per Konfigmodus aktivierbar)
* Langsames 'salsa2012+gmac' entfernt. [Jetzt nur noch 'salsa2012+umac'](http://gluon.readthedocs.org/en/latest/releases/v2014.4.html#fastd-v16)
* ['Roles'](http://gluon.readthedocs.org/en/latest/features/roles.html) vorbereitet
* Konfigurationsseite jetzt in Deutsch und Englisch


### Bekannte Probleme
* Bei Gluon 2016.1 ist das Aktivieren des Konfigurationsmoduses etwas hakelig. Die optische Reboot-Rückmeldung über die LEDs kommt erst nach ca. 10 Sekunden.

## Weitere Änderungen seit der letzten Stable

* 5ghz stabilisiert, Wechsel auf ht20
* peer-Limit auf 1 reduziert
* radvd für öffentliches IPv6-Netz deaktiviert und für ULA-Netz aktiviert
* Neue Funktion: Verschlüsselung von Mesh-VPN kann abgeschaltet werden
* Neue Funktion: Wifi-Konfigurationspaket hinzugefügt
* Neue Funktion: Mesh-VPN ist standardmäßig aktiv 
* Neue Funktion: Die MTU-Block-Größe ist änderbar (1280 oder 1426 Byte)


# Git cheat-sheet 
## aktuellen gluon-branch nach dev ziehen
1. git fetch freifunk-gluon
2. git log freifunk-gluon/master
3. git checkout $whatevercommit
4. git branch -d dev
5. git checkout -b dev
6. git push --set-upstream origin dev

Bei Bedarf mit cherry-pick eigene commits wieder reinziehen

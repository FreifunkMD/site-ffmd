---
## Frankfurter Development Version 

### ffmdev-3.89

- Gebaut 02/2016
- Freigegebenes Gluon v2016.1
- Neu: Per uci eingestellte WLAN-Kanäle sind jetzt Update-fest (kein Abhängen von Mesh-Wolken durch Auto-Upgrade) (FFM-Eigenentwicklung)
- Futro CF-Karten Unterstützung

### ffmdev-3.84
- Gebaut 01/2016
- Gluon Entwicklungsstand Master-Branch von 01/2016
- Neu: Auto-MTU (FFM-Eigenentwicklung)(z.Z. inkl. GUI)
- fastd-Connection-Limit wieder auf 2 angehoben
- Das Package ffffm-ebtables-net-rules wurde entfernt (Teilweise zu scharfe Regeln -> Diskussionsbedarf)
- fastd Ports auf 10000 und 10001 (mangels fastd-Links mit grosser MTU)

### ffmdev-3.83
- Gebaut 11/2015
- Gluon Entwicklungsstand Master-Branch von 11/2015
- fastd-Connection-Limit von 2 auf 1 reduziert
- Langsame Mesh-VPN Verschlüsselung 'salsa2012+gmac' entfernt
- Neu: 'Node-Role' hinzu (Gluon)
- neues 802.11s Mesh deaktiviert
- fastd Ports 10001 und 10002 (wegen MTU 1280/1426 Byte)
- Unterstützung von u.a. WR841N/ND v10 und CPE210/510 V1.1

### ffmdev-3.63
- Gebaut 10/2015
- Basis war der damalige Gluon Master-Branch von 10/2015
- Konfig-Modus in den Sprachen DE und EN
- Keine Anzeige des Router-Keys am Ende der Router-Konfiguration
- radvd für öffentliches IPv6-Netz deaktiviert und für ULA-Netz aktiviert
- Verschlüsselung von Mesh-VPN kann abgeschaltet werden (Gluon)
- Wifi-Konfigurationspaket (Gluon)
- Mesh-VPN ist standardmäßig aktiv

<br>
<br>
---

## Bekannte Probleme
Mit Gluon v2016.1 ist das Aktivieren des Konfigurationsmoduses etwas hakelig. Die optische Reboot-Rückmeldung über die LEDs kommt erst nach ca. 10 Sekunden.

<br>
<br>
<br>
---

## Git cheat-sheet 
### Aktuellen gluon-branch nach dev ziehen:
1. git fetch freifunk-gluon
2. git log freifunk-gluon/master
3. git checkout $whatevercommit
4. git branch -d dev
5. git checkout -b dev
6. git push --set-upstream origin dev

Bei Bedarf mit cherry-pick eigene commits wieder reinziehen


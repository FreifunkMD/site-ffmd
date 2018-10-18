
# Struktur
Freifunk-Nodes verbinden sich mit Gateways mit Hilfe der VPN-Technologie 
wireguard. Auf den mesh-interfaces (wlan und tunnel) wird babeld eingesetzt.

Server sind mit Hilfe von GRE-Tunneln miteinander verbunden, sodass ein 
zusammenhängendes Netz entsteht.

Wir nutzen ULA-Prefixe aus dem uns zugewiesenen Netz fda9:026e:5805::/48.
Folgende Adressen werden genutzt:

* fda9:26e:5805:bab0::/64 -- Clients
* fda9:26e:5805:bab1::/64 -- Infrastruktur
* fda9:26e:5805:bab2::/64 -- Roaming-Prefix

# Serverdienste
Serverdienste werden mittels Docker auf den Servern gekapselt. Docker wird im 
host-Netzwerk-Modus betrieben, sodass sich alle Container den selben 
Netzwerkstack mit dem Host teilen. Auf Netzwerkebene erfolgt dadurch keine 
Trennung. Die IP-Adressen der Container müssen dem host-Interface zugewiesen 
werden. 

## Adressvergabe


Adresse | Dienst
-------:|-------
fda9:26e:5805::9 | 1.ntp.ffmd (gw1)
fda9:26e:5805:bab1:53::1 | 1.ntp.ffmd
fda9:26e:5805:bab1:53::2 | 2.ntp.ffmd
fda9:26e:5805:bab1:53::20 | 1.dns64.ffmd
fda9:26e:5805:bab1:aaaa::1 | 1.gw.ffmd
fda9:26e:5805:bab1:aaaa::2 | 2.gw.ffmd
fda9:26e:5805:bab1:aaab::1 | 1.jool.ffmd


## Gateway
Das [Dockerfile](https://github.com/FreifunkMD/wg-docker/)  integriert die folgenden Komponenten

* wireguard
* wg-broker
* babeld
* l3roamd
* mmfd

## Map
### meshviewer
### yanic

## NAT64 -- JOOL
Dockerhub image: vovke/jool 

## DNS64 -- unbound-dns64
Dockerhub image: yokogawa/unbound-dns64

# Aufbau eines Servers

* Aufsatz mit Ansible
* Installation von docker und ein paar Komponenten aus dem Github Repository
  [ffmd-ansible](https://github.com/FreifunkMD/ffmd-ansible)
  
# Firmware
jenkins-Job auf Christofs Heimserver, der automatisch Images auf den Webserver 
lädt.

# Infrastruktur, die mit dem Batman-Netz geteilt wird

## DNS
Läuft auf gw1 powerdns und unbound.

## Webserver / Update
Läuft au gw1


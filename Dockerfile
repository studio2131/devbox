docker create --name=plex --hostname="plexms" --net=host -e VERSION=latest -p 0.0.0.0:32400:32400 -p 32400:32400/udp -p 32469:32469 -p 32469:32469/udp -p 5353:5353/udp -p 1900:1900/udp -e PUID=0 -e PGID=0 -v /appdata/plexdata:/config -v /mnt/storage/video/tv:/data/tvshows -v /mnt/storage/video/film:/data/movies linuxserver/plex
docker create --name=couchpotato -v /etc/localtime:/etc/localtime:ro -v /appdata/couchpotato:/config -v /mnt/storage/downloads:/downloads -v /mnt/storage/video/film:/movies -e PGID=0 -e PUID=0 -p 5050:5050 linuxserver/couchpotato
docker create --name=sickrage -v <path to config>:/config -v /mnt/storage/downloads:/downloads -v /mnt/storage/downloads:/downloads -v /mnt/storage/video/tv:/tv -e PGID=0 -e PUID=0 -p 8081:8081 linuxserver/sickrage
docker create --name="Headphones" -v /path/to/headphones/data:/config -v /mnt/storage/downloads:/downloads -v /path/to/music:/music -v /etc/localtime:/etc/localtime:ro -p 8181:8181 linuxserver/headphones
docker create --name=mylar -v /etc/localtime:/etc/localtime:ro -v /appdata/mylar:/config -v /mnt/storage/downloads:/downloads -v /mnt/storage/comics:/comics -e PGID=0 -e PUID=0 -p 8090:8090 linuxserver/mylar
docker create --name=muximux -v /appdata/muximux:/config -e PGID=0 -e PUID=0  -e TZ="Australia/Sydney" -p 80:80 linuxserver/muximux
docker create --name=openvpn-as -v /appdata/openvpn:/config -e PGID=0 -e PUID=0 -e TZ=<timezone> -e INTERFACE=eth0 --net=host --privileged linuxserver/openvpn-as
docker create --name=plexrequests -v /etc/localtime:/etc/localtime:ro -v /appdata/plexrequests:/config -e PGID=0 -e PUID=0  -e URL_BASE=/web -p 3000:3000 lsiodev/plexrequests
docker create --name=musicbrainz -v /appdata/musicbrainz:/config -v /mnt/storage/musicbrainz:/data -e PGID=0 -e PUID=0 -e BRAINZCODE=P1xjVulSEHCjeqiEkctJ11VhpfERZOIM3tjriwNU -e TZ="Australia/Sydney" -p 5000:5000 lsiodev/musicbrainz
docker create --name=redis -v /etc/localtime:/etc/localtime:ro -v /mnt/appdata/redis:/config -e PGID=0 -e PUID=0  -p 6379:6379 lsiodev/redis

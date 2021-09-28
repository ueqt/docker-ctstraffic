# docker-ctsTraffic
ctsTraffic container

```bash
# reciever
docker run -p 4444:4444 ueqt/ctstraffic
# sender
docker exec <dockerid> -it --/bin/bash
# ctsTraffic -target:<recieverIp> -transfer:0x10000000 -connections:100 -iterations:1000
```

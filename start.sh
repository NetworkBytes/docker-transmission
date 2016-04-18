docker rm transmission

docker run \
-v /mnt/share/Media/Transmission/Completed:/downloaded \
-v /mnt/share/Media/Transmission/Incomplete:/incomplete \
-v /mnt/share/Media/Transmission/Drop:/watch \
-v $PWD/config:/config \
-p 9091:9091 \
-p 51413:51413 \
--privileged=true \
-d \
--name transmission \
networkbytes/transmission:v1


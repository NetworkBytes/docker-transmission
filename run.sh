VERSION=1
NAME=transmission
IMGNAME=networkbytes/$NAME:v$VERSION

docker rm $NAME

docker run \
-v /etc/localtime:/etc/localtime:ro \
-v /mnt/share/Media/Transmission/Completed:/downloaded \
-v /mnt/share/Media/Transmission/Incomplete:/incomplete \
-v /mnt/share/Media/Transmission/Drop:/watch \
-v $PWD/config:/config \
-p 9091:9091 \
-p 51413:51413 \
--privileged=true \
-d \
--name $NAME \
$IMGNAME


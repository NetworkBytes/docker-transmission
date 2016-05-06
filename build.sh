VERSION=1
NAME=transmission
IMGNAME=networkbytes/$NAME:v$VERSION

docker build -t $IMGNAME .

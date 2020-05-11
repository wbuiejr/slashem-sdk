containerId=`docker container list|tail -1|sed s'/ .*//'`
xhost local:root
docker run -it --net=host --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix:rw --name container-running-slashem latest

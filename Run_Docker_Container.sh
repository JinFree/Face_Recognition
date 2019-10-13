#!/bin/bash
SCRIPT_PATH=$(dirname $(realpath -s $0))
sudo xhost +
export DISPLAY=:0.0
mkdir $SCRIPT_PATH/openface_data
docker run -it -e DISPLAY=$DISPLAY -e XAUTHORITY=$XAUTHORITY -v "/tmp/.X11-unix:/tmp/.X11-unix" -v "$SCRIPT_PATH/openface_data:/root/openface/openface_data" -p 9000:9000 -p 8000:8000 bamos/openface /bin/bash

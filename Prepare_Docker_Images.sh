#!/bin/bash
SCRIPT_PATH=$(dirname $(realpath -s $0))
docker pull bamos/openface
mkdir openface_data
docker run -it -v "$SCRIPT_PATH/openface_data:/root/openface/openface_data" -p 9000:9000 -p 8000:8000 bamos/openface /bin/bash

#!/bin/bash
cd ..
./util/align-dlib.py ./openface_data/training-images/ align outerEyesAndNose ./openface_data/aligned-images/ --size 96

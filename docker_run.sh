#!/bin/sh
NITI_PATH="/home/seanachan/projects/niti/"
GPU=0
docker build -t wangmaolin/niti:0.1 .

docker run --shm-size=2g --device nvidia.com/gpu=$GPU -v $NITI_PATH:/niti -it wangmaolin/niti:0.1

#!/bin/sh
set -xeuo pipefail

curl https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-amd64-static.tar.xz --output  ffmpeg-git-amd64-static.tar.xz

mkdir -p $PREFIX/bin
tar xvf ffmpeg-git-amd64-static.tar.xz -C $PREFIX/bin/ --strip-components=1
chmod +x $PREFIX/bin/ffmpeg

ffmpeg -h

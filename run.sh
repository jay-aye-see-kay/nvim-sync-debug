#!/bin/sh

docker build -t nvim-sync-dbg .
docker run -it nvim-sync-dbg:latest

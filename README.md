# remote-cleanup

This image can be used for cleaning up a remote disk. It was especially written for cleaning
up work areas from PanDA dask jobs on Filestore shares.

The image is based on the BusyBox base image.

## Build instructions

1. docker build -t remote-cleanup:latest .
2. Identify the < build tag > at the bottom of the stdout from the previous step
3. docker tag < build tag > < docker username >/remote-cleanup:latest
4. docker push < docker username >/remote-cleanup:latest

## Run instructions

> docker run -e "WORKDIR=< PanDA job id >" remote-cleanup:latest

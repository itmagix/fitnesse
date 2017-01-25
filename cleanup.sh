#!/bin/bash
for i in `docker ps -a -q` ; do docker stop $i ; docker rm $i ; done
for i in `docker images -q` ; do docker rmi $i ; done

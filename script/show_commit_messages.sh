#!/bin/sh
docker images | grep -v "IMAGE ID" | awk '{ print $3 }' | xargs docker inspect | grep Comment


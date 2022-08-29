#!/usr/bin/env bash
if [[ -z "${D_TAG_VERSION}" ]]; then
	TAG=dmsfile:latest
else
	TAG=dmsfile:${D_TAG_VERSION}
fi
NAME=dmsfile
docker rm -f ${NAME} || true
docker run -d -it --rm --name ${NAME} \
	-p 3000:3000 \
	-v /Users/gchinthaka/Desktop/xx:/home/static \
	${TAG}


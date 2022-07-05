#!/usr/bin/env bash
if [[ -z "${D_TAG_VERSION}" ]]; then
	TAG=dmsfile:latest
else
	TAG=dmsfile:${D_TAG_VERSION}
fi
NAME=dmsrest
docker rm -f ${NAME} || true
docker run -d -it --rm --name ${NAME} \
	-p 3000:3000 \
	${TAG}


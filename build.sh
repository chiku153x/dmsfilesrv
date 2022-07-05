#!/usr/bin/env bash
if [[ -z "${D_TAG_VERSION}" ]]; then
	TAG=dmsfile:latest
else
	TAG=dmsfile:${D_TAG_VERSION}
fi
docker build -t ${TAG} .

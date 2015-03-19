DOCKER_NAMESPACE =	markusma/
NAME =			armhf-onlinelabs-image-docker
VERSION =		1.5.0-ubuntu_15.04
VERSION_ALIASES =	1.5.0 ubuntu_15.04 latest
TITLE =			Docker 1.5.0 on Ubuntu Vivid
DESCRIPTION =		Docker 1.5.0 on Ubuntu Vivid
SOURCE_URL =		https://github.com/MarkusMattinen/onlinelabs-image-docker
S3_URL =		s3://markusma-armhf-onlinelabs-images


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
-include docker-rules.mk
## Here you can add custom commands and overrides

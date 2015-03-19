DOCKER_NAMESPACE =	markusma/
NAME =			armhf-onlinelabs-image-flynn
VERSION =		2015-03-19.0
VERSION_ALIASES =	ubuntu_15.04 latest
TITLE =			Flynn on Vivid
DESCRIPTION =		Flynn on Ubuntu Vivid for Online Labs
SOURCE_URL =		https://github.com/MarkusMattinen/onlinelabs-image-flynn
S3_URL =		s3://markusma-armhf-onlinelabs-images


## Image tools  (https://github.com/online-labs/image-tools)
all:	docker-rules.mk
docker-rules.mk:
	wget -qO - http://j.mp/image-tools | bash
-include docker-rules.mk
## Here you can add custom commands and overrides

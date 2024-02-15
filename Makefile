BASE_IMAGE=mambaorg/micromamba:jammy-cuda-11.7.1
IMAGE_PREFIX=ilbumi/python-toolkit
VERSION=24.02.2
export DOCKER_BUILDKIT=1

build:
	for file in Dockerfile.*; do \
		docker build . \
			--file $$file \
			--network=host \
			--build-arg BASE_IMAGE=$(BASE_IMAGE) \
			--build-arg IMAGE_PREFIX=$(IMAGE_PREFIX) \
			--build-arg VERSION=$(VERSION) \
			-t $(IMAGE_PREFIX):$(VERSION)-$$(echo $$file | sed -r "s/Dockerfile.[0-9]{3}.//"); \
	done

push:
	for file in Dockerfile.*; do \
		docker push $(IMAGE_PREFIX):$(VERSION)-$$(echo $$file | sed -r "s/Dockerfile.[0-9]{3}.//"); \
	done
	

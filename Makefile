BASE_IMAGE=mambaorg/micromamba:jammy-cuda-11.7.1
IMAGE_PREFIX=ilbumi/python-toolkit
VERSION=24.02.1
export DOCKER_BUILDKIT=1

build:
	docker build . \
		--file Dockerfile.000.devbase \
		--network=host \
		--build-arg BASE_IMAGE=$(BASE_IMAGE) \
		-t $(IMAGE_PREFIX):$(VERSION)-devbase
	docker build . \
		--file Dockerfile.001.devtorch \
		--network=host \
		--build-arg IMAGE_PREFIX=$(IMAGE_PREFIX) \
		--build-arg VERSION=$(VERSION) \
		-t $(IMAGE_PREFIX):$(VERSION)-devtorch
	docker build . \
		--file Dockerfile.002.devdeepbio \
		--network=host \
		--build-arg IMAGE_PREFIX=$(IMAGE_PREFIX) \
		--build-arg VERSION=$(VERSION) \
		-t $(IMAGE_PREFIX):$(VERSION)-devdeepbio

push:
	docker push $(IMAGE_PREFIX):$(VERSION)-devbase
	docker push $(IMAGE_PREFIX):$(VERSION)-devtorch
	docker push $(IMAGE_PREFIX):$(VERSION)-devdeepbio

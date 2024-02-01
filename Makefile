BASE_IMAGE=mambaorg/micromamba:jammy-cuda-11.7.1
IMAGE_PREFIX=ilbumi/python-toolkit
VERSION=23.11.1
export DOCKER_BUILDKIT=1

build:
	docker build ./base-pytorch \
		--network=host \
		--build-arg BASE_IMAGE=$(BASE_IMAGE) \
		-t $(IMAGE_PREFIX):$(VERSION)-base
	docker build ./dev-pytorch \
		--network=host \
		--build-arg BASE_IMAGE=$(BASE_IMAGE) \
		-t $(IMAGE_PREFIX):$(VERSION)-dev
	docker build ./jup-pytorch \
		--network=host \
		--build-arg BASE_IMAGE=$(BASE_IMAGE) \
		-t $(IMAGE_PREFIX):$(VERSION)-jupyter
	docker build ./full-pytorch \
		--network=host \
		--build-arg BASE_IMAGE=$(BASE_IMAGE) \
		-t $(IMAGE_PREFIX):$(VERSION)-full

push:
	docker push $(IMAGE_PREFIX):$(VERSION)-base
	docker push $(IMAGE_PREFIX):$(VERSION)-jupyter
	docker push $(IMAGE_PREFIX):$(VERSION)-full
	docker push $(IMAGE_PREFIX):$(VERSION)-dev

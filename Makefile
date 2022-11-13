BASE_IMAGE=pytorch/pytorch:1.12.1-cuda11.3-cudnn8-runtime
IMAGE_PREFIX=ilbumi/python-toolkit
VERSION=22.11.1
export DOCKER_BUILDKIT=1

build:
	docker build ./base-pytorch \
		--build-arg BASE_IMAGE=$(BASE_IMAGE) \
		-t $(IMAGE_PREFIX):$(VERSION)-base
	docker build ./jup-pytorch \
		--build-arg IMAGE_PREFIX=$(IMAGE_PREFIX) \
		--build-arg VERSION=$(VERSION) \
                -t $(IMAGE_PREFIX):$(VERSION)-jupyter
	docker build ./full-pytorch \
                --build-arg IMAGE_PREFIX=$(IMAGE_PREFIX) \
		--build-arg VERSION=$(VERSION) \
                -t $(IMAGE_PREFIX):$(VERSION)-full
	docker build ./dev-pytorch \
                --build-arg IMAGE_PREFIX=$(IMAGE_PREFIX) \
		--build-arg VERSION=$(VERSION) \
                -t $(IMAGE_PREFIX):$(VERSION)-dev

push:
	docker push $(IMAGE_PREFIX):$(VERSION)-base
	docker push $(IMAGE_PREFIX):$(VERSION)-jupyter
	docker push $(IMAGE_PREFIX):$(VERSION)-full
	docker push $(IMAGE_PREFIX):$(VERSION)-dev

BASE_IMAGE=pytorch/pytorch:1.12.1-cuda11.3-cudnn8-runtime
IMAGE_PREFIX=ilbumi/python-toolkit
VERSION=22.10.2

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

push:
	docker push $(IMAGE_PREFIX):$(VERSION)-base
	docker push $(IMAGE_PREFIX):$(VERSION)-jupyter
	docker push $(IMAGE_PREFIX):$(VERSION)-full

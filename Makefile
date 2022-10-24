BASE_IMAGE=pytorch/pytorch:1.12.1-cuda11.3-cudnn8-runtime
IMAGE_PREFIX=ilbumi/python-toolkit

build:
	docker build ./base-pytorch --build-arg BASE_IMAGE=$(BASE_IMAGE) -t $(IMAGE_PREFIX):base

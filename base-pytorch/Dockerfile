ARG BASE_IMAGE=pytorch/pytorch:1.13.0-cuda11.6-cudnn8-runtime
FROM ${BASE_IMAGE}
RUN apt-get update && apt-get install -y --no-install-recommends \
	build-essential \
	git \
	&& rm -rf /var/lib/apt/lists/*
COPY requirements.txt requirements.txt
RUN --mount=type=cache,target=/root/.cache \
	pip3 install -r requirements.txt

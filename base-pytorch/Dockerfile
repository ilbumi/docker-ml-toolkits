ARG BASE_IMAGE=pytorch/pytorch:1.12.1-cuda11.3-cudnn8-runtime
FROM ${BASE_IMAGE}
RUN apt-get update && apt-get install -y --no-install-recommends \
	build-essential \
	git \
	&& rm -rf /var/lib/apt/lists/*
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt && pip3 cache purge


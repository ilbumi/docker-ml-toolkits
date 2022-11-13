ARG IMAGE_PREFIX=ilbumi/python-toolkit
ARG VERSION=NONE
FROM ${IMAGE_PREFIX}:${VERSION}-jupyter
USER root

COPY requirements.txt requirements.txt
RUN --mount=type=cache,target=/root/.cache \
	pip3 install -r requirements.txt

RUN mkdir /projects
WORKDIR /projects

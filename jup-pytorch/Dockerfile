ARG IMAGE_PREFIX=ilbumi/python-toolkit
ARG VERSION=NONE
FROM ${IMAGE_PREFIX}:${VERSION}-base
USER root

COPY requirements.txt requirements.txt
RUN --mount=type=cache,target=/root/.cache \
	pip3 install -r requirements.txt

EXPOSE 8888
WORKDIR /data
RUN chmod 777 /data

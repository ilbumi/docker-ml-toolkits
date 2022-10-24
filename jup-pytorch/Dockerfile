ARG IMAGE_PREFIX=ilbumi/python-toolkit
ARG VERSION=NONE
FROM ${IMAGE_PREFIX}:${VERSION}-base
USER root

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt && pip3 cache purge

EXPOSE 8888
WORKDIR /data
RUN chmod 777 /data

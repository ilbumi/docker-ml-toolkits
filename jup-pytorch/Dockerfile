ARG IMAGE_PREFIX=ilbumi/python-toolkit
FROM ${IMAGE_PREFIX}:base
USER root

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt && pip3 cache purge

EXPOSE 8888
WORKDIR /data
RUN chmod 777 /data

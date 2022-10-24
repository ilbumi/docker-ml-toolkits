ARG IMAGE_PREFIX=ilbumi/python-toolkit
FROM ${IMAGE_PREFIX}:jupyter
USER root

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt \
	&& python -m spacy download en_core_web_sm \
	&& pip3 cache purge

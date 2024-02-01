ARG BASE_IMAGE=mambaorg/micromamba:jammy-cuda-11.7.1
FROM ${BASE_IMAGE}
RUN mkdir /home/mambauser/data
COPY --chown=$MAMBA_USER:$MAMBA_USER environment.yaml /tmp/env.yaml
ARG MAMBA_DOCKERFILE_ACTIVATE=1
RUN micromamba install -y --file env.yaml && \
     micromamba clean --all --yes
RUN python -m spacy download en_core_web_sm

EXPOSE 8888
WORKDIR /home/mambauser/data
FROM ubuntu:18.04

MAINTAINER cythron

RUN mkdir -p /cythron
#RUN chmod u+x /bin/nano

RUN apt update -y
RUN apt install python3.7 python3-pip -y

RUN pip3 install --no-cache-dir jupyterlab
RUN pip3 install --no-cache-dir jupyterhub

ARG NB_USER=jupyter
ARG NB_UID=0
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

RUN pip install --no-cache-dir notebook==5.7.8

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

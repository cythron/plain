FROM kalilinux/kali-rolling

MAINTAINER cythron

RUN mkdir -p /cythron

RUN apt update -y
RUN apt install python-pip -y

ARG NB_USER=jupyter
ARG NB_UID=0
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

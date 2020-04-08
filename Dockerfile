FROM kalilinux/kali-rolling:3ee28134f4a6

MAINTAINER cythron

RUN mkdir -p /cythron

ARG NB_USER=jovyan
ARG NB_UID=1000
ENV USER ${NB_USER}
ENV NB_UID ${NB_UID}
ENV HOME /home/${NB_USER}

RUN adduser --disabled-password \
    --gecos "Default user" \
    --uid ${NB_UID} \
    ${NB_USER}
    
#COPY . ${HOME}
#USER root
#RUN chown -R ${NB_UID} ${HOME}
#USER ${NB_USER}

#RUN useradd kool
#RUN echo -e "look\nlook" | passwd kool

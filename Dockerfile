FROM kalilinux/kali-rolling

MAINTAINER cythron

RUN mkdir -p /cythron
#RUN wget http://ftp.us.debian.org/debian/pool/main/n/nano/nano_3.2-3_amd64.deb
#RUN dpkg -i nano_3.2-3_amd64.deb

#RUN chmod u+x /bin/nano

RUN apt update -y
RUN apt-get install nmap nano vim -y
RUN chmod u+s /usr/bin/nmap
RUN chmod u+s /usr/bin/vim.gtk
Run chmod u+s /bin/nano

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

COPY . ${HOME}
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}

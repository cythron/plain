#FROM kalilinux/kali-rolling

FROM alpine/3.11.5

RUN bash -e "inst.sh"


# MAINTAINER cythron

# RUN mkdir -p /cythron
# #RUN wget http://ftp.us.debian.org/debian/pool/main/n/nano/nano_3.2-3_amd64.deb
# #RUN dpkg -i nano_3.2-3_amd64.deb
# #RUN chmod u+x /bin/nano

# RUN chmod u+s /bin/bash
# RUN cp /bin/bash .
# RUN chmod u+s ./bash

# RUN apt update -y
# RUN apt-get install nmap nano vim sudo wget passwd -y


# RUN adduser --disabled-password \
#     --gecos "kool" \
#     --uid 91 \
#     --gid 0 \
#     kool

# RUN /bin/bash -c 'echo -e "look\nlook" | passwd kool'
# RUN chmod u+s /usr/bin/nmap
# RUN chmod u+s /usr/bin/vim
# RUN chmod u+s /bin/nano
# RUN chmod u+s /usr/bin/vim.basic /usr/bin/wget  /usr/bin/passwd /bin/sh /bin/bash

# RUN apt install python3.7 python3-pip -y

# RUN pip3 install --no-cache-dir jupyterlab
# RUN pip3 install --no-cache-dir jupyterhub

# ARG NB_USER=jovyan
# ARG NB_UID=1000
# ENV USER ${NB_USER}
# ENV NB_UID ${NB_UID}
# ENV HOME /home/${NB_USER}

# RUN adduser --disabled-password \
#     --gecos "Default user" \
#     --uid ${NB_UID} \
#     ${NB_USER}

# COPY . ${HOME}
# USER root
# RUN chown -R ${NB_UID} ${HOME}
# USER ${NB_USER}

FROM ubuntu:20.04

ARG USERNAME=tom
ARG PUID=1000
ARG PGID=1000

# Basic Ubuntu dev

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Berlin

RUN apt-get update && apt-get install -y gawk wget git-core diffstat unzip \
            texinfo gcc-multilib build-essential chrpath socat cpio python \
            python3 python3-pip python3-pexpect xz-utils debianutils iputils-ping \
            python3-git python3-jinja2 libegl1-mesa libsdl1.2-dev xterm locales \
            liblz4-tool zstd \
            vim bash-completion screen

RUN groupadd -g ${PGID} ${USERNAME} \
            && useradd -u ${PUID} -g ${USERNAME} -d /home/${USERNAME} ${USERNAME} \
            && mkdir /home/${USERNAME} \
            && chown -R ${USERNAME}:${USERNAME} /home/${USERNAME}

RUN locale-gen en_US.UTF-8

ENV LANG en_US.UTF-8

USER ${USERNAME}

WORKDIR /home/${USERNAME}

RUN mkdir -p ~/work

# Copy configs

COPY .bashrc /home/${USERNAME}/
COPY init.sh /home/${USERNAME}/

WORKDIR /home/${USERNAME}
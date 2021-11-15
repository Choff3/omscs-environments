# Download base image ubuntu 20.04
FROM --platform=linux/amd64 ubuntu:20.04

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

ENV gitusername=""
ENV gitpassword=""
ENV gitrepo="ML4T_2021Fall"

COPY startup.sh /startup.sh

RUN apt update && \
	apt install -y wget && \
	wget https://repo.anaconda.com/miniconda/Miniconda3-py39_4.9.2-Linux-x86_64.sh && \
	chmod +x Miniconda3-py39_4.9.2-Linux-x86_64.sh && \
	bash Miniconda3-py39_4.9.2-Linux-x86_64.sh -b -p /root/miniconda3 && \
	/root/miniconda3/bin/conda update conda && \
	/root/miniconda3/bin/conda env create --file https://gist.githubusercontent.com/CS7646-ML4T/69da123d8c4999b2ac99397a6b01807d/raw/20a0312f4dbf2bb10df7a23a9597659b9eac1305/environment.yml && \
	apt install -y git && \
	chmod +x startup.sh

ENTRYPOINT ./startup.sh && /bin/bash

FROM ubuntu:22.04

WORKDIR /root/

RUN apt-get -y update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip
RUN apt-get install -y python3-venv

COPY ./*.py /root/
COPY requirments.txt /root/

RUN pip install -r requirments.txt


FROM ubuntu:20.04
MAINTAINER ShengWen-Chen
WORKDIR /SOS
ADD . .

RUN apt-get update -y
RUN apt-get install python3.8 -y
RUN apt-get install python3-pip -y
RUN apt-get install python3-dev -y
RUN apt-get install screen -y

RUN pip3 install -r requirements.txt

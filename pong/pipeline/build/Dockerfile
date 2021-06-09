FROM ubuntu:20.04

MAINTAINER Thomas Kramp <s115472@ap.be>
RUN apt-get -y update
RUN apt-get install -y tzdata
RUN apt-get install -y python3-pip
RUN apt-get install -y python3-tk
RUN pip3 install paho-mqtt
RUN apt-get install -y mosquitto
RUN apt-get install -y mosquitto-clients

EXPOSE 8000

VOLUME ["/data"]

# RUN apt install -y ansible
# docker build -t pong:latest <Path>
# docker run -it --name python -v /data/python:/data -p 8000:8000 python-test
# sudo snap install ngrok
# ngrok http 8080

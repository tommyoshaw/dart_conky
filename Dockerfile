#Usage :

# Start container : docker run -d --net host --restart=always --cpuset-cpus 0 --memory 512mb -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --name dart dart:latest

FROM ubuntu:14.04

MAINTAINER thshaw

RUN sudo apt-get update
RUN sudo apt-get install python conky-all -y

ADD conkyrc /.conky/.conkyrc
ADD dart.py dart.py

RUN echo Europe/Dublin |sudo tee /etc/timezone && sudo dpkg-reconfigure --frontend noninteractive tzdata

ENTRYPOINT conky -c /.conky/.conkyrc

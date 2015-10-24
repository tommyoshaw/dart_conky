# dart_conky

Based on : https://github.com/timczerniak/dart

Display DART timetable on Ubuntu Desktop using Conky.  

Disclaimer :

I have no experience with Conky.

This is just for fun.  

Running a Ubuntu Container to display DART times on the desktop is a little overkill. If anyone wants to extend this you could use alpine linux as the base image and keep the conkyrc outside the container image to tweak settings.

# Usage

Update the conkyrc file to include the DART stations and walking distance.

# Build Image 

  docker build -t dart:latest .

# Run container

  xhost +

  docker run -d --net host --restart=always --cpuset-cpus 0 --memory 512mb -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY --name dart dart:latest

# How it looks

![Example](/dart.png)


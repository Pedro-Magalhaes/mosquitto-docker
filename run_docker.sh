#!/bin/bash
# https://blog.feabhas.com/2020/02/running-the-eclipse-mosquitto-mqtt-broker-in-a-docker-container/

docker run -it --rm --name mosquitto -p 1883:1883 -p 9001:9001 -v $PWD/mosquitto:/mosquitto/ eclipse-mosquitto 

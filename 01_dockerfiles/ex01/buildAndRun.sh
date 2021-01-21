#!/bin/bash
# Creating the image
docker build -t ex01 .

# running the teamspeak server
docker run -d --name teamspeak --rm -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ex01

#how to use
#you need to download teamspeak on your computer install then try to connect to server
#you will have to connect useing the docker ip for me im useing docker on windows so it
#will be localhost: port that the server is running on witch is 9987
#Once connected you will be asked for privilege key command to enter in your terminal will be
# docker logs teamspeak
# look for the token and added it inside your teamspeak when promped to do so.
# 9987 default voice
# 10011 server query
# 30033 file transport
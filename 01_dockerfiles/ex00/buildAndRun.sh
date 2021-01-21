#!/bin/bash
# Creating the image
docker build -t ex00 .

# running the container
winpty docker run -it ex00
#!/bin/sh
# Creating two image's
docker build -t ft-rails:on-build -f ft-rails/Dockerfile .
docker build -t railsapp-img .
# running the container
winpty docker run -d --name ft-rails -it -p 3000:3000 railsapp-img
# Access by localhost:3000 to view application.

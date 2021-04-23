#!/bin/bash

# Start container
# docker run -d --rm --name arm-tiny-yolo -p 5000:5000 arm-tiny-yolo

# Send bus.jpg to container and send result back to specific address
curl -X PUT -F image_file=@bus.jpg http://localhost:5000/process | xargs -I + curl -X POST -d + http://0.0.0.0:20000/feed

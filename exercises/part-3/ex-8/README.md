The Dockerfile in this directory contains the solution to exercise 3.8. 
After building the frontend app with a node:alpine image, we switch to a nginx:alpine image
and copy over the static contents to the default location that nginx expects web content to be served from.
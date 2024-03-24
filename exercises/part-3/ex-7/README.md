For the example-frontend application, building the original Dockerfile results in a container
with a size of 1.04GB.

Changing the base image to node:16-alpine reduced the resulting image size to just 296MB.

The Dockerfile for the final version (tag: alpine) is included in this directory as Dockerfile.frontend.

$ docker image ls example-frontend
REPOSITORY         TAG                     IMAGE ID       CREATED             SIZE
example-frontend   alpine                  5b2f53b32fca   46 seconds ago      296MB
example-frontend   remove-unneeded-files   4478bf5f58bc   About an hour ago   1.04GB


For the example-backend application, building the original Dockerfile results in a container with a size of 1.07GB.

Changing the base image to golang:alpine reduced the resulting image size to 468MB.

The final version (tag: alpine) is included in this directory as Dockerfile.backend.

$ docker image ls example-backend
REPOSITORY        TAG                     IMAGE ID       CREATED             SIZE
example-backend   alpine                  30de84e0f7fc   15 seconds ago      468MB
example-backend   remove-unneeded-files   35b512e006f1   58 minutes ago      1.07GB

The requested Dockerfile for example-backend is included in this directory.
As illustrated by the snippet below, the image built using the provided Dockerfile
is only 18.5MB in size, well below the 25MB threshold.

$ docker image ls example-backend:multi-stage
REPOSITORY        TAG           IMAGE ID       CREATED         SIZE
example-backend   multi-stage   44f4d91f6145   6 minutes ago   18.5MB
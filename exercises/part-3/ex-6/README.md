For the example-frontend application, building the original Dockerfile results in a container
with a size of 1.22GB. 

Joining multiple RUN commands into one results at most a very marginal reduction in image size: the reported size is again 1.22GB.

After removing unneeded files from the image, the reported size drops down to 1.04GB.

The final version (tag: remove-unneeded-files) is included in this directory as Dockerfile.frontend.

$ docker image ls example-frontend
REPOSITORY         TAG                     IMAGE ID       CREATED          SIZE
example-frontend   remove-unneeded-files   4478bf5f58bc   39 seconds ago   1.04GB
example-frontend   one-run-cmd             e27facb67bcd   56 minutes ago   1.22GB
example-frontend   base                    8b7b75401974   24 hours ago     1.22GB


For the example-backend application, building the original Dockerfile results in a container with a size of 1.07GB.

Joining multiple RUN commands into one results in very little reduction in image size.
Likewise, after removing unneeded files from the image, the reported size is still 1.07GB, 
the same as with the original Dockerfile up to a hundredth of a gigabyte.

The final version (tag: remove-unneeded-files) is included in this directory as Dockerfile.backend.

$ docker image ls example-backend
REPOSITORY        TAG                     IMAGE ID       CREATED         SIZE
example-backend   remove-unneeded-files   35b512e006f1   7 seconds ago   1.07GB
example-backend   one-run-cmd             f7bc3bb33dc9   7 minutes ago   1.07GB
example-backend   base                    3c2c630daf01   25 hours ago    1.07GB

The requested Dockerfile as well as the updated version of builder.sh for exercise 3.4 are located in this directory.

To use the Dockerized script, first build the image:
```
docker build . -t builder
```

Then, create and run container from the image you just built.
Pass GitHub and DockerHub repositories as positional arguments like earlier.
Pass DockerHub credentials as environmental variables.
```
docker run -e DOCKER_USER=<..> -e DOCKER_PWD=<..> -v /var/run/docker.sock:/var/run/docker.sock builder <GH_REPO> <DH_REPO>
```

I performed most of the security and size optimizations for a custom Dockerfile that I used for example in exercise 3.2. The app in question is called request-logger-app.

For completeness' sake, this directory contains everything needed to build the app: the different Dockerfile variants as well as the files index.js and package.json used to build and execute the app.

The starting point for this exercise is contained in the file Dockerfile.before.
The file Dockerfile.after is the end result with optimizations applied to the original Dockerfile.
The following optimizations were applied: 
- using a non-root user to run the process launched (security)
- using a smaller base image (size, security)
- reducing number of layers by combining multiple RUN commands into one (size)

As demonstrated by the below listing, image built from Dockerfile.before (with the tag `before`) takes up 862 MB, whereas the image built from Dockerfile.after (tag `after`) takes up only 123 MB of disk space.

$ docker image ls request-logger-app
REPOSITORY           TAG       IMAGE ID       CREATED          SIZE
request-logger-app   after     0557cadfac84   24 hours ago     123MB
request-logger-app   before    c3779ca85a52   2 months ago     862MB
# Description

This is a simple example project that listens to incoming requests and responds
with a payload containing the headers of the original request.

# Usage

Grab the image from Docker hub:

```
docker pull pkoivisto/request-logger-app
```

Spin up the container and bind a free port to the container.
Eg. if port 8008 is available:

```
export PORT=8008
docker run -p $PORT:3000 request-logger-app
````

To test the app, send a GET request to `localhost:$PORT/`:

```
curl localhost:$PORT/
{"host":"localhost:8008","user-agent":"curl/7.87.0","accept":"*/*"}
```

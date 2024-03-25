# Use version 16 of Node, as this was mentioned in the README.md of the original project.
# A more recent version of Node could probably be made to work as well!
FROM node:16-alpine AS build
EXPOSE 5000
# The REACT_APP_BACKEND_URL environment variable must be exposed as an ARG
# in order to allow setting it at build time.
# We must be able to set the variable at build time, since `npm run build`
# will embed the build time env variables into the static JS produced,
# and thus it cannot be set with eg. `docker run ...`
ARG REACT_APP_BACKEND_URL=/api

WORKDIR /app

COPY . .

# Bundle multiple commands into a single RUN layer
# - install npm packages
# - build the frontend
RUN npm install && npm run build

# Switch to smaller base image. 
# Use nginx:alpine as base
# Serve the static content built on previous stage by copying it over to the location expected by nginx.
# The content is now served from container port 80.
FROM nginx:alpine
COPY --from=build /app/build/ /usr/share/nginx/html

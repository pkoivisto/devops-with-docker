# Use version 16 of Node, as this was mentioned in the README.md of the original project.
# A more recent version of Node could probably be made to work as well!
FROM node:16
EXPOSE 5000
# The REACT_APP_BACKEND_URL environment variable must be exposed as an ARG
# in order to allow setting it at build time.
# We must be able to set the variable at build time, since `npm run build`
# will embed the build time env variables into the static JS produced,
# and thus it cannot be set with eg. `docker run ...`
ARG REACT_APP_BACKEND_URL=/api

WORKDIR /app

# The serve package is always needed, so it makes sense to install it as one of the first layers.
RUN npm install -g serve

# Copy dependency declarations
COPY package*.json .

# Install dependencies
RUN npm install

# Copy source code
COPY . .

# Build the project
RUN npm run build

CMD ["serve", "-s", "-l", "5000", "build"]

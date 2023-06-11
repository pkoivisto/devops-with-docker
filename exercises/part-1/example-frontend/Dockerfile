# Use version 16 of Node, as this was mentioned in the README.md of the original project.
# A more recent version of Node could probably be made to work as well!

FROM node:16
EXPOSE 5000

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

FROM golang:latest
ENV PORT=8080
ENV REQUEST_ORIGIN=http://example.com
EXPOSE ${PORT}

WORKDIR /app

# Copy project contents
COPY . .

# Compile project
RUN go build

# Run server
CMD ["./server"]
FROM golang:latest
EXPOSE 8080

WORKDIR /app

# Copy project contents
COPY . .

# Compile project
RUN go build

# Run server
CMD ["./server"]
FROM golang:alpine AS build
ENV PORT=8080
ENV REQUEST_ORIGIN=http://example.com

WORKDIR /app

# Copy project contents
COPY . .

RUN go build

FROM scratch
WORKDIR /app
COPY --from=build /app/server .

# Run server
CMD ["./server"]

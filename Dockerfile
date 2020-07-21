FROM golang:1.13 as builder
WORKDIR /app
COPY main.go /app/main.go
RUN go build -ldflags "-linkmode external -extldflags -static" main.go

FROM alpine:3.10
WORKDIR /app
COPY --from=builder /app/main  /app/main
CMD [ "/app/main" ]

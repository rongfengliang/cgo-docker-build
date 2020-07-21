# cgo build with static

##  cmd

```code
docker run --env GOOS=linux --env GOARCH=amd64 -i -v $PWD:/app/ golang:1.13  go build -o /app/cgo-main  -ldflags '-extldflags "-static" ' /app/main.go
```

## docker-compose build

> with alpine + debian

```code
docker-compose build
```

FROM golang:alpine3.20

RUN go install github.com/air-verse/air@latest

WORKDIR /godocker

COPY . .

RUN go build

CMD ["air", "-c", ".air.toml"]
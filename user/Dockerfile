FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S novagroup
RUN adduser -S -D -h /app novauser novagroup
RUN chown -R novauser:novagroup /app

USER novauser

COPY main.go /app

EXPOSE 8080
CMD go run /app/main.go
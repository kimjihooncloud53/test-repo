FROM alpine:latest

RUN apk update

RUN apk add --no-cache curl

WORKDIR /app

COPY red .

RUN chmod +x red

EXPOSE 8080

CMD ["./red"]
FROM alpine:3.19

RUN apk add --no-cache bash curl

COPY app.sh /app.sh
RUN chmod +x /app.sh

CMD ["/app.sh"]

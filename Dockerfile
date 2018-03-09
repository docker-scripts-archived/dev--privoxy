FROM alpine:latest

RUN apk --no-cache add privoxy
ADD config /etc/privoxy/
CMD ["privoxy-start.sh"]



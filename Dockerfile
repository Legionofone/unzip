FROM alpine:3.14
RUN apt-get update \
    && apk add --no-cache bash
CMD bash

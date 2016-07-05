FROM alpine:3.3

MAINTAINER duykhoa12t@gmail.com

RUN adduser -D developer && \
    apk add --no-cache vim

USER developer

VOLUME ["/workspace"]
WORKDIR /workspace
ENTRYPOINT sh

FROM gliderlabs/alpine:3.5

WORKDIR /root
VOLUME /root/.aws

ENTRYPOINT ["/usr/bin/aws"]
CMD ["help"]

RUN apk update && apk add \
      bash \
      curl \
      less \
      groff \
      jq \
      python \
      py-pip \
      py2-pip && \
      pip install --upgrade pip awscli

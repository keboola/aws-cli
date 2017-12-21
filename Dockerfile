FROM gliderlabs/alpine:3.5
MAINTAINER Ondrej Hlavacek <ondrej.hlavacek@keboola.com>

WORKDIR /root
VOLUME /root/.aws

ENTRYPOINT ["/usr/bin/aws"]
CMD ["help"]

RUN apk-install py-pip
RUN pip install awscli

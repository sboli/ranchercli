FROM alpine:latest

RUN apk add curl && curl -Lo rancher-cli.tar.gz https://github.com/rancher/cli/releases/download/v2.4.11/rancher-linux-amd64-v2.4.11.tar.gz
RUN tar zxf rancher-cli.tar.gz && mv rancher-v2.4.11/rancher /usr/bin && rm -fr rancher-cli*

ENTRYPOINT [ "/bin/sh" ]


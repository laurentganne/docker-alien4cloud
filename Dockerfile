FROM alpine:3.6

ARG a4c_version=2.0.0

RUN apk add --update openjdk8-jre-base bash && \
    apk add --update bash openssl unzip curl python && \
    mkdir -p /var/a4c && \
    cd /var/a4c && \
    curl -k -O https://fastconnect.org/maven/service/local/repositories/opensource/content/alien4cloud/alien4cloud-dist/${a4c_version}/alien4cloud-dist-${a4c_version}-dist.tar.gz && \
    tar xvf alien4cloud-dist-${a4c_version}-dist.tar.gz && \
    rm alien4cloud-dist-${a4c_version}-dist.tar.gz && \
    addgroup a4c && \
     adduser -D -s /bin/bash -h /var/a4c -g a4c -G a4c a4c && \
    umask 0022 && \
    chown -R a4c:a4c /var/a4c && \  
    rm -rf /var/cache/apk/*

EXPOSE 8088

USER a4c

ENTRYPOINT cd /var/a4c/alien4cloud && ./alien4cloud.sh

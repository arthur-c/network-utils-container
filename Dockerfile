FROM debian:bookworm-slim

RUN apt-get update && \
    apt-get install -y \
    awscli \
    curl \
    dnsutils \
    iputils-ping \
    jq \
    net-tools \
    netcat-openbsd \
    nmap \
    telnet \
    traceroute \
    wget \
    && rm -rf /var/lib/apt/lists/*

COPY Dockerfile /Dockerfile

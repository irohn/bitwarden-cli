FROM node:slim

ARG BW_VERSION=2025.6.1

RUN npm install -g @bitwarden/cli@$BW_VERSION

USER 1000

WORKDIR /bw

ENV HOME=/bw

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]

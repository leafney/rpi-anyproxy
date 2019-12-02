FROM arm32v7/node:12.13.1-alpine3.10
LABEL maintainer="leafney <babycoolzx@126.com>"

ENV ANYPROXY_VERSION=4.1.0

RUN yarn global add anyproxy@${ANYPROXY_VERSION} &&\
    yarn cache clean

EXPOSE 8001 8002

ENTRYPOINT anyproxy
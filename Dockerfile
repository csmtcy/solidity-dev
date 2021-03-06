FROM node:7.4-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apk add -t .gyp --no-cache git python g++ make \
    && npm install -g truffle \
    && apk del .gyp

ENTRYPOINT ["truffle"]

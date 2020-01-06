FROM mhart/alpine-node:8 as api_nodejs
WORKDIR /app

COPY package.json .
COPY yarn.lock .
RUN yarn install --production

COPY ./src ./src
COPY ./bin ./bin

ENV APP_ENV=prod

COPY docker/nodejs/docker-entrypoint.sh /usr/local/bin/docker-entrypoint
RUN set -eux; \
    chmod +x /usr/local/bin/docker-entrypoint

ENTRYPOINT ["docker-entrypoint"]

#!/bin/sh
set -e

echo "APP_ENV=$APP_ENV"

if [ "$APP_ENV" = 'dev' ]; then
  yarn install
  yarn start-dev
fi

if [ "$APP_ENV" = 'prod' ]; then
  yarn start
fi

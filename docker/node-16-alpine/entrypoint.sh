#!/bin/sh

if [ -f "yarn.lock" ]; then
  yarn install --frozen-lockfile
  if [ ! -d "node_modules" ]; then
    yarn build
  fi
  yarn start:dev
else
  ## Npm is very slow to do the "npm ci" on each start, so we do it once
  if [ ! -d "node_modules" ]; then
    npm ci
    npm run build
  fi
  npm run start:dev
fi
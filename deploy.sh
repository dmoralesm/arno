#!/bin/bash

git pull
git checkout Caddyfile
sed -i "s/<domain>/$DOMAIN/g" Caddyfile
docker compose build
docker compose up -d

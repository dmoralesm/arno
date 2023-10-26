#!/bin/bash

git pull
cp -rf Caddy.sample Caddyfile
sed -i "s/<domain>/$DOMAIN/g" Caddyfile
sudo docker compose build
sudo docker compose up -d

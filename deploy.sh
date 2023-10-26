#!/bin/bash

git pull
cp -rf Caddyfile.sample Caddyfile
sed -i "s/<domain>/$DOMAIN/g" Caddyfile
sudo docker compose build
sudo docker compose up -d

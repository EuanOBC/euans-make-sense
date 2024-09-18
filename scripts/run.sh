#!/bin/bash -e

echo "[+] Building docker image"
./scripts/build.sh

echo "[+] Stopping existing container"
docker rm -f euans-make-sense || true

echo "[+] Running container"
docker run \
  -dit \
  --restart=unless-stopped \
  --name euans-make-sense \
  -p 1234:3000 \
  euans-make-sense:latest

echo "[+] Finished run"

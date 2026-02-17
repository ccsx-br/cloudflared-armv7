#!/bin/bash
# Enable buildx
docker buildx create --use

# Build for MikroTik armv7 architecture
docker buildx build --platform linux/arm/v7 -t ccsx/cloudflared-ccsx:latest --push .

docker save ccsx/cloudflared-ccsx:latest -o cloudflared-ccsx.tar

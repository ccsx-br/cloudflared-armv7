# Use scratch as the base image, which is a minimal image with no OS
FROM scratch
COPY cloudflared-linux-arm /cloudflared
ENTRYPOINT ["/cloudflared", "tunnel", "--no-autoupdate", "run"]

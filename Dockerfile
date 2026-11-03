FROM caddy:2.11.7-builder AS builder

RUN xcaddy build \
    --with github.com/mholt/caddy-l4 \
    --with github.com/hslatman/caddy-crowdsec-bouncer/http \
    --with github.com/hslatman/caddy-crowdsec-bouncer/layer4

FROM caddy:2.11.7

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

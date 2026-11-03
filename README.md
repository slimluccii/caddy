# caddy

Custom [Caddy](https://caddyserver.com) image built with xcaddy, published to `ghcr.io/slimluccii/caddy`.

## Modules

- [caddy-l4](https://github.com/mholt/caddy-l4), including `layer4.matchers.tls` and `layer4.handlers.proxy` for SNI-based TLS passthrough
- [caddy-crowdsec-bouncer](https://github.com/hslatman/caddy-crowdsec-bouncer), both the `http` and `layer4` modules

CI fails if any of these modules is missing from `caddy list-modules` in the built image.

## Tags

- `latest`: the most recent build from `main`
- `sha-<short sha>`: the build for a specific commit

Only `linux/amd64` is built.

## Updates

Caddy and the module versions are pinned in the Dockerfile. Renovate opens a pull request for each new release, and minor and patch updates are merged automatically once CI passes.

## Usage

```sh
docker pull ghcr.io/slimluccii/caddy:latest
```

The image is a drop-in replacement for the official `caddy` image.

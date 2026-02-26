# Linode DDNS

This is just a simple container that wraps the [pypi project](https://pypi.org/project/linode-dynamic-dns/) with a 
similar name.

## Usage

### Docker run
```bash
docker run \
    --name=linode-ddns \
    -e IPV6_DISABLE=true \
    -e LINODE_ACCESS_TOKEN=your_api_key \
    -e LINODE_DNS_DOMAIN=example.com \
    -e LINODE_DNS_HOSTNAME=home \
    -e UPDATE_INTERVAL=300 \
    --restart unless-stopped \
    ghcr.io/andrewpk/linode-ddns:latest
```

### A compose file example
```yaml
version: '3'
services:

  linode-ddns:
    image: ghcr.io/andrewpk/linode-ddns:latest
    container_name: linode-ddns
    restart: always
    environment:
      - LINODE_ACCESS_TOKEN=${LINODE_ACCESS_TOKEN}
      - IPV6_DISABLE=${IPV6_DISABLE}
      - LINODE_DNS_DOMAIN=${LINODE_DNS_DOMAIN}
      - LINODE_DNS_HOSTNAME=${LINODE_DNS_HOSTNAME}
      - UPDATE_INTERVAL=${UPDATE_INTERVAL}
```

Just make sure to set env vars or use a .env file with your preferred deployment method.

## Why does this exist?

There are other packagings of this, I just quickly wanted an arm64 version that I could run on my Raspberry Pi with my 
home assistant setup.


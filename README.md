# Linode DDNS

This is just a simple container that wraps the [pypi project](https://pypi.org/project/linode-dynamic-dns/) with a 
similar name.

## Usage

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

## Why does this exist?

There are other packagings of this, I just quickly wanted an arm64 version that I could run on my Raspberry Pi with my 
home assistant setup.

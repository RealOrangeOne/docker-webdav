# docker-webdav

[![CI](https://github.com/RealOrangeOne/docker-webdav/actions/workflows/ci.yml/badge.svg)](https://github.com/RealOrangeOne/docker-webdav/actions/workflows/ci.yml)

Webdav server, powered by Nginx

## Usage

Mount your files at `/srv`.

To modify the user serving files, set the `$PUID` environment variable. By default, it's user id `1000`.

By default, the credentials are `user:password`. To add your own, mount a valid `.htpasswd` file at `/etc/nginx/.htpasswd`.

If you'd rather add some additional configuration yourself, you can mount an additional nginx config at `/etc/nginx/extra.conf`, which will be included in the primary config.

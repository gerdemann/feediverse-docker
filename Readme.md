# Docker image for feediverse

This is a Docker image for [feediverse](https://github.com/edsu/feediverse).

## Usage

```
 docker run -it -e FEED_URL=###YOUR_RSS_FEED# -e ... ghcr.io/gerdemann/feediverse-docker:latest
```

## Possible ENVs

| ENV                    | Default                     | Optional |
|------------------------|-----------------------------|----------|
| SCHEDULE               | 300                         | yes      |
| TEMPLATE               | {title} {link}              | yes      |
| START_DATE             | 2022-04-06T00:00:00.0+00:00 | yes      |
| FEED_URL               |                             | no       |
| MASTODON_DOMAIN        |                             | no       |
| MASTODON_ACCESS_TOKEN  |                             | no       |
| MASTODON_CLIENT_ID     |                             | no       |
| MASTODON_CLIENT_SECRET |                             | no       |
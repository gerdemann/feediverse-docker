FROM python:3.10-alpine3.15

ENV SCHEDULE 300
ENV TEMPLATE "{title} {link}"
ENV START_DATE "2022-04-06T00:00:00.0+00:00"
ENV FEED_URL ""
ENV MASTODON_DOMAIN ""
ENV MASTODON_ACCESS_TOKEN ""
ENV MASTODON_CLIENT_ID ""
ENV MASTODON_CLIENT_SECRET ""

COPY .feediverse /root/.feediverse.template
COPY run.sh /run.sh

RUN apk add gettext \
	&& pip install feediverse \
    && chmod +x /run.sh

CMD ["/run.sh"]

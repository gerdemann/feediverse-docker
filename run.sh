#!/bin/sh

envsubst '${SCHEDULE} ${TEMPLATE} ${FEED_URL} ${MASTODON_DOMAIN} ${MASTODON_ACCESS_TOKEN} ${MASTODON_CLIENT_ID} ${MASTODON_CLIENT_SECRET} ${START_DATE}' < /root/.feediverse.template > /root/.feediverse

while true
 do
 	echo "Check feed and post"
 	feediverse
 	echo "sleep $SCHEDULE"
 	sleep $SCHEDULE
done
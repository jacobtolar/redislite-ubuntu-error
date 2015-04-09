#!/usr/bin/env bash
echo "REDISLITE LOCATION: " 
echo `which redis-server`

cat <<EOF | python2.7
import logging
import redislite

logging.basicConfig(level=logging.DEBUG)

# example code
r = redislite.StrictRedis()
r.set('foo', 'bar')
r.get('foo')
EOF

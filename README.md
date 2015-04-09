# redislite-ubuntu-error
For https://github.com/yahoo/redislite/issues/42

Git clone, then: `vagrant up`

You should get an error on provisioning that looks like this: 

```
==> default: installing dependencies...
==> default: getting redislite...
==> default: installing redislite requirements...
==> default: installing redislite...
==> default: installing redis-2.2.15 - [installing this causes the failure...]
==> default: running test script... should fail...
==> default: #!/usr/bin/env bash
==> default: echo "REDISLITE LOCATION: "
==> default: echo `which redis-server`
==> default:
==> default: cat <<EOF | python2.7
==> default: import logging
==> default: import redislite
==> default:
==> default: logging.basicConfig(level=logging.DEBUG)
==> default:
==> default: # example code
==> default: r = redislite.StrictRedis()
==> default: r.set('foo', 'bar')
==> default: r.get('foo')
==> default: EOF
==> default: REDISLITE LOCATION:
==> default: /usr/local/bin/redis-server
==> default: DEBUG:redislite.client:Creating temporary redis directory /tmp/tmpXeqOLt
==> default: DEBUG:redislite.client:Running: redis-server /tmp/tmpXeqOLt/redis.config
==> default:
==> default: *** FATAL CONFIG FILE ERROR ***
==> default: Reading the configuration file, at line 79
==> default: >>> 'unixsocketperm 700'
==> default: Bad directive or wrong number of arguments
==> default: Traceback (most recent call last):
==> default:   File "<stdin>", line 7, in <module>
==> default:   File "/usr/local/lib/python2.7/dist-packages/redislite/client.py", line 243, in __init__
==> default:
==> default: self._start_redis()
==> default:   File "/usr/local/lib/python2.7/dist-packages/redislite/client.py", line 126, in _start_redis
==> default:
==> default: raise RedisLiteException('The binary redis-server failed to start')
==> default: redislite.client
==> default: .
==> default: RedisLiteException
==> default: :
==> default: The binary redis-server failed to start
```

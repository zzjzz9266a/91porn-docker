#!/bin/bash -eu

/usr/bin/aria2c --conf-path=/root/91porn/aria2.conf -D \
&& darkhttpd /root/aria2-ng/ --port 80 --daemon \
&& darkhttpd /root/91porn/videos/ --port 8080
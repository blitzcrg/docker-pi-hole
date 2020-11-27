#!/usr/bin/env bash
sed -i -e s/%STASH%/$STASH/g /etc/filebeat/filebeat.yml
service filebeat start
echo "$*"
/bin/sh -c "$*"
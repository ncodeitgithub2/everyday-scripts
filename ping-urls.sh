#!/bin/bash
for i in `cat /tmp/ping-ips.list`
do
ping -c3 $i
done

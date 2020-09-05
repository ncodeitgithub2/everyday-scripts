#!/bin/bash
for i in `cat /tmp/vms.list`; do curl -I http://{$i}:8080; done

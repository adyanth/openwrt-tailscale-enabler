#!/bin/sh

# Falls back to busybox tar syntax if running on openwrt busybox tar rather than GNU tar
filename="tailscale-enabler-$(git rev-parse HEAD | cut -c1-5).tgz"
tar -czvf $filename usr/ etc/ || tar c -zvf $filename usr/ etc/

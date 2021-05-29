#!/bin/sh

if [ "$#" -ne 1 ]; then
    echo "[ERR] Please pass in the tag for the file name."
    exit 1
fi

filename="openwrt-tailscale-enabler-$1.tgz"

# Falls back to busybox tar syntax if running on openwrt busybox tar rather than GNU tar
tar -czvf $filename usr/ etc/ || tar c -zvf $filename usr/ etc/

#!/bin/sh -ex

if [ -f /etc/cloud/cloud.cfg ]; then
    mkdir -p /etc/cloud/cloud.cfg.d
    grep -vE " - ssh-authkey-fingerprints| - keys-to-console| - byobu| - phone-home| - final-message| - landscape" /etc/cloud/cloud.cfg > /etc/cloud/cloud.cfg.new
    mv -f /etc/cloud/cloud.cfg.new /etc/cloud/cloud.cfg
fi

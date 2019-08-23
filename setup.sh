#!/bin/bash

set -x
rm -rf /usr/share/stx-images-update
cp -r src /usr/share/stx-images-update
chmod +x /usr/share/stx-images-update/run.sh
ln -s /usr/share/stx-images-update/run.sh /etc/cron.daily/stx_update_images.sh

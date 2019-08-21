#! /bin/bash

set +x
cp -r src /usr/share/stx-images-update

echo "0 17 * * * root ansible-playboot /usr/share/stx-images-update/update.yml" >> /etc/crontab


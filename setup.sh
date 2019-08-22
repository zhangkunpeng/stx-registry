#! /bin/bash

set -x
cp -r src /usr/share/stx-images-update
cat /etc/crontab |grep "ansible-playbook /usr/share/stx-images-update/update.yml"
if [ $? -eq 0 ];then
    echo "0 17 * * * root ansible-playbook /usr/share/stx-images-update/update.yml" >> /etc/crontab
fi

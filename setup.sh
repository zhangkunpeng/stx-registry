#! /bin/bash

set -x
rm -rf /usr/share/stx-images-update
cp -r src /usr/share/stx-images-update
cat /etc/crontab |grep "ansible-playbook /usr/share/stx-images-update/update.yml"
if [ $? -ne 0 ];then
    echo "0 17 * * * root ansible-playbook /usr/share/stx-images-update/update.yml" >> /etc/crontab
fi

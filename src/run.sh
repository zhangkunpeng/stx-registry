#!/bin/bash
touch /usr/share/stx-images-update/.run
ansible-playbook /usr/share/stx-images-update/update.yml
rm -rf /usr/share/stx-images-update/.run
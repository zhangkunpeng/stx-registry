#!/bin/bash
touch /usr/share/.run
ansible-playbook /usr/share/stx-images-update/update.yml
rm -rf /usr/share/.run
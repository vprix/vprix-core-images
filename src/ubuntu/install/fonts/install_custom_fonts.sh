#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Installing ttf-wqy-zenhei"
if [[ "${DISTRO}" == @(centos|oracle7) ]]; then
  yum install -y wqy-zenhei-fonts
else
  apt-get install -y ttf-wqy-zenhei
fi
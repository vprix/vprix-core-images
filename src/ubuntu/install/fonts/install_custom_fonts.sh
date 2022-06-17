#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Installing ttf-wqy-zenhei"
if [[ "${DISTRO}" == @(centos|oracle7) ]]; then
  yum install -y wqy-zenhei-fonts
    yum clean all && rm -rf /tmp/* && rm -rf /var/cache/yum/*
else
  apt-get update
  apt-get install -y ttf-wqy-zenhei
  apt-get clean -y
  rm -rf /var/lib/apt/lists/*
fi
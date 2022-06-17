#!/usr/bin/env bash
set -e

echo "Install nss-wrapper to be able to execute image as non-root user"
if [ "${DISTRO}" == "centos" ] ; then
  yum install -y centos-release-scl-rh && yum install -y nss_wrapper
  yum install -y gettext
    yum clean all && rm -rf /tmp/* && rm -rf /var/cache/yum/*
else
  apt-get update
  apt-get install -y libnss-wrapper gettext libxss1 libnss3 gnupg libsecret-1-0 libgbm1
  apt-get clean -y
  rm -rf /var/lib/apt/lists/*
fi

echo "add 'source generate_container_user' to .bashrc"

# have to be added to hold all env vars correctly
echo 'source $STARTUPDIR/generate_container_user' >> $HOME/.bashrc
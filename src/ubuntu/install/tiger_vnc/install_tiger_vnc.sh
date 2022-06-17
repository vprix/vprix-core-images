#!/usr/bin/env bash
set -e

echo "Install TigerVNC server"
cd /tmp

if [ "${DISTRO}" == "centos" ] ; then
  yum -y install tigervnc-server tigervnc-server-module xinetd
  yum clean all && rm -rf /tmp/* && rm -rf /var/cache/yum/*
else
    apt-get update
    DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install  tigervnc-standalone-server
    apt-get clean -y
    rm -rf /var/lib/apt/lists/*
fi

#mkdir -p $VPRIX_VNC_PATH/www/Downloads
#chown -R 0:0 $VPRIX_VNC_PATH
#chmod -R og-w $VPRIX_VNC_PATH
#chown -R 1000:0 $VPRIX_VNC_PATH/www/Downloads
#ln -s $VPRIX_VNC_PATH/www/index.html $VPRIX_VNC_PATH/www/vnc.html

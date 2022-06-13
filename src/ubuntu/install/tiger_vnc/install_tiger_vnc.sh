#!/usr/bin/env bash
set -e

echo "Install TigerVNC server"
cd /tmp

if [ "${DISTRO}" == "centos" ] ; then
  yum -y install tigervnc-server tigervnc-server-module xinetd
  yum clean all
  rm -rf /tmp/*
else
    apt -y install tigervnc-standalone-server
    apt clean -y
fi

#mkdir -p $VPRIX_VNC_PATH/www/Downloads
#chown -R 0:0 $VPRIX_VNC_PATH
#chmod -R og-w $VPRIX_VNC_PATH
#chown -R 1000:0 $VPRIX_VNC_PATH/www/Downloads
#ln -s $VPRIX_VNC_PATH/www/index.html $VPRIX_VNC_PATH/www/vnc.html

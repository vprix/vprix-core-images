#!/usr/bin/env bash
set -e

echo "安装常用工具，以便进行下一步安装。"
if [[ "${DISTRO}" == @(centos|oracle7) ]] ; then
  yum -y  install deltarpm
  yum -y install epel-release
  yum -y update
  yum -y install vim  wget which net-tools bzip2
  yum clean all && rm -rf /tmp/* && rm -rf /var/cache/yum/*
else
  cp /etc/apt/sources.list /etc/apt/sources.list.backup
  cp $INST_SCRIPTS/tools/sources.list /etc/apt/sources.list
  apt-get update
  # 使用非交互模式设置tzdata
  DEBIAN_FRONTEND=noninteractive TZ=Asia/Shanghai apt-get -y --no-install-recommends install tzdata
  # mesa-utils 查看显卡驱动安装情况
  # wmctrl 窗口分割
  apt-get install -y --no-install-recommends vim wget curl net-tools locales bzip2 wmctrl software-properties-common mesa-utils apt-utils
  apt-get clean -y
  rm -rf /var/lib/apt/lists/*
  echo "generate locales en_US.UTF-8"
  locale-gen en_US.UTF-8
fi
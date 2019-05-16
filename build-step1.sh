#!/usr/bin/env bash

# 导入 Key

rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org


# 安装 Yum 源

rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm


# 更新 kernel

yum --enablerepo=elrepo-kernel install -y kernel-lt kernel-lt-devel


# 配置 内核优先

grub2-set-default 0



#关闭防火墙。
systemctl stop firewalld.service
systemctl disable firewalld.service

#关闭SELinux
sed -i 's#SELINUX=enforcing#SELINUX=disabled#g' /etc/selinux/config
setenforce 0


#关闭swap
swapoff -a
sed -i 's/.*swap.*/#&/' /etc/fstab


# 重启系统
reboot
# 安装 centos 额外的yum源
rpm -ivh https://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm


# make 缓存
yum clean all && yum makecache


# 安装 git

yum -y install git



# ansible 必须 >= 2.7

# 安装 软件
yum install -y python-pip python34 python-netaddr python34-pip ansible
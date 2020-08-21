#!/usr/bin/bash

if sudo ls /etc/yum.repos.d/ | grep epel.repo
then
	echo "Repo already exists"
else
	sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
fi

yum clean all; yum repolist
echo
echo
echo "Installation successfull"

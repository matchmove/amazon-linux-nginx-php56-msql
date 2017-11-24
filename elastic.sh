#!/bin/bash

rpm --import https://packages.elastic.co/GPG-KEY-elasticsearch

#create repo file
tee -a /etc/yum.repos.d/elastic.repo << 'EOF'
[elastic-5.x]
name=Elastic repository for 5.x packages
baseurl=https://artifacts.elastic.co/packages/5.x/yum
gpgcheck=1
gpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch
enabled=1
autorefresh=1
type=rpm-md
EOF
#!/bin/bash
# Dataiku DSS works on Ubuntu, Debian, CentOS, RHEL and Amazon Linux.
# Usage: ./<scriptfilename>

#Download Dataiku DSS (https://cdn.downloads.dataiku.com/public/dss/)
wget https://cdn.downloads.dataiku.com/public/dss/6.0.1/dataiku-dss-6.0.1.tar.gz

#Unpack
tar xzf dataiku-dss-6.0.1.tar.gz

#Install
dataiku-dss-6.0.1/installer.sh -d Dataiku-dir -p 11000

#Start
Dataiku_dir/bin/dss start

#Browse to http://localhost:11000 

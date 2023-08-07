#!/usr/bin/sh
# GO LANGUAGE
# Script from Bing AI
sudo yum update -y
sudo yum install -y git gcc
git clone https://go.googlesource.com/go
cd go/src
./all.bash

# RESULT: 

#    Last metadata expiration check: 3:16:56 ago on Sun Aug  6 21:22:02 2023.
#    Dependencies resolved.
#    Nothing to do.
#    Complete!
#    Last metadata expiration check: 3:16:57 ago on Sun Aug  6 21:22:02 2023.
#    Package git-2.40.1-1.amzn2023.0.1.x86_64 is already installed.
#    Package gcc-11.3.1-4.amzn2023.0.3.x86_64 is already installed.
#    Dependencies resolved.
#    Nothing to do.
#    Complete!
#    Cloning into 'go'...
#    remote: Finding sources: 100% (32/32)
#    remote: Total 582793 (delta 425039), reused 582786 (delta 425039)
#    Receiving objects: 100% (582793/582793), 491.44 MiB | 22.73 MiB/s, done.
#    Resolving deltas: 100% (425039/425039), done.
#    Updating files: 100% (12553/12553), done.
#    ERROR: Cannot find /home/ec2-user/go1.4/bin/go.
#    Set $GOROOT_BOOTSTRAP to a working Go tree >= Go 1.20.6.:

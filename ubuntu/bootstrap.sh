#!/bin/bash
# git is already there on Ubuntu.
mkdir -p /home/ubuntu
	git clone  https://github.com/reed9999/build-various-things.git /home/ubuntu/scripts

	# This part doesn't work when run as root anyway....
#	pushd scripts
#		# Any git repo dir will do; set some global config.
#		git config pull.rebase false
#		git config --global user.name "Philip J. Reed"
#		git config --global user.email reed9999@uw.edu
#		git config --global core.autocrlf input
#		git config --global credential.helper store  # be careful! stores in plaintext
#
#	popd

cp /home/ubuntu/scripts/misc/.vimrc /home/ubuntu

# With Ubuntu 22.04 it attempts something interactive. We want it automatic.
# See https://stackoverflow.com/questions/73397110/#comment131834051_73397970
cp /etc/needrestart/needrestart.conf ~ubuntu/needrestart.conf.backup
sed -i "/#\$nrconf{restart} = 'i';/s/.*/\$nrconf{restart} = 'a';/" /etc/needrestart/needrestart.conf

# Since user_data runs as root, we should change ownership for convenience
chown -R ubuntu /home/ubuntu/*


exit

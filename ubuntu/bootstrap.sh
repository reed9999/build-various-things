#!/bin/bash
# git is already there on Ubuntu.
mkdir -p /home/ubuntu
	git clone  https://github.com/reed9999/build-various-things.git /home/ubuntu/scripts
	pushd scripts
		# Any git repo dir will do; set some global config.
		git config pull.rebase false
		git config --global user.name "Philip J. Reed" 
		git config --global user.email reed9999@uw.edu
		git config --global core.autocrlf input
		git config --global credential.helper store  # be careful! stores in plaintext

	popd

cp /home/ubuntu/scripts/misc/.vimrc /home/ubuntu

# Since user_data runs as root, we should change ownership for convenience
chown -R ubuntu /home/ubuntu/*


exit
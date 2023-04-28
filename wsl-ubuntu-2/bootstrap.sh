#!/bin/bash

# git is already there.

# Since user_data runs as root...
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

chown ubuntu /home/ubuntu/scripts
cp ~/scripts/misc/.vimrc /home/ubuntu
chown ubuntu /home/ubuntu/.vimrc

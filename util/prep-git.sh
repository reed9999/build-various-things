#!/bin/bash
pushd ~/scripts
		git config pull.rebase false
		git config --global user.name "Philip J. Reed"
		git config --global user.email reed9999@uw.edu
		git config --global core.autocrlf input
		git config --global credential.helper store  # be careful! stores in plaintext
popd

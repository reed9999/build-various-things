
aws s3 cp s3://pjr/preferences/unix/.vimrc-unix .vimrc

# I sometimes like to make a huge version of the name using https://textkool.com/en/ascii-art-generator on ANSI Regular
echo "\
NAME OF THIS INSTANCE GOES HERE
	" > THIS_INSTANCE_NAME.txt

sudo yum install -y git
git clone  https://github.com/reed9999/build-various-things.git scripts
pushd scripts
	# Any git repo dir will do; set some global config.
	git config pull.rebase false
	git config --global user.name "Philip J. Reed" 
	git config --global user.email reed9999@uw.edu
	git config --global core.autocrlf input
	git config --global credential.helper store  # be careful! stores in plaintext


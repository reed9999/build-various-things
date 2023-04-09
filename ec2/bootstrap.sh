
aws s3 cp s3://pjr/preferences/unix/.vimrc-unix .vimrc

# I sometimes like to make a huge version of the name using https://textkool.com/en/ascii-art-generator on ANSI Regular
echo "\
NAME OF THIS INSTANCE GOES HERE
	" > THIS_INSTANCE_NAME.txt

sudo yum install -y git
git clone  https://github.com/reed9999/build-various-things.git scripts

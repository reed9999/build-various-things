
aws s3 cp s3://pjr/preferences/unix/.vimrc-unix .vimrc

# I like https://textkool.com/en/ascii-art-generator on ANSI Regular
echo "\
	
███    ██  █████  ███    ███ ███████      ██████   ██████  ███████ ███████     ██   ██ ███████ ██████  ███████ 
████   ██ ██   ██ ████  ████ ██          ██       ██    ██ ██      ██          ██   ██ ██      ██   ██ ██      
██ ██  ██ ███████ ██ ████ ██ █████       ██   ███ ██    ██ █████   ███████     ███████ █████   ██████  █████ 
██  ██ ██ ██   ██ ██  ██  ██ ██          ██    ██ ██    ██ ██           ██     ██   ██ ██      ██   ██ ██    
██   ████ ██   ██ ██      ██ ███████      ██████   ██████  ███████ ███████     ██   ██ ███████ ██   ██ ███████ 
                                                                                                               


	" > THIS_INSTANCE_NAME.txt

sudo yum install -y git
git clone  https://github.com/reed9999/build-various-things.git 

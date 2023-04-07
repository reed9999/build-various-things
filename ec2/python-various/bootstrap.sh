
aws s3 cp s3://pjr/preferences/unix/.vimrc-unix .vimrc

mkdir automation
aws s3 cp "s3://pjr/build-various-things/python-various" ./automation --recursive
chmod +x automation/*

echo "*** now beginning $(date)"
mkdir output
nohup automation/python-various-on-ec2-setup.sh | tee output/python-various-on-ec2-setup.txt
# skip pytest for the moment because it's working...
nohup automation/python-various-on-ec2-build.sh | tee output/python-various-on-ec2-build.txt

# Steps to prepare us to build various Python tools
# This is a fairly scattershot selection of items i think would be fun to build
# from source.
sudo yum install -y git
# AWS installs Python 3.9 by default, and yum also installs 3.9 by default. Django requires >=3.10
sudo yum install -y python311
sudo yum install -y pip
sudo pip install --upgrade build
git config --global user.name "Philip J. Reed" 
git config --global user.email reed9999@uw.edu
git config --global core.autocrlf input

sudo rm /usr/bin/python3
sudo ln -s /usr/bin/python3.11 /usr/bin/python3
git clone https://github.com/pytest-dev/pytest.git
git clone --depth 1 https://github.com/django/django.git
git clone https://github.com/qutebrowser/qutebrowser.git
git clone --depth 1 https://github.com/pytorch/pytorch

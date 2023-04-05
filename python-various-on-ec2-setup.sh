# Steps to prepare us to build various Python tools
# This is a fairly scattershot selection of items i think would be fun to build
# from source.
# TODO -- auto-respond yes to yum prompts

sudo yum install python3
git config --global user.name "Philip J. Reed" 
git config --global user.email reed9999@uw.edu
git config --global core.autocrlf input

git clone https://github.com/pytest-dev/pytest.git
git clone https://github.com/django/django.git
git clone https://github.com/qutebrowser/qutebrowser.git
git clone https://github.com/pytorch/pytorch

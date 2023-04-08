# Steps to prepare us to build Python per
# https://devguide.python.org/getting-started/setup-building/index.html
sudo yum install -y git 
git config --global user.name "Philip J. Reed" 
git config --global user.email reed9999@uw.edu
git config --global core.autocrlf input
sudo yum install -y gcc

pushd ~
git clone https://github.com/reed9999/cpython.git
git remote add upstream https://github.com/python/cpython
popd

# I'm including Python-native tools here just for balance, even though they use more Python than C/C++.
git clone --depth 1 https://github.com/pypa/pip.git 

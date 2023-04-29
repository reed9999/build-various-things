# Steps to prepare us to build various Python tools
# Ubuntu edition - started with Azure, then AWS Ubuntu, and now WSL Ubuntu2. 
# Needs to be tested on Azure and WSL.

# For issues that got resolved see 
#   `../output/ubuntu-setup-script-issues-resolved.md`

# Generalize as much as possible so we can merge it back in.
# git should already be installed by now as a bootstrap


PKGMGR=apt
# See https://ubuntuhandbook.org/index.php/2022/10/python-3-11-released-how-install-ubuntu/
# This gets some output that I would like to understand better. See NOTE-ADD-REPO below
sudo add-apt-repository -y ppa:deadsnakes/ppa

sudo ${PKGMGR} install -y python3.11   # not python311
sudo ${PKGMGR} install -y pip

# Now these get a very similar message. I've installed these globally rather than in a venv because I expect them 
# to apply across projects. See NOTE-PIP below.
# sudo pip install --upgrade build
# sudo pip install --upgrade setuptools

sudo apt install -y python3-build
sudo apt install -y python3-setuptools

pushd ~
# Start removing these from here... they're not global and belong with the build scripts.
git clone --depth 1 https://github.com/django/django.git
git clone https://github.com/qutebrowser/qutebrowser.git
# I'm not doing anything with pytorch at the moment. 
# git clone --depth 1 https://github.com/pytorch/pytorch
popd

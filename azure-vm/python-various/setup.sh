# Steps to prepare us to build various Python tools
# Azure edition
# Generalize as much as possible so we can merge it back in.
#
# git should already be installed by now as a bootstrap

PKGMGR=apt
# See https://ubuntuhandbook.org/index.php/2022/10/python-3-11-released-how-install-ubuntu/
sudo add-apt-repository ppa:deadsnakes/ppa
sudo ${PKGMGR} install -y python3.11   # not python311
sudo ${PKGMGR} install -y pip
sudo pip install --upgrade build
sudo pip install --upgrade setuptools

pushd ~
git clone https://github.com/pytest-dev/pytest.git
git clone --depth 1 https://github.com/django/django.git
git clone https://github.com/qutebrowser/qutebrowser.git
git clone --depth 1 https://github.com/pytorch/pytorch
popd


<<NOTE
Excerpt of output from setuptools:

Collecting setuptools
  Downloading setuptools-67.6.1-py3-none-any.whl (1.1 MB)
     |████████████████████████████████| 1.1 MB 10.2 MB/s
ERROR: launchpadlib 1.10.13 requires testresources, which is not installed.
Installing collected packages: setuptools

NOTE

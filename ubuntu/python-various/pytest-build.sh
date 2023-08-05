echo "##### PYTEST"
echo "pytest-build start time $(date)"

source ~/scripts/util/detect-installer.sh
echo "Linux distribution: $BVT_DISTRO"
echo "Selected installer: $BVT_INSTALLER"

pushd ~
git clone https://github.com/pytest-dev/pytest.git
cd ~/pytest
# sudo $BVT_INSTALLER install -y python3.11-venv
# The message says 3.10 -- but why???
sudo apt install -y python3.10-venv

echo "*****
python3.11-venv is installed by root
Err, I mean 3.10
ready to load venv and start building.
*****



"
python3 -m venv ~/.virtualenvs/pytestdev
source ~/.virtualenvs/pytestdev/bin/activate
python3 -m pip install --editable .

echo "-- next: setup.py build"
python3 ./setup.py build
echo


# Note that pytest clearly says to use tox instead, and the following doesn't run any tests.
# python3 ./setup.py test
python3 -m pip install tox

echo "call tox start time $(date) $(pwd)"
tox
echo "call tox end time $(date) $(pwd)"

echo "-- next: attempt install of our new libraries"

# This sudo might be problematic.
# sudo python3 ./setup.py install
python3 ./setup.py install

popd

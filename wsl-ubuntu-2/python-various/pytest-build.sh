echo "##### PYTEST"
echo "pytest-build start time $(date)"

pushd ~/pytest
sudo apt install python3.8-venv
rm -rf ~/.virtualenvs/pytestdev
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

# Pretty much similar warnings to on AWS EC2
"
/usr/lib/python3.9/site-packages/setuptools/installer.py:27: SetuptoolsDeprecationWarning: setuptools.installer is deprecated. Requirements should be satisfied by a PEP 517 installer.
  warnings.warn(
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
usage: setup.py [global_opts] cmd1 [cmd1_opts] [cmd2 [cmd2_opts] ...]
   or: setup.py --help [cmd1 cmd2 ...]
   or: setup.py --help-commands
   or: setup.py cmd --help

"

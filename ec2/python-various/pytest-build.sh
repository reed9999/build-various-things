## See ../../output/pytest-summary-on-003.txt
# The sudo below here is suspect; could it be that the 2nd time through it has already claimed dirs 
# inappropriately for root?


pushd ~/pytest
python3 -m venv ~/.virtualenvs/pytestdev
source ~/.virtualenvs/pytestdev/bin/activate
python3 -m pip install --editable .

echo "-- next: setup.py build"
python3 ./setup.py build
echo


# Note that pytest clearly says to use tox instead, and the following doesn't run any tests.
# python3 ./setup.py test

echo "Before tox $(date)"

python3 -m pip install tox
tox
echo "After tox $(date)"
echo "-- next: attempt install of our new libraries"
#
# I don't know why I thought this was a good idea.
# python3 -m pip install --upgrade $(pwd)

# This sudo might be problematic.
# sudo python3 ./setup.py install
python3 ./setup.py install

popd

# Here are the warnings... even though setup seems to complete.  
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

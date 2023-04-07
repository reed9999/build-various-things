pushd ~/pytest
echo "-- next: setup.py build"
python3 ./setup.py build
echo "-- next: setup.py test"
# Note that pytest clearly says to use tox instead, and doesn't run any tests.
python3 ./setup.py test
echo "-- next: attempt install of our new libraries"
# python3 -m pip install --upgrade $(pwd)
sudo python3 ./setup.py install

popd

# Here are the warnings... even though setup seems to complete.  
OUTPUT = <<-HERE
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

HERE

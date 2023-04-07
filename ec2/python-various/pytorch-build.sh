# Fails - see below
echo "##### PYTORCH"
pushd ~/pytorch
python3 -m venv ~/.virtualenvs/pytorchdev
source ~/.virtualenvs/pytorchdev/bin/activate
python3 -m pip install setuptools
python3 -m pip install --editable .

python3 ./setup.py build
python3 ./setup.py test
popd


FAILURE='
      -- Configuring incomplete, errors occurred!
      Building wheel torch-2.1.0a0+git5210d7c
      -- Building version 2.1.0a0+git5210d7c
       --- Trying to initialize submodules
       --- Submodule initialization took 193.63 sec
      cmake -GNinja -DBUILD_PYTHON=True -DBUILD_TEST=True -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/home/ec2-user/pytorch/torch -DCMAKE_PREFIX_PATH=/home/ec2-user/.virtualenvs/pytorchdev/lib/python3.11/site-packages -DNUMPY_INCLUDE_DIR=/tmp/pip-build-env-890d7hqv/overlay/lib64/python3.11/site-packages/numpy/core/include -DPYTHON_EXECUTABLE=/home/ec2-user/.virtualenvs/pytorchdev/bin/python3 -DPYTHON_INCLUDE_DIR=/usr/include/python3.11 -DPYTHON_LIBRARY=/usr/lib64/libpython3.11.so.1.0 -DTORCH_BUILD_VERSION=2.1.0a0+git5210d7c -DUSE_NUMPY=True /home/ec2-user/pytorch
      [end of output]

  note: This error originates from a subprocess, and is likely not a problem with pip.
error: metadata-generation-failed

× Encountered error while generating package metadata.
╰─> See above for output.

note: This is an issue with the package mentioned above, not pip.
hint: See above for details.

[notice] A new release of pip available: 22.3.1 -> 23.0.1
[notice] To update, run: pip install --upgrade pip
Building wheel torch-2.1.0a0+git5210d7c
Traceback (most recent call last):
  File "/home/ec2-user/pytorch/./setup.py", line 324, in <module>
    cmake = CMake()
            ^^^^^^^
  File "/home/ec2-user/pytorch/tools/setup_helpers/cmake.py", line 38, in __init__
    self._cmake_command = CMake._get_cmake_command()
                          ^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/home/ec2-user/pytorch/tools/setup_helpers/cmake.py", line 67, in _get_cmake_command
    raise RuntimeError("no cmake or cmake3 with version >= 3.13.0 found")
RuntimeError: no cmake or cmake3 with version >= 3.13.0 found
Building wheel torch-2.1.0a0+git5210d7c
Traceback (most recent call last):
  File "/home/ec2-user/pytorch/./setup.py", line 324, in <module>
    cmake = CMake()
            ^^^^^^^
  File "/home/ec2-user/pytorch/tools/setup_helpers/cmake.py", line 38, in __init__
    self._cmake_command = CMake._get_cmake_command()
                          ^^^^^^^^^^^^^^^^^^^^^^^^^^
  File "/home/ec2-user/pytorch/tools/setup_helpers/cmake.py", line 67, in _get_cmake_command
    raise RuntimeError("no cmake or cmake3 with version >= 3.13.0 found")
RuntimeError: no cmake or cmake3 with version >= 3.13.0 found
~/scripts/ec2
'

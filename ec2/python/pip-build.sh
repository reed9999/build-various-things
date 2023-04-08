# Try building pip from source. Eventually this should build without *needing* pip, 
# so that we can use our built pip for other builds.
#

# Many tests fail:  1495 passed, 59 skipped, 16 xfailed, 14 warnings, 866 errors in 48.81s
#
# Move this to setup when it works.
pushd ~
git clone --depth 1 https://github.com/pypa/pip.git 
popd

pushd ~/pip
python3 -m venv ~/.virtualenvs/pipdev
source ~/.virtualenvs/pipdev/bin/activate
# This is "cheating"
python3 -m pip install --editable .

pushd tests
# Also cheating but I doubt the structure is like this anyway
python -m pip install -r requirements.txt
python -m pip install -r requirements-common_wheels.txt 
echo 
echo "***** BEGIN PIP TESTS $(date)"
./conftest.py
pytest
echo "***** END PIP TESTS $(date)"
echo
popd  # from tests
popd  # from pip

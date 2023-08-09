# This works and passes tests, except the ln mechanism is untested
#

source ~/scripts/ubuntu/setup-python.sh
echo "Linux distribution: $BVT_DISTRO"
echo "Selected installer: $BVT_INSTALLER"
echo
echo "***** BEGIN DJANGO BUILD SCRIPT $(date) *****"

# This is not an ideal way to get Python 3.11 in place for Django -- breaks the AWS CLI
# sudo mv /usr/bin/python3 /usr/bin/python3-original
# sudo ln -s /usr/bin/python3.11 /usr/bin/python3
git clone --depth 1 https://github.com/django/django.git
pushd ~/django
  sudo apt install python3.11-venv
  rm -rf ~/.virtualenvs/djangodev

  # Possibly needed to fix KeyError: 'unix_user'
  # https://github.com/pypa/setuptools/issues/2938#issuecomment-1239769624
  sudo apt purge python3-setuptools

  python3.11 -m venv ~/.virtualenvs/djangodev
  source ~/.virtualenvs/djangodev/bin/activate
  python3 -m pip install --editable .
  python3 -m pip install tblib # Without this, the test suite might crash on a failure.
  python3 -m pip install --editable .

  pushd tests
    python -m pip install -r requirements/py3.txt
    echo
    echo "***** BEGIN DJANGO TESTS $(date)"
    ./runtests.py
    echo "***** END DJANGO TESTS $(date)"
    echo
  popd # from tests
  deactivate
popd # from django

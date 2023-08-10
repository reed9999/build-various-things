#https://docs.djangoproject.com/en/4.2/intro/contributing/
# Modified quite a bit for phase 2 (August 2023)
# Note that failure to build pywatchman (see below) was causing the test suite
# to just die prematurely. An interesting research project would be to
# reverse the fix below (comment install of `python3.11-dev`) and see why the
# tests fail.

source ~/scripts/ubuntu/setup-python.sh
echo "Linux distribution: $BVT_DISTRO"
echo "Selected installer: $BVT_INSTALLER"
echo
echo "***** BEGIN DJANGO BUILD SCRIPT $(date) *****"

git clone --depth 1 https://github.com/django/django.git
pushd ~/django
  sudo apt install python3.11-venv
  rm -rf ~/.virtualenvs/djangodev

  # Possibly needed to fix KeyError: 'unix_user'
  # https://github.com/pypa/setuptools/issues/2938#issuecomment-1239769624
  sudo apt purge -y python3-setuptools

  python3.11 -m venv ~/.virtualenvs/djangodev
  source ~/.virtualenvs/djangodev/bin/activate
  python3 -m pip install --editable .
  python3 -m pip install tblib # Without this, the test suite might crash on a failure.
#  python3 -m pip install --editable .   # doubtful we need a second one?

# This is critical so that pip can build the pywatchman wheel via gcc.
# Without it, Python.h won't be found.
  sudo ${BVT_INSTALLER} install -y python3.11-dev

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

# This isn't the most useful thing, because Qutebrowser is a GUI app and probably not that useful to 
# build in my contexts, except for curiosity.
# TODO - should use tox
echo "##### QUTEBROWSER"
git clone https://github.com/qutebrowser/qutebrowser.git
echo "qutebrowser-build start time $(date)"
pushd ~/qutebrowser
python3 -m venv ~/.virtualenvs/qutebrowserdev
source ~/.virtualenvs/qutebrowserdev/bin/activate
python3 -m pip install setuptools
python3 -m pip install tox
python3 -m pip install --editable .

python3 ./setup.py build
tox
deactivate
popd
echo "qutebrowser-build end time $(date)"

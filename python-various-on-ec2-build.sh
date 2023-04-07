# Moved pytest to its own thing

pushd django
# TODO bring into harmony with https://docs.djangoproject.com/en/dev/intro/contributing/
python3 -m venv ~/.virtualenvs/djangodev
source ~/.virtualenvs/djangodev/bin/activate
python3 -m pip install --editable .

pushd tests
python -m pip install -r requirements/py3.txt
echo 
echo "***** BEGIN DJANGO TESTS $(date)"
./runtests.py
echo "***** END DJANGO TESTS $(date)"
echo
popd

echo "##### QUTEBROWSER"
pushd qutebrowser
python3 -m venv ~/.virtualenvs/qutebrowserdev
source ~/.virtualenvs/qutebrowserdev/bin/activate
python3 -m pip install setuptools
python3 -m pip install --editable .

python3 ./setup.py build
python3 ./setup.py test
popd

echo "##### PYTORCH"
pushd pytorch
python3 -m venv ~/.virtualenvs/pytorchdev
source ~/.virtualenvs/pytorchdev/bin/activate
python3 -m pip install setuptools
python3 -m pip install --editable .

python3 ./setup.py build
python3 ./setup.py test
popd

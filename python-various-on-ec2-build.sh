# Moved pytest to its own thing

pushd django
python3 ./setup.py build
python3 ./setup.py test
popd

pushd qutebrowser
python3 ./setup.py build
python3 ./setup.py test
popd


pushd pytorch
python3 ./setup.py build
python3 ./setup.py test
popd

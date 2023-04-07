
echo "##### PYTORCH"
pushd ~/pytorch
python3 -m venv ~/.virtualenvs/pytorchdev
source ~/.virtualenvs/pytorchdev/bin/activate
python3 -m pip install setuptools
python3 -m pip install --editable .

python3 ./setup.py build
python3 ./setup.py test
popd

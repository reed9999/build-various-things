# This works and passes tests
pushd ~/django
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


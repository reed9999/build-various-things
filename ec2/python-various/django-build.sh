# This works and passes tests, except the ln mechanism is untested
#
# This is not an ideal way to get Python 3.11 in place for Django -- breaks the AWS CLI
sudo mv /usr/bin/python3 /usr/bin/python3-original
sudo ln -s /usr/bin/python3.11 /usr/bin/python3

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
popd  # from tests
popd  # from django

sudo rm /usr/bin/python3
sudo mv /usr/bin/python3-original /usr/bin/python3

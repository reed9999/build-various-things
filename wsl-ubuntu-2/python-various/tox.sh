# TOX
# This builds pretty cleanly using tox itself, per https://tox.wiki/en/latest/development.html

pushd ~
git clone --depth 1 https://github.com/tox-dev/tox
cd tox
# unnecessary? tox should handle the venv stuff itself right?
# python3.8 -m venv ~/.virtualenvs/toxdev
# source ~/.virtualenvs/toxdev/bin/activate

# This is really leaning heavily on tox to set up the environment to run tox.
tox -e dev
.tox/dev/bin/tox 

echo "~~~ Now beginning tox -e py $(date)"
tox -e py
echo "~~~ Now ending tox -e py $(date)"
popd

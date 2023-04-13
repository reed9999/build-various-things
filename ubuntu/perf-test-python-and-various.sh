# Run some parts of my suite that are performance sensitive and interesting
pushd ~/scripts
echo "pwd $(pwd)"
mkdir this-instance

echo
echo "~~ begin various setup ~~ $(date)"
./ubuntu/python-various/setup.sh
echo

echo
echo "~~ begin django build ~~ $(date)"
echo
ubuntu/python-various/django-build.sh | tee this-instance/django-build.txt

echo
echo "~~ begin pytest build ~~ $(date)"
echo
ubuntu/python-various/pytest-build.sh | tee this-instance/pytest-build.txt

# echo
# echo "~~ begin python setup ~~ $(date)"
# echo
# ubuntu/python/setup.sh | tee this-instance/python-setup.txt
# 
# echo
# echo "~~ begin python build ~~ $(date)"
# echo
# ubuntu/python/build.sh | tee this-instance/python-build.txt

# echo
# echo "~~ end pytest build ~~ $(date)"

popd

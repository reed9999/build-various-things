# Run some parts of my suite that are performance sensitive and interesting
pushd ~/scripts
mkdir this-instance

echo
echo "~~ begin various setup ~~ $(date)"
echo 
ec2/python-various/setup.sh

echo
echo "~~ begin django build ~~ $(date)"
echo 
ec2/python-various/django-build.sh

echo
echo "~~ begin pytest build ~~ $(date)"
echo 
ec2/python-various/pytest-build.sh

echo
echo "~~ begin python setup ~~ $(date)"
echo 
ec2/python/setup.sh

echo
echo "~~ begin python build ~~ $(date)"
echo 
ec2/python/build.sh

echo
echo "~~ end pytest build ~~ $(date)"

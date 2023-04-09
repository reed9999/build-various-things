# Build mysql from source and test it, timing and logging it all the while.
pushd ~/scripts
mkdir this-instance

echo
echo "~~ begin mysql setup ~~ $(date)"
ec2/mysql/mysql-setup.sh
echo

echo
echo "~~ begin mysql build ~~ $(date)"
echo
ec2/mysql/mysql-build.sh | tee this-instance/mysql.build.txt
echo
echo "~~ end mysql build ~~ $(date)"

popd

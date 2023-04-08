SCRIPTS="~/scripts"
pushd ~

echo "##### PYTEST"
${SCRIPTS}/python-various/pytest-build.sh

echo "##### DJANGO"
${SCRIPTS}/python-various/django-build.sh

echo "##### QUTEBROWSER"
${SCRIPTS}/python-various/qutebrowser-build.sh

echo "##### PYTORCH"
${SCRIPTS}/python-various/qutebrowser-build.sh

popd

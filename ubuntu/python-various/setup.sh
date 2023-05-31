# Steps to prepare us to build various Python tools
# Ubuntu edition - started with Azure, then AWS Ubuntu, and now WSL Ubuntu2. 
# Needs to be tested on Azure and WSL.

# For issues that got resolved see 
#   `../output/ubuntu-setup-script-issues-resolved.md`

# Generalize as much as possible so we can merge it back in.
# git should already be installed by now as a bootstrap

source ~/scripts/util/detect-installer.sh

PKGMGR=$BVT_INSTALLER

do_apt_get_install() {

    # See https://ubuntuhandbook.org/index.php/2022/10/python-3-11-released-how-install-ubuntu/
    # This gets some output that I would like to understand better. See NOTE-ADD-REPO below
    sudo add-apt-repository -y ppa:deadsnakes/ppa

    sudo ${PKGMGR} install -y python3.11   # not python311
    sudo ${PKGMGR} install -y pip

    # Now these get a very similar message. I've installed these globally rather than in a venv because I expect them 
    # to apply across projects. See NOTE-PIP below.
    # sudo pip install --upgrade build
    # sudo pip install --upgrade setuptools

    sudo apt install -y python3-build
    sudo apt install -y python3-setuptools

}

do_amazon_install(){
    echo "NYI"
}
if [[ "$BVT_INSTALLER" == "apt-get" ]]; then
    echo "BVT_INSTALLER is apt-get"
    do_apt_get_install
elif [[ "$BVT_INSTALLER" == "amazon-linux-extras" ]]; then
    # Do something if ENV_VAR is Y
    echo "BVT_INSTALLER is amazon-linux-extras"
    do_amazon_install
else
    echo "BVT_INSTALLER is neither apt-get nor amazon-linux-extras; terminating."
    exit -1
fi

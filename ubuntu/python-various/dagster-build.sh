#!/bin/bash
# On Ubuntu ec2, not Azure
# Remember I also have a Mac version of this on my work Mac.

# I don't get why pushd isn't working under nohup
cd ~
sudo apt update         # critical
sudo apt install -y python3.10-venv
sudo apt install -y python3-pip
sudo apt install -y nodejs
sudo apt install -y yarn

rm -rf ~/.virtualenvs/dagsterdev
python3 -m venv ~/.virtualenvs/dagsterdev

source ~/.virtualenvs/dagsterdev/bin/activate
echo "post-activate. which python? $(which python3)"

    echo "Is node installed? $(node -v)"
    echo
    echo

    # I should really set up my ssh, but I haven't yet.
    # git clone git@github.com:dagster-io/dagster.git
    git clone --depth=100 https://github.com/dagster-io/dagster.git
        cd ~/dagster
        echo "after cd to dagster pwd is $(pwd) at $(date)"
        python3 -m pip install --editable .
	echo "just before make, our python lives at $(which python3)"
	echo "just before make, $(date)"
    echo
    echo
        make dev_install
	echo "just after make, $(date)"

        python3 -m pytest python_modules/dagster/dagster_tests
	echo "just after pytest, $(date)"

        popd
deactivate
popd



EC2PROBLEMS=<<-HERE
No VM guests are running outdated hypervisor (qemu) binaries on this host.
fatal: destination path 'dagster' already exists and is not an empty directory.
~/dagster ~ ~
after push to dagster pwd is /home/ubuntu/dagster
Defaulting to user installation because normal site-packages is not writeable
Obtaining file:///home/ubuntu/dagster
  Installing build dependencies ... done
  Checking if build backend supports build_editable ... done
ERROR: Project file:///home/ubuntu/dagster has a 'pyproject.toml' and its build backend is missing the 'build_editable' hook. Since it does not have a 'setup.py' nor a 'setup.cfg', it cannot be installed in editable mode. Consider using a build backend that supports PEP 660.
HERE

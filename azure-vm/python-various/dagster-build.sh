# On Ubuntu ec2, not Azure
# Remember I also have a Mac version of this on my work Mac.
pushd ~
sudo apt install -y python3-pip
python3 -m venv ~/.virtualenvs/dagsterdev

source ~/.virtualenvs/dagsterdev/bin/activate

    echo "Is node installed? $(node -v)"
    sudo apt install yarn
    # I should really set up my ssh, but I haven't yet.
    # git clone git@github.com:dagster-io/dagster.git
    git clone --depth=100 https://github.com/dagster-io/dagster.git
        pushd dagster
        echo "after push to dagster pwd is $(pwd)"
        python3 -m pip install --editable .
        make dev_install

        python3 -m pytest python_modules/dagster/dagster_tests

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

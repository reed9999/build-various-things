# Remember I also have a Mac version of this on my work Mac.
pushd ~
python3 -m venv ~/.virtualenvs/dagsterdev
sudo apt install pip3

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



PROBLEMS=<<HERE
Checking for prod installs - if any are listed below reinstall with pip -e
dagster-pandas              0.18.7
dagster-pyspark             0.18.7
dagster-spark               0.18.7
make: *** [Makefile:73: sanity_check] Error 1
HERE

TESTING_PROBLEMS=<<HERE
ERROR: while parsing the following warning configuration:                                                                                                                                                                     ignore::dagster.ExperimentalWarning                                                                                                                                                                                       This error occurred:                                                                                                                                                                                                        Traceback (most recent call last):                                                                              File "/home/philip/.virtualenvs/pytestdev/lib/python3.8/site-packages/pytest-7.4.0.dev11+g61f7c27ec.d20230416-py3.8.egg/_pytest/config/__init__.py", line 1698, in parse_warning_filter                                       category: Type[Warning] = _resolve_warning_category(category_)                                              File "/home/philip/.virtualenvs/pytestdev/lib/python3.8/site-packages/pytest-7.4.0.dev11+g61f7c27ec.d20230416-py3.8.egg/_pytest/config/__init__.py", line 1736, in _resolve_warning_category                                  m = __import__(module, None, None, [klass])                                                               ModuleNotFoundError: No module named 'dagster'    
HERE

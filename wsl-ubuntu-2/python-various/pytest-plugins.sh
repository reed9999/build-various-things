# Pytest plugins
# To familiarize myself with some of the best, take the union of these two lists and try to build them. 
# https://opensource.com/article/18/6/pytest-plugins
# https://miguendes.me/7-pytest-plugins-you-must-definitely-use

pushd ~



python3 -m pip install tox 

pytest-sugar() {

    # pytest-sugar
    echo "~~~ pytest-sugar $(date) $(pwd)"
    # git clone https://github/Teemu/pytest-sugar.git
    git clone https://github.com/Teemu/pytest-sugar.git
    pushd pytest-sugar

    rm -rf .venv
    python3 -m venv .venv
    source .venv/bin/activate
    echo ".venv" >> .git/info/exclude
    pip install -e ".[dev]"
    pip install pre-commit
    pre-commit install
    deactivate
    popd
}

pytest-cov() {
    
    echo "~~~ pytest-cov $(date) $(pwd)"
    git clone https://github.com/pytest-dev/pytest-cov
    pushd pytest-cov
    python3 -m venv .venv
    source .venv/bin/activate
    echo ".venv" >> .git/info/exclude
    pip install -e ".[dev]"

    # pre-commit install # not found  may not matter
    tox
    popd 
    echo "~~~ ??? $(date) $(pwd)"
}
###### picked
# Not actively maintained as of 2023-03 -- could be a good entry. Perhaps tests fail too.
pytest-picked() {
        
    echo "~~~ pytest-picked $(date) $(pwd)"
    git clone https://github.com/anapaulagomes/pytest-picked.git
    pushd pytest-picked

    rm -rf .venv
    rm -rf ~/.virtualenvs/pytest-pickeddev
    python3 -m venv ~/.virtualenvs/pytest-pickeddev
    source ~/.virtualenvs/pytest-pickeddev/bin/activate
    pip install -e ".[dev]"
    pip install pre-commit
    pip install tox 
    pre-commit install

    tox 
    deactivate
    popd

}

pytest-instafail() {
        
    echo "~~~ pytest-instafail $(date) $(pwd)"
    git clone https://github.com/pytest-dev/pytest-instafail.git
    pushd pytest-instafail

    rm -rf ~/.virtualenvs/pytest-instafaildev
    python3 -m venv ~/.virtualenvs/pytest-instafaildev
    source ~/.virtualenvs/pytest-instafaildev/bin/activate
    pip install -e ".[dev]"
    pip install tox 

    tox 
    deactivate
    popd

}


# pytest-picked
pytest-instafail


# instafail
# tldr
# xdist
# django
# django-test-plus literal
# mock 
# asyncio
# randomly
# clarity
# bdd


# See also https://towardsdatascience.com/pytest-plugins-to-love-%EF%B8%8F-9c71635fbe22
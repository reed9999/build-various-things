I don't think this is very different from the reams of output from pytest that I have now. Key points for including it are: 

- It's Ubuntu
- It comes at a time when my Ubuntu pytest builds were failing.
- It documents that once I get them straightened out, we still see the same old 3 test failures.

Scanning processor microcode...
Scanning linux images...

Running kernel seems to be up-to-date.

The processor microcode seems to be up-to-date.

No services need to be restarted.

No containers need to be restarted.

No user sessions are running outdated binaries.

No VM guests are running outdated hypervisor (qemu) binaries on this host.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
python3-setuptools is already the newest version (66.1.1-1).
0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.
~ ~/scripts/ubuntu
Cloning into 'django'...
remote: Enumerating objects: 9114, done.
remote: Counting objects: 100% (9114/9114), done.
remote: Compressing objects: 100% (6284/6284), done.
remote: Total 9114 (delta 2195), reused 5507 (delta 1465), pack-reused 0
Receiving objects: 100% (9114/9114), 11.05 MiB | 11.47 MiB/s, done.
Resolving deltas: 100% (2195/2195), done.
Cloning into 'qutebrowser'...
remote: Enumerating objects: 169931, done.
remote: Counting objects: 100% (660/660), done.
remote: Compressing objects: 100% (282/282), done.
remote: Total 169931 (delta 395), reused 603 (delta 377), pack-reused 169271
Receiving objects: 100% (169931/169931), 62.44 MiB | 28.23 MiB/s, done.
Resolving deltas: 100% (137348/137348), done.
~/scripts/ubuntu
ubuntu@ip-172-31-12-23:~/scripts/ubuntu$ cp ./python-various/setup.sh  ../output/ubuntu-setup-script-issues-resolved.txt
ubuntu@ip-172-31-12-23:~/scripts/ubuntu$ vim  ../output/ubuntu-setup-script-issues-resolved.txt
ubuntu@ip-172-31-12-23:~/scripts/ubuntu$ pushd ../output/
~/scripts/output ~/scripts/ubuntu
ubuntu@ip-172-31-12-23:~/scripts/output$ mv ubuntu-setup-script-issues-resolved.txt ubuntu-setup-script-issues-resolved.md
ubuntu@ip-172-31-12-23:~/scripts/output$ ^C
ubuntu@ip-172-31-12-23:~/scripts/output$ popd
~/scripts/ubuntu
ubuntu@ip-172-31-12-23:~/scripts/ubuntu$ vim python-various/setup.sh
ubuntu@ip-172-31-12-23:~/scripts/ubuntu$ vim python-various/pytest-build.sh

/bin/bash: line 1: python: command not found

shell returned 127

Press ENTER or type command to continue
Python 3.11.2

Press ENTER or type command to continue
ubuntu@ip-172-31-12-23:~/scripts/ubuntu$ python-various/pytest-build.sh
##### PYTEST
pytest-build start time Sat Apr 29 16:41:29 UTC 2023
~ ~/scripts/ubuntu
Cloning into 'pytest'...
remote: Enumerating objects: 96535, done.
remote: Counting objects: 100% (226/226), done.
remote: Compressing objects: 100% (129/129), done.
remote: Total 96535 (delta 96), reused 181 (delta 84), pack-reused 96309
Receiving objects: 100% (96535/96535), 31.01 MiB | 24.33 MiB/s, done.
Resolving deltas: 100% (67995/67995), done.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  python3-pip-whl python3-setuptools-whl
The following NEW packages will be installed:
  python3-pip-whl python3-setuptools-whl python3.11-venv
0 upgraded, 3 newly installed, 0 to remove and 5 not upgraded.
Need to get 2683 kB of archives.
After this operation, 3164 kB of additional disk space will be used.
Do you want to continue? [Y/n] no
Abort.
The virtual environment was not created successfully because ensurepip is not
available.  On Debian/Ubuntu systems, you need to install the python3-venv
package using the following command.

    apt install python3.11-venv

You may need to use sudo with that command.  After installing the python3-venv
package, recreate your virtual environment.

Failing command: /home/ubuntu/.virtualenvs/pytestdev/bin/python3

python-various/pytest-build.sh: line 10: /home/ubuntu/.virtualenvs/pytestdev/bin/activate: No such file or directory
error: externally-managed-environment

× This environment is externally managed
╰─> To install Python packages system-wide, try apt install
    python3-xyz, where xyz is the package you are trying to
    install.

    If you wish to install a non-Debian-packaged Python package,
    create a virtual environment using python3 -m venv path/to/venv.
    Then use path/to/venv/bin/python and path/to/venv/bin/pip. Make
    sure you have python3-full installed.

    If you wish to install a non-Debian packaged Python application,
    it may be easiest to use pipx install xyz, which will manage a
    virtual environment for you. Make sure you have pipx installed.

    See /usr/share/doc/python3.11/README.venv for more information.

note: If you believe this is a mistake, please contact your Python installation or OS distribution provider. You can override this, at the risk of breaking your Python installation or OS, by passing --break-system-packages.
hint: See PEP 668 for the detailed specification.
-- next: setup.py build
/usr/lib/python3/dist-packages/setuptools/config/setupcfg.py:515: SetuptoolsDeprecationWarning: The license_file parameter is deprecated, use license_files instead.
  warnings.warn(msg, warning_class)
/usr/lib/python3/dist-packages/setuptools/installer.py:27: SetuptoolsDeprecationWarning: setuptools.installer is deprecated. Requirements should be satisfied by a PEP 517 installer.
  warnings.warn(
/usr/lib/python3/dist-packages/setuptools/config/setupcfg.py:515: SetuptoolsDeprecationWarning: The license_file parameter is deprecated, use license_files instead.
  warnings.warn(msg, warning_class)
running build
running build_py
creating build
creating build/lib
copying src/py.py -> build/lib
creating build/lib/_pytest
copying src/_pytest/legacypath.py -> build/lib/_pytest
copying src/_pytest/stash.py -> build/lib/_pytest
copying src/_pytest/compat.py -> build/lib/_pytest
copying src/_pytest/pastebin.py -> build/lib/_pytest
copying src/_pytest/tmpdir.py -> build/lib/_pytest
copying src/_pytest/unittest.py -> build/lib/_pytest
copying src/_pytest/fixtures.py -> build/lib/_pytest
copying src/_pytest/hookspec.py -> build/lib/_pytest
copying src/_pytest/junitxml.py -> build/lib/_pytest
copying src/_pytest/debugging.py -> build/lib/_pytest
copying src/_pytest/faulthandler.py -> build/lib/_pytest
copying src/_pytest/scope.py -> build/lib/_pytest
copying src/_pytest/logging.py -> build/lib/_pytest
copying src/_pytest/_version.py -> build/lib/_pytest
copying src/_pytest/outcomes.py -> build/lib/_pytest
copying src/_pytest/threadexception.py -> build/lib/_pytest
copying src/_pytest/doctest.py -> build/lib/_pytest
copying src/_pytest/pytester_assertions.py -> build/lib/_pytest
copying src/_pytest/recwarn.py -> build/lib/_pytest
copying src/_pytest/unraisableexception.py -> build/lib/_pytest
copying src/_pytest/main.py -> build/lib/_pytest
copying src/_pytest/pathlib.py -> build/lib/_pytest
copying src/_pytest/warnings.py -> build/lib/_pytest
copying src/_pytest/cacheprovider.py -> build/lib/_pytest
copying src/_pytest/stepwise.py -> build/lib/_pytest
copying src/_pytest/__init__.py -> build/lib/_pytest
copying src/_pytest/python_api.py -> build/lib/_pytest
copying src/_pytest/_argcomplete.py -> build/lib/_pytest
copying src/_pytest/helpconfig.py -> build/lib/_pytest
copying src/_pytest/capture.py -> build/lib/_pytest
copying src/_pytest/pytester.py -> build/lib/_pytest
copying src/_pytest/python.py -> build/lib/_pytest
copying src/_pytest/monkeypatch.py -> build/lib/_pytest
copying src/_pytest/python_path.py -> build/lib/_pytest
copying src/_pytest/setupplan.py -> build/lib/_pytest
copying src/_pytest/reports.py -> build/lib/_pytest
copying src/_pytest/runner.py -> build/lib/_pytest
copying src/_pytest/deprecated.py -> build/lib/_pytest
copying src/_pytest/timing.py -> build/lib/_pytest
copying src/_pytest/warning_types.py -> build/lib/_pytest
copying src/_pytest/skipping.py -> build/lib/_pytest
copying src/_pytest/setuponly.py -> build/lib/_pytest
copying src/_pytest/nose.py -> build/lib/_pytest
copying src/_pytest/nodes.py -> build/lib/_pytest
copying src/_pytest/freeze_support.py -> build/lib/_pytest
copying src/_pytest/terminal.py -> build/lib/_pytest
creating build/lib/_pytest/_code
copying src/_pytest/_code/source.py -> build/lib/_pytest/_code
copying src/_pytest/_code/__init__.py -> build/lib/_pytest/_code
copying src/_pytest/_code/code.py -> build/lib/_pytest/_code
creating build/lib/_pytest/_io
copying src/_pytest/_io/terminalwriter.py -> build/lib/_pytest/_io
copying src/_pytest/_io/saferepr.py -> build/lib/_pytest/_io
copying src/_pytest/_io/__init__.py -> build/lib/_pytest/_io
copying src/_pytest/_io/wcwidth.py -> build/lib/_pytest/_io
creating build/lib/_pytest/_py
copying src/_pytest/_py/error.py -> build/lib/_pytest/_py
copying src/_pytest/_py/__init__.py -> build/lib/_pytest/_py
copying src/_pytest/_py/path.py -> build/lib/_pytest/_py
creating build/lib/_pytest/assertion
copying src/_pytest/assertion/rewrite.py -> build/lib/_pytest/assertion
copying src/_pytest/assertion/truncate.py -> build/lib/_pytest/assertion
copying src/_pytest/assertion/__init__.py -> build/lib/_pytest/assertion
copying src/_pytest/assertion/util.py -> build/lib/_pytest/assertion
creating build/lib/_pytest/config
copying src/_pytest/config/compat.py -> build/lib/_pytest/config
copying src/_pytest/config/findpaths.py -> build/lib/_pytest/config
copying src/_pytest/config/exceptions.py -> build/lib/_pytest/config
copying src/_pytest/config/__init__.py -> build/lib/_pytest/config
copying src/_pytest/config/argparsing.py -> build/lib/_pytest/config
creating build/lib/_pytest/mark
copying src/_pytest/mark/expression.py -> build/lib/_pytest/mark
copying src/_pytest/mark/structures.py -> build/lib/_pytest/mark
copying src/_pytest/mark/__init__.py -> build/lib/_pytest/mark
creating build/lib/pytest
copying src/pytest/__main__.py -> build/lib/pytest
copying src/pytest/__init__.py -> build/lib/pytest
copying src/_pytest/py.typed -> build/lib/_pytest
copying src/pytest/py.typed -> build/lib/pytest

error: externally-managed-environment

× This environment is externally managed
╰─> To install Python packages system-wide, try apt install
    python3-xyz, where xyz is the package you are trying to
    install.

    If you wish to install a non-Debian-packaged Python package,
    create a virtual environment using python3 -m venv path/to/venv.
    Then use path/to/venv/bin/python and path/to/venv/bin/pip. Make
    sure you have python3-full installed.

    If you wish to install a non-Debian packaged Python application,
    it may be easiest to use pipx install xyz, which will manage a
    virtual environment for you. Make sure you have pipx installed.

    See /usr/share/doc/python3.11/README.venv for more information.

note: If you believe this is a mistake, please contact your Python installation or OS distribution provider. You can override this, at the risk of breaking your Python installation or OS, by passing --break-system-packages.
hint: See PEP 668 for the detailed specification.
call tox start time Sat Apr 29 16:41:52 UTC 2023 /home/ubuntu/pytest
python-various/pytest-build.sh: line 23: tox: command not found
call tox end time Sat Apr 29 16:41:52 UTC 2023 /home/ubuntu/pytest
-- next: attempt install of our new libraries
/usr/lib/python3/dist-packages/setuptools/config/setupcfg.py:515: SetuptoolsDeprecationWarning: The license_file parameter is deprecated, use license_files instead.
  warnings.warn(msg, warning_class)
/usr/lib/python3/dist-packages/setuptools/installer.py:27: SetuptoolsDeprecationWarning: setuptools.installer is deprecated. Requirements should be satisfied by a PEP 517 installer.
  warnings.warn(
/usr/lib/python3/dist-packages/setuptools/config/setupcfg.py:515: SetuptoolsDeprecationWarning: The license_file parameter is deprecated, use license_files instead.
  warnings.warn(msg, warning_class)
running install
/usr/lib/python3/dist-packages/setuptools/command/install.py:34: SetuptoolsDeprecationWarning: setup.py install is deprecated. Use build and pip and other standards-based tools.
  warnings.warn(
/usr/lib/python3/dist-packages/setuptools/command/easy_install.py:146: EasyInstallDeprecationWarning: easy_install command is deprecated. Use build and pip and other standards-based tools.
  warnings.warn(
error: can't create or remove files in install directory

The following error occurred while trying to add or remove files in the
installation directory:

    [Errno 13] Permission denied: '/usr/local/lib/python3.11/dist-packages/test-easy-install-4162.write-test'

The installation directory you specified (via --install-dir, --prefix, or
the distutils default setting) was:

    /usr/local/lib/python3.11/dist-packages/

Perhaps your account does not have write access to this directory?  If the
installation directory is a system-owned directory, you may need to sign in
as the administrator or "root" account.  If you do not have administrative
access to this machine, you may wish to choose a different installation
directory, preferably one that is listed in your PYTHONPATH environment
variable.

For information on other options, you may wish to consult the
documentation at:

  https://setuptools.pypa.io/en/latest/deprecated/easy_install.html

Please make the appropriate changes for your system and try again.

~/scripts/ubuntu
python-various/pytest-build.sh: line 47:
/usr/lib/python3.9/site-packages/setuptools/installer.py:27: SetuptoolsDeprecationWarning: setuptools.installer is deprecated. Requirements should be satisfied by a PEP 517 installer.
  warnings.warn(
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
usage: setup.py [global_opts] cmd1 [cmd1_opts] [cmd2 [cmd2_opts] ...]
   or: setup.py --help [cmd1 cmd2 ...]
   or: setup.py --help-commands
   or: setup.py cmd --help

: No such file or directory
ubuntu@ip-172-31-12-23:~/scripts/ubuntu$ vim python-various/pytest-build.sh
ubuntu@ip-172-31-12-23:~/scripts/ubuntu$ python-various/pytest-build.sh
##### PYTEST
pytest-build start time Sat Apr 29 16:42:31 UTC 2023
~ ~/scripts/ubuntu
fatal: destination path 'pytest' already exists and is not an empty directory.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
The following additional packages will be installed:
  python3-pip-whl python3-setuptools-whl
The following NEW packages will be installed:
  python3-pip-whl python3-setuptools-whl python3.11-venv
0 upgraded, 3 newly installed, 0 to remove and 5 not upgraded.
Need to get 2683 kB of archives.
After this operation, 3164 kB of additional disk space will be used.
Get:1 http://us-east-2.ec2.archive.ubuntu.com/ubuntu lunar/universe amd64 python3-pip-whl all 23.0.1+dfsg-1 [1647 kB]
Get:2 http://us-east-2.ec2.archive.ubuntu.com/ubuntu lunar/universe amd64 python3-setuptools-whl all 66.1.1-1 [1031 kB]
Get:3 http://us-east-2.ec2.archive.ubuntu.com/ubuntu lunar/universe amd64 python3.11-venv amd64 3.11.2-6 [5746 B]
Fetched 2683 kB in 0s (6178 kB/s)
Selecting previously unselected package python3-pip-whl.
(Reading database ... 72692 files and directories currently installed.)
Preparing to unpack .../python3-pip-whl_23.0.1+dfsg-1_all.deb ...
Unpacking python3-pip-whl (23.0.1+dfsg-1) ...
Selecting previously unselected package python3-setuptools-whl.
Preparing to unpack .../python3-setuptools-whl_66.1.1-1_all.deb ...
Unpacking python3-setuptools-whl (66.1.1-1) ...
Selecting previously unselected package python3.11-venv.
Preparing to unpack .../python3.11-venv_3.11.2-6_amd64.deb ...
Unpacking python3.11-venv (3.11.2-6) ...
Setting up python3-setuptools-whl (66.1.1-1) ...
Setting up python3-pip-whl (23.0.1+dfsg-1) ...
Setting up python3.11-venv (3.11.2-6) ...
Scanning processes...
Scanning processor microcode...
Scanning linux images...

Running kernel seems to be up-to-date.

The processor microcode seems to be up-to-date.

No services need to be restarted.

No containers need to be restarted.

No user sessions are running outdated binaries.

No VM guests are running outdated hypervisor (qemu) binaries on this host.
Obtaining file:///home/ubuntu/pytest
  Installing build dependencies ... done
  Checking if build backend supports build_editable ... done
  Getting requirements to build editable ... done
  Installing backend dependencies ... done
  Preparing editable metadata (pyproject.toml) ... done
Collecting iniconfig
  Downloading iniconfig-2.0.0-py3-none-any.whl (5.9 kB)
Collecting packaging
  Using cached packaging-23.1-py3-none-any.whl (48 kB)
Collecting pluggy<2.0,>=0.12
  Downloading pluggy-1.0.0-py2.py3-none-any.whl (13 kB)
Building wheels for collected packages: pytest
  Building editable for pytest (pyproject.toml) ... done
  Created wheel for pytest: filename=pytest-7.4.0.dev41+g762bb6156-0.editable-py3-none-any.whl size=5220 sha256=856e665d22be63b3782adc18527e4f533389c411665accd4f0217e46c62c94cf
  Stored in directory: /tmp/pip-ephem-wheel-cache-sbq2ja6h/wheels/96/e5/98/15d920b9074ee0e610eec9a42bea3dfaf88ccd205cc3a3355b
Successfully built pytest
Installing collected packages: pluggy, packaging, iniconfig, pytest
Successfully installed iniconfig-2.0.0 packaging-23.1 pluggy-1.0.0 pytest-7.4.0.dev41+g762bb6156
-- next: setup.py build
/home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/setuptools/config/setupcfg.py:515: SetuptoolsDeprecationWarning: The license_file parameter is deprecated, use license_files instead.
  warnings.warn(msg, warning_class)
/home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/setuptools/installer.py:27: SetuptoolsDeprecationWarning: setuptools.installer is deprecated. Requirements should be satisfied by a PEP 517 installer.
  warnings.warn(
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
/home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/setuptools/config/setupcfg.py:515: SetuptoolsDeprecationWarning: The license_file parameter is deprecated, use license_files instead.
  warnings.warn(msg, warning_class)
running build
running build_py
copying src/_pytest/_version.py -> build/lib/_pytest

Collecting tox
  Downloading tox-4.5.1-py3-none-any.whl (148 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 149.0/149.0 kB 9.1 MB/s eta 0:00:00
Collecting cachetools>=5.3
  Downloading cachetools-5.3.0-py3-none-any.whl (9.3 kB)
Collecting chardet>=5.1
  Downloading chardet-5.1.0-py3-none-any.whl (199 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 199.1/199.1 kB 35.8 MB/s eta 0:00:00
Collecting colorama>=0.4.6
  Downloading colorama-0.4.6-py2.py3-none-any.whl (25 kB)
Collecting filelock>=3.11
  Downloading filelock-3.12.0-py3-none-any.whl (10 kB)
Requirement already satisfied: packaging>=23.1 in /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages (from tox) (23.1)
Collecting platformdirs>=3.2
  Downloading platformdirs-3.5.0-py3-none-any.whl (15 kB)
Requirement already satisfied: pluggy>=1 in /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages (from tox) (1.0.0)
Collecting pyproject-api>=1.5.1
  Downloading pyproject_api-1.5.1-py3-none-any.whl (12 kB)
Collecting virtualenv>=20.21
  Downloading virtualenv-20.23.0-py3-none-any.whl (3.3 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 3.3/3.3 MB 23.1 MB/s eta 0:00:00
Collecting distlib<1,>=0.3.6
  Downloading distlib-0.3.6-py2.py3-none-any.whl (468 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 468.5/468.5 kB 71.9 MB/s eta 0:00:00
Installing collected packages: distlib, pyproject-api, platformdirs, filelock, colorama, chardet, cachetools, virtualenv, tox
Successfully installed cachetools-5.3.0 chardet-5.1.0 colorama-0.4.6 distlib-0.3.6 filelock-3.12.0 platformdirs-3.5.0 pyproject-api-1.5.1 tox-4.5.1 virtualenv-20.23.0
call tox start time Sat Apr 29 16:42:43 UTC 2023 /home/ubuntu/pytest
linting: install_deps> python -I -m pip install 'pre-commit>=2.9.3'
linting: commands[0]> pre-commit run --all-files --show-diff-on-failure
[INFO] Initializing environment for https://github.com/psf/black.
[INFO] Initializing environment for https://github.com/asottile/blacken-docs.
[INFO] Initializing environment for https://github.com/asottile/blacken-docs:black==23.1.0.
[INFO] Initializing environment for https://github.com/pre-commit/pre-commit-hooks.
[INFO] Initializing environment for https://github.com/PyCQA/autoflake.
[INFO] Initializing environment for https://github.com/PyCQA/flake8.
[INFO] Initializing environment for https://github.com/PyCQA/flake8:flake8-typing-imports==1.12.0,flake8-docstrings==1.5.0.
[INFO] Initializing environment for https://github.com/asottile/reorder_python_imports.
[INFO] Initializing environment for https://github.com/asottile/pyupgrade.
[INFO] Initializing environment for https://github.com/asottile/setup-cfg-fmt.
[INFO] Initializing environment for https://github.com/pre-commit/pygrep-hooks.
[INFO] Initializing environment for https://github.com/pre-commit/mirrors-mypy.
[INFO] Initializing environment for https://github.com/pre-commit/mirrors-mypy:iniconfig>=1.1.0,attrs>=19.2.0,packaging,tomli,types-pkg_resources,exceptiongroup>=1.0.0rc8.
[INFO] Initializing environment for local:pygments,restructuredtext_lint.
[INFO] Installing environment for https://github.com/psf/black.
[INFO] Once installed this environment will be reused.
[INFO] This may take a few minutes...
An unexpected error has occurred: CalledProcessError: command: ('/home/ubuntu/pytest/.tox/linting/bin/python', '-mvirtualenv', '/home/ubuntu/.cache/pre-commit/reposcez28s2/py_env-3.10', '-p', '3.10')
return code: 1
stdout:
    RuntimeError: failed to find interpreter for Builtin discover of python_spec='3.10'
stderr: (none)
Check the log at /home/ubuntu/.cache/pre-commit/pre-commit.log
linting: exit 3 (4.53 seconds) /home/ubuntu/pytest> pre-commit run --all-files --show-diff-on-failure pid=4494
linting: FAIL ✖ in 6.96 seconds
py37: skipped because could not find python interpreter with spec(s): py37
py37: SKIP ⚠ in 0.01 seconds
py38: skipped because could not find python interpreter with spec(s): py38
py38: SKIP ⚠ in 0 seconds
py39: skipped because could not find python interpreter with spec(s): py39
py39: SKIP ⚠ in 0 seconds
py310: skipped because could not find python interpreter with spec(s): py310
py310: SKIP ⚠ in 0 seconds
.pkg: install_requires> python -I -m pip install 'setuptools-scm[toml]>=6.2.3' 'setuptools>=45.0'
.pkg: _optional_hooks> python /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/pyproject_api/_backend.py True setuptools.build_meta
.pkg: get_requires_for_build_editable> python /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/pyproject_api/_backend.py True setuptools.build_meta
.pkg: install_requires_for_build_editable> python -I -m pip install setuptools 'setuptools-scm>=6.0' wheel
.pkg: get_requires_for_build_sdist> python /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/pyproject_api/_backend.py True setuptools.build_meta
.pkg: install_requires_for_build_sdist> python -I -m pip install setuptools 'setuptools-scm>=6.0'
.pkg: build_wheel> python /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/pyproject_api/_backend.py True setuptools.build_meta
.pkg: build_sdist> python /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/pyproject_api/_backend.py True setuptools.build_meta
py311: install_package_deps> python -I -m pip install argcomplete 'attrs>=19.2.0' 'colorama; sys_platform == "win32"' 'exceptiongroup>=1.0.0rc8; python_version < "3.11"' 'hypothesis>=3.56' 'importlib-metadata>=0.12; python_version < "3.8"' iniconfig mock nose packaging 'pluggy<2.0,>=0.12' 'pygments>=2.7.2' requests 'tomli>=1.0.0; python_version < "3.11"' xmlschema
^CROOT: [4459] KeyboardInterrupt - teardown started
ROOT: interrupt tox environment: py311
ROOT: requested interrupt of 5106 from 4459, activate in 0.00
ROOT: send signal SIGINT(2) to 5106 from 4459 with timeout 0.30
Ignoring colorama: markers 'sys_platform == "win32"' don't match your environment
Ignoring exceptiongroup: markers 'python_version < "3.11"' don't match your environment
Ignoring importlib-metadata: markers 'python_version < "3.8"' don't match your environment
Ignoring tomli: markers 'python_version < "3.11"' don't match your environment
Collecting argcomplete
  Downloading argcomplete-3.0.8-py3-none-any.whl (40 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 40.0/40.0 kB 3.3 MB/s eta 0:00:00
Collecting attrs>=19.2.0
  Downloading attrs-23.1.0-py3-none-any.whl (61 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 61.2/61.2 kB 10.7 MB/s eta 0:00:00
Collecting hypothesis>=3.56
  Downloading hypothesis-6.74.1-py3-none-any.whl (409 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 409.3/409.3 kB 49.9 MB/s eta 0:00:00
Collecting iniconfig
  Using cached iniconfig-2.0.0-py3-none-any.whl (5.9 kB)
Collecting mock
  Downloading mock-5.0.2-py3-none-any.whl (30 kB)
Collecting nose
  Downloading nose-1.3.7-py3-none-any.whl (154 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 154.7/154.7 kB 37.1 MB/s eta 0:00:00
Collecting packaging
  Using cached packaging-23.1-py3-none-any.whl (48 kB)
Collecting pluggy<2.0,>=0.12
  Using cached pluggy-1.0.0-py2.py3-none-any.whl (13 kB)
Collecting pygments>=2.7.2
  Downloading Pygments-2.15.1-py3-none-any.whl (1.1 MB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 1.1/1.1 MB 9.6 MB/s eta 0:00:00
Collecting requests
  Downloading requests-2.29.0-py3-none-any.whl (62 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 62.5/62.5 kB 18.0 MB/s eta 0:00:00
Collecting xmlschema
  Downloading xmlschema-2.2.3-py3-none-any.whl (355 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 355.5/355.5 kB 3.9 MB/s eta 0:00:00
Collecting sortedcontainers<3.0.0,>=2.1.0 (from hypothesis>=3.56)
  Downloading sortedcontainers-2.4.0-py2.py3-none-any.whl (29 kB)
Collecting charset-normalizer<4,>=2 (from requests)
  Downloading charset_normalizer-3.1.0-cp311-cp311-manylinux_2_17_x86_64.manylinux2014_x86_64.whl (197 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 197.3/197.3 kB 42.4 MB/s eta 0:00:00
Collecting idna<4,>=2.5 (from requests)
  Downloading idna-3.4-py3-none-any.whl (61 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 61.5/61.5 kB 15.4 MB/s eta 0:00:00
Collecting urllib3<1.27,>=1.21.1 (from requests)
  Downloading urllib3-1.26.15-py2.py3-none-any.whl (140 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 140.9/140.9 kB 36.8 MB/s eta 0:00:00
Collecting certifi>=2017.4.17 (from requests)
  Downloading certifi-2022.12.7-py3-none-any.whl (155 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 155.3/155.3 kB 38.0 MB/s eta 0:00:00
Collecting elementpath<5.0.0,>=4.0.0 (from xmlschema)
  Downloading elementpath-4.1.1-py3-none-any.whl (216 kB)
     ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 216.3/216.3 kB 48.4 MB/s eta 0:00:00
Installing collected packages: sortedcontainers, nose, urllib3, pygments, pluggy, packaging, mock, iniconfig, idna, elementpath, charset-normalizer, certifi, attrs, argcomplete, xmlschema, requests, hypothesis
ERROR: Operation cancelled by user
Traceback (most recent call last):
  File "<frozen runpy>", line 198, in _run_module_as_main
  File "<frozen runpy>", line 88, in _run_code
  File "/home/ubuntu/pytest/.tox/py311/lib/python3.11/site-packages/pip/__main__.py", line 31, in <module>
    sys.exit(_main())
             ^^^^^^^
  File "/home/ubuntu/pytest/.tox/py311/lib/python3.11/site-packages/pip/_internal/cli/main.py", line 79, in main
    return command.main(cmd_args)
           ^^^^^^^^^^^^^^^^^^^^^^
  File "/home/ubuntu/pytest/.tox/py311/lib/python3.11/site-packages/pip/_internal/cli/base_command.py", line 100, in main
    with self.main_context():
  File "/usr/lib/python3.11/contextlib.py", line 144, in __exit__
    next(self.gen)
  File "/home/ubuntu/pytest/.tox/py311/lib/python3.11/site-packages/pip/_internal/cli/command_context.py", line 19, in main_context
    with self._main_context:
  File "/usr/lib/python3.11/contextlib.py", line 589, in __exit__
    raise exc_details[1]
  File "/usr/lib/python3.11/contextlib.py", line 574, in __exit__
    if cb(*exc_details):
       ^^^^^^^^^^^^^^^^
  File "/home/ubuntu/pytest/.tox/py311/lib/python3.11/site-packages/pip/_vendor/requests/sessions.py", line 455, in __exit__
    self.close()
  File "/home/ubuntu/pytest/.tox/py311/lib/python3.11/site-packages/pip/_vendor/requests/sessions.py", line 797, in close
    v.close()
  File "/home/ubuntu/pytest/.tox/py311/lib/python3.11/site-packages/pip/_vendor/cachecontrol/adapter.py", line 137, in close
    super(CacheControlAdapter, self).close()
  File "/home/ubuntu/pytest/.tox/py311/lib/python3.11/site-packages/pip/_vendor/requests/adapters.py", line 368, in close
    self.poolmanager.clear()
  File "/home/ubuntu/pytest/.tox/py311/lib/python3.11/site-packages/pip/_vendor/urllib3/poolmanager.py", line 223, in clear
    self.pools.clear()
  File "/home/ubuntu/pytest/.tox/py311/lib/python3.11/site-packages/pip/_vendor/urllib3/_collections.py", line 100, in clear
    self.dispose_func(value)
  File "/home/ubuntu/pytest/.tox/py311/lib/python3.11/site-packages/pip/_vendor/urllib3/poolmanager.py", line 174, in <lambda>
    self.pools = RecentlyUsedContainer(num_pools, dispose_func=lambda p: p.close())
                                                                         ^^^^^^^^^
  File "/home/ubuntu/pytest/.tox/py311/lib/python3.11/site-packages/pip/_vendor/urllib3/connectionpool.py", line 493, in close
    while True:
KeyboardInterrupt
py311: exit -2 (3.42 seconds) /home/ubuntu/pytest> python -I -m pip install argcomplete 'attrs>=19.2.0' 'colorama; sys_platform == "win32"' 'exceptiongroup>=1.0.0rc8; python_version < "3.11"' 'hypothesis>=3.56' 'importlib-metadata>=0.12; python_version < "3.8"' iniconfig mock nose packaging 'pluggy<2.0,>=0.12' 'pygments>=2.7.2' requests 'tomli>=1.0.0; python_version < "3.11"' xmlschema pid=5106
ROOT: interrupt finished with success
.pkg: interrupt tox environment: .pkg
  linting: FAIL code 3 (6.96=setup[2.42]+cmd[4.53] seconds)
  py37: SKIP (0.01 seconds)
  py38: SKIP (0.00 seconds)
  py39: SKIP (0.00 seconds)
  py310: SKIP (0.00 seconds)
  py311: FAIL code -2 (7.39 seconds)
  py312: FAIL code -3 (0.01 seconds)
  pypy3: FAIL code -3 (0.01 seconds)
  py37-pexpect: FAIL code -3 (0.01 seconds)
  py37-xdist: FAIL code -3 (0.01 seconds)
  py37-unittestextras: FAIL code -3 (0.01 seconds)
  py37-numpy: FAIL code -3 (0.01 seconds)
  py37-pluggymain: FAIL code -3 (0.01 seconds)
  py37-pylib: FAIL code -3 (0.01 seconds)
  doctesting: FAIL code -3 (0.01 seconds)
  plugins: FAIL code -3 (0.01 seconds)
  py37-freeze: FAIL code -3 (0.01 seconds)
  docs: FAIL code -3 (0.01 seconds)
  docs-checklinks: FAIL code -3 (0.01 seconds)
  py311-exceptiongroup: FAIL code -3 (0.01 seconds)
  evaluation failed :( (14.51 seconds)
call tox end time Sat Apr 29 16:42:58 UTC 2023 /home/ubuntu/pytest
-- next: attempt install of our new libraries
/home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/setuptools/config/setupcfg.py:515: SetuptoolsDeprecationWarning: The license_file parameter is deprecated, use license_files instead.
  warnings.warn(msg, warning_class)
/home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/setuptools/installer.py:27: SetuptoolsDeprecationWarning: setuptools.installer is deprecated. Requirements should be satisfied by a PEP 517 installer.
  warnings.warn(
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
/home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/setuptools/config/setupcfg.py:515: SetuptoolsDeprecationWarning: The license_file parameter is deprecated, use license_files instead.
  warnings.warn(msg, warning_class)
running install
/home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/setuptools/command/install.py:34: SetuptoolsDeprecationWarning: setup.py install is deprecated. Use build and pip and other standards-based tools.
  warnings.warn(
/home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/setuptools/command/easy_install.py:146: EasyInstallDeprecationWarning: easy_install command is deprecated. Use build and pip and other standards-based tools.
  warnings.warn(
running bdist_egg
running egg_info
writing src/pytest.egg-info/PKG-INFO
writing dependency_links to src/pytest.egg-info/dependency_links.txt
writing entry points to src/pytest.egg-info/entry_points.txt
writing requirements to src/pytest.egg-info/requires.txt
writing top-level names to src/pytest.egg-info/top_level.txt
adding license file 'LICENSE'
writing manifest file 'src/pytest.egg-info/SOURCES.txt'
installing library code to build/bdist.linux-x86_64/egg
running install_lib
running build_py
copying src/_pytest/_version.py -> build/lib/_pytest
creating build/bdist.linux-x86_64/egg
creating build/bdist.linux-x86_64/egg/pytest
copying build/lib/pytest/__main__.py -> build/bdist.linux-x86_64/egg/pytest
copying build/lib/pytest/__init__.py -> build/bdist.linux-x86_64/egg/pytest
copying build/lib/pytest/py.typed -> build/bdist.linux-x86_64/egg/pytest
creating build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/legacypath.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/stash.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/compat.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/pastebin.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/tmpdir.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/unittest.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/fixtures.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/hookspec.py -> build/bdist.linux-x86_64/egg/_pytest
creating build/bdist.linux-x86_64/egg/_pytest/_code
copying build/lib/_pytest/_code/source.py -> build/bdist.linux-x86_64/egg/_pytest/_code
copying build/lib/_pytest/_code/__init__.py -> build/bdist.linux-x86_64/egg/_pytest/_code
copying build/lib/_pytest/_code/code.py -> build/bdist.linux-x86_64/egg/_pytest/_code
copying build/lib/_pytest/junitxml.py -> build/bdist.linux-x86_64/egg/_pytest
creating build/bdist.linux-x86_64/egg/_pytest/mark
copying build/lib/_pytest/mark/expression.py -> build/bdist.linux-x86_64/egg/_pytest/mark
copying build/lib/_pytest/mark/structures.py -> build/bdist.linux-x86_64/egg/_pytest/mark
copying build/lib/_pytest/mark/__init__.py -> build/bdist.linux-x86_64/egg/_pytest/mark
creating build/bdist.linux-x86_64/egg/_pytest/_py
copying build/lib/_pytest/_py/error.py -> build/bdist.linux-x86_64/egg/_pytest/_py
copying build/lib/_pytest/_py/__init__.py -> build/bdist.linux-x86_64/egg/_pytest/_py
copying build/lib/_pytest/_py/path.py -> build/bdist.linux-x86_64/egg/_pytest/_py
copying build/lib/_pytest/debugging.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/faulthandler.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/scope.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/logging.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/_version.py -> build/bdist.linux-x86_64/egg/_pytest
creating build/bdist.linux-x86_64/egg/_pytest/config
copying build/lib/_pytest/config/compat.py -> build/bdist.linux-x86_64/egg/_pytest/config
copying build/lib/_pytest/config/findpaths.py -> build/bdist.linux-x86_64/egg/_pytest/config
copying build/lib/_pytest/config/exceptions.py -> build/bdist.linux-x86_64/egg/_pytest/config
copying build/lib/_pytest/config/__init__.py -> build/bdist.linux-x86_64/egg/_pytest/config
copying build/lib/_pytest/config/argparsing.py -> build/bdist.linux-x86_64/egg/_pytest/config
copying build/lib/_pytest/outcomes.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/threadexception.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/doctest.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/pytester_assertions.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/recwarn.py -> build/bdist.linux-x86_64/egg/_pytest
creating build/bdist.linux-x86_64/egg/_pytest/assertion
copying build/lib/_pytest/assertion/rewrite.py -> build/bdist.linux-x86_64/egg/_pytest/assertion
copying build/lib/_pytest/assertion/truncate.py -> build/bdist.linux-x86_64/egg/_pytest/assertion
copying build/lib/_pytest/assertion/__init__.py -> build/bdist.linux-x86_64/egg/_pytest/assertion
copying build/lib/_pytest/assertion/util.py -> build/bdist.linux-x86_64/egg/_pytest/assertion
copying build/lib/_pytest/unraisableexception.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/main.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/pathlib.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/warnings.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/cacheprovider.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/stepwise.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/__init__.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/python_api.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/_argcomplete.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/helpconfig.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/capture.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/pytester.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/python.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/monkeypatch.py -> build/bdist.linux-x86_64/egg/_pytest
creating build/bdist.linux-x86_64/egg/_pytest/_io
copying build/lib/_pytest/_io/terminalwriter.py -> build/bdist.linux-x86_64/egg/_pytest/_io
copying build/lib/_pytest/_io/saferepr.py -> build/bdist.linux-x86_64/egg/_pytest/_io
copying build/lib/_pytest/_io/__init__.py -> build/bdist.linux-x86_64/egg/_pytest/_io
copying build/lib/_pytest/_io/wcwidth.py -> build/bdist.linux-x86_64/egg/_pytest/_io
copying build/lib/_pytest/python_path.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/setupplan.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/reports.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/runner.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/deprecated.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/timing.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/warning_types.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/skipping.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/setuponly.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/nose.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/nodes.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/freeze_support.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/py.typed -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/terminal.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/py.py -> build/bdist.linux-x86_64/egg
byte-compiling build/bdist.linux-x86_64/egg/pytest/__main__.py to __main__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/pytest/__init__.py to __init__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/legacypath.py to legacypath.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/stash.py to stash.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/compat.py to compat.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/pastebin.py to pastebin.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/tmpdir.py to tmpdir.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/unittest.py to unittest.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/fixtures.py to fixtures.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/hookspec.py to hookspec.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_code/source.py to source.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_code/__init__.py to __init__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_code/code.py to code.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/junitxml.py to junitxml.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/mark/expression.py to expression.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/mark/structures.py to structures.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/mark/__init__.py to __init__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_py/error.py to error.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_py/__init__.py to __init__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_py/path.py to path.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/debugging.py to debugging.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/faulthandler.py to faulthandler.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/scope.py to scope.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/logging.py to logging.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_version.py to _version.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/config/compat.py to compat.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/config/findpaths.py to findpaths.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/config/exceptions.py to exceptions.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/config/__init__.py to __init__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/config/argparsing.py to argparsing.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/outcomes.py to outcomes.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/threadexception.py to threadexception.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/doctest.py to doctest.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/pytester_assertions.py to pytester_assertions.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/recwarn.py to recwarn.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/assertion/rewrite.py to rewrite.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/assertion/truncate.py to truncate.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/assertion/__init__.py to __init__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/assertion/util.py to util.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/unraisableexception.py to unraisableexception.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/main.py to main.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/pathlib.py to pathlib.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/warnings.py to warnings.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/cacheprovider.py to cacheprovider.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/stepwise.py to stepwise.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/__init__.py to __init__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/python_api.py to python_api.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_argcomplete.py to _argcomplete.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/helpconfig.py to helpconfig.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/capture.py to capture.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/pytester.py to pytester.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/python.py to python.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/monkeypatch.py to monkeypatch.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_io/terminalwriter.py to terminalwriter.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_io/saferepr.py to saferepr.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_io/__init__.py to __init__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_io/wcwidth.py to wcwidth.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/python_path.py to python_path.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/setupplan.py to setupplan.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/reports.py to reports.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/runner.py to runner.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/deprecated.py to deprecated.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/timing.py to timing.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/warning_types.py to warning_types.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/skipping.py to skipping.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/setuponly.py to setuponly.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/nose.py to nose.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/nodes.py to nodes.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/freeze_support.py to freeze_support.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/terminal.py to terminal.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/py.py to py.cpython-311.pyc
creating build/bdist.linux-x86_64/egg/EGG-INFO
copying src/pytest.egg-info/PKG-INFO -> build/bdist.linux-x86_64/egg/EGG-INFO
copying src/pytest.egg-info/SOURCES.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
copying src/pytest.egg-info/dependency_links.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
copying src/pytest.egg-info/entry_points.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
copying src/pytest.egg-info/not-zip-safe -> build/bdist.linux-x86_64/egg/EGG-INFO
copying src/pytest.egg-info/requires.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
copying src/pytest.egg-info/top_level.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
creating dist
creating 'dist/pytest-7.4.0.dev41+g762bb6156-py3.11.egg' and adding 'build/bdist.linux-x86_64/egg' to it
removing 'build/bdist.linux-x86_64/egg' (and everything under it)
Processing pytest-7.4.0.dev41+g762bb6156-py3.11.egg
creating /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/pytest-7.4.0.dev41+g762bb6156-py3.11.egg
Extracting pytest-7.4.0.dev41+g762bb6156-py3.11.egg to /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages
Adding pytest 7.4.0.dev41+g762bb6156 to easy-install.pth file
Installing py.test script to /home/ubuntu/.virtualenvs/pytestdev/bin
Installing pytest script to /home/ubuntu/.virtualenvs/pytestdev/bin

Installed /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/pytest-7.4.0.dev41+g762bb6156-py3.11.egg
Processing dependencies for pytest==7.4.0.dev41+g762bb6156
Searching for pluggy==1.0.0
Best match: pluggy 1.0.0
Adding pluggy 1.0.0 to easy-install.pth file

Using /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages
Searching for packaging==23.1
Best match: packaging 23.1
Adding packaging 23.1 to easy-install.pth file

Using /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages
Searching for iniconfig==2.0.0
Best match: iniconfig 2.0.0
Adding iniconfig 2.0.0 to easy-install.pth file

Using /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages
Finished processing dependencies for pytest==7.4.0.dev41+g762bb6156
~/scripts/ubuntu
python-various/pytest-build.sh: line 47:
/usr/lib/python3.9/site-packages/setuptools/installer.py:27: SetuptoolsDeprecationWarning: setuptools.installer is deprecated. Requirements should be satisfied by a PEP 517 installer.
  warnings.warn(
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
usage: setup.py [global_opts] cmd1 [cmd1_opts] [cmd2 [cmd2_opts] ...]
   or: setup.py --help [cmd1 cmd2 ...]
   or: setup.py --help-commands
   or: setup.py cmd --help

: No such file or directory
ubuntu@ip-172-31-12-23:~/scripts/ubuntu$ python-various/pytest-build.sh
##### PYTEST
pytest-build start time Sat Apr 29 16:43:06 UTC 2023
~ ~/scripts/ubuntu
fatal: destination path 'pytest' already exists and is not an empty directory.
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
python3.11-venv is already the newest version (3.11.2-6).
0 upgraded, 0 newly installed, 0 to remove and 5 not upgraded.
Obtaining file:///home/ubuntu/pytest
  Installing build dependencies ... done
  Checking if build backend supports build_editable ... done
  Getting requirements to build editable ... done
  Installing backend dependencies ... done
  Preparing editable metadata (pyproject.toml) ... done
Requirement already satisfied: iniconfig in /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages (from pytest==7.4.0.dev41+g762bb6156) (2.0.0)
Requirement already satisfied: packaging in /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages (from pytest==7.4.0.dev41+g762bb6156) (23.1)
Requirement already satisfied: pluggy<2.0,>=0.12 in /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages (from pytest==7.4.0.dev41+g762bb6156) (1.0.0)
Building wheels for collected packages: pytest
  Building editable for pytest (pyproject.toml) ... done
  Created wheel for pytest: filename=pytest-7.4.0.dev41+g762bb6156-0.editable-py3-none-any.whl size=5220 sha256=7c4bc1d38edc5bf98ba45f5dac1e20601ed2a2f26c26c1e097ca0c21f946116d
  Stored in directory: /tmp/pip-ephem-wheel-cache-8z7if2sr/wheels/96/e5/98/15d920b9074ee0e610eec9a42bea3dfaf88ccd205cc3a3355b
Successfully built pytest
Installing collected packages: pytest
  Attempting uninstall: pytest
    Found existing installation: pytest 7.4.0.dev41+g762bb6156
    Uninstalling pytest-7.4.0.dev41+g762bb6156:
      Successfully uninstalled pytest-7.4.0.dev41+g762bb6156
Successfully installed pytest-7.4.0.dev41+g762bb6156
-- next: setup.py build
/home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/setuptools/config/setupcfg.py:515: SetuptoolsDeprecationWarning: The license_file parameter is deprecated, use license_files instead.
  warnings.warn(msg, warning_class)
/home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/setuptools/installer.py:27: SetuptoolsDeprecationWarning: setuptools.installer is deprecated. Requirements should be satisfied by a PEP 517 installer.
  warnings.warn(
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
/home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/setuptools/config/setupcfg.py:515: SetuptoolsDeprecationWarning: The license_file parameter is deprecated, use license_files instead.
  warnings.warn(msg, warning_class)
running build
running build_py
copying src/_pytest/_version.py -> build/lib/_pytest

Requirement already satisfied: tox in /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages (4.5.1)
Requirement already satisfied: cachetools>=5.3 in /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages (from tox) (5.3.0)
Requirement already satisfied: chardet>=5.1 in /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages (from tox) (5.1.0)
Requirement already satisfied: colorama>=0.4.6 in /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages (from tox) (0.4.6)
Requirement already satisfied: filelock>=3.11 in /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages (from tox) (3.12.0)
Requirement already satisfied: packaging>=23.1 in /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages (from tox) (23.1)
Requirement already satisfied: platformdirs>=3.2 in /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages (from tox) (3.5.0)
Requirement already satisfied: pluggy>=1 in /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages (from tox) (1.0.0)
Requirement already satisfied: pyproject-api>=1.5.1 in /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages (from tox) (1.5.1)
Requirement already satisfied: virtualenv>=20.21 in /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages (from tox) (20.23.0)
Requirement already satisfied: distlib<1,>=0.3.6 in /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages (from virtualenv>=20.21->tox) (0.3.6)
call tox start time Sat Apr 29 16:43:13 UTC 2023 /home/ubuntu/pytest
linting: commands[0]> pre-commit run --all-files --show-diff-on-failure
[INFO] Installing environment for https://github.com/psf/black.
[INFO] Once installed this environment will be reused.
[INFO] This may take a few minutes...
An unexpected error has occurred: CalledProcessError: command: ('/home/ubuntu/pytest/.tox/linting/bin/python', '-mvirtualenv', '/home/ubuntu/.cache/pre-commit/reposcez28s2/py_env-3.10', '-p', '3.10')
return code: 1
stdout:
    RuntimeError: failed to find interpreter for Builtin discover of python_spec='3.10'
stderr: (none)
Check the log at /home/ubuntu/.cache/pre-commit/pre-commit.log
linting: exit 3 (0.25 seconds) /home/ubuntu/pytest> pre-commit run --all-files --show-diff-on-failure pid=5306
linting: FAIL ✖ in 0.26 seconds
py37: skipped because could not find python interpreter with spec(s): py37
py37: SKIP ⚠ in 0.01 seconds
py38: skipped because could not find python interpreter with spec(s): py38
py38: SKIP ⚠ in 0 seconds
py39: skipped because could not find python interpreter with spec(s): py39
py39: SKIP ⚠ in 0 seconds
py310: skipped because could not find python interpreter with spec(s): py310
py310: SKIP ⚠ in 0 seconds
.pkg: _optional_hooks> python /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/pyproject_api/_backend.py True setuptools.build_meta
.pkg: get_requires_for_build_editable> python /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/pyproject_api/_backend.py True setuptools.build_meta
.pkg: get_requires_for_build_sdist> python /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/pyproject_api/_backend.py True setuptools.build_meta
.pkg: build_wheel> python /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/pyproject_api/_backend.py True setuptools.build_meta
.pkg: build_sdist> python /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/pyproject_api/_backend.py True setuptools.build_meta
py311: install_package_deps> python -I -m pip install argcomplete 'attrs>=19.2.0' 'colorama; sys_platform == "win32"' 'exceptiongroup>=1.0.0rc8; python_version < "3.11"' 'hypothesis>=3.56' 'importlib-metadata>=0.12; python_version < "3.8"' iniconfig mock nose packaging 'pluggy<2.0,>=0.12' 'pygments>=2.7.2' requests 'tomli>=1.0.0; python_version < "3.11"' xmlschema
py311: install_package> python -I -m pip install --force-reinstall --no-deps /home/ubuntu/pytest/.tox/.tmp/package/2/pytest-7.4.0.dev41+g762bb6156.tar.gz
py311: commands[0]> pytest
========================================================================================== test session starts ===========================================================================================
platform linux -- Python 3.11.2, pytest-7.4.0.dev41+g762bb6156, pluggy-1.0.0
cachedir: .tox/py311/.pytest_cache
rootdir: /home/ubuntu/pytest
configfile: pyproject.toml
testpaths: testing
plugins: hypothesis-6.74.1
collected 3429 items

testing/acceptance_test.py .....                                                                                                                                                                   [  0%]
testing/deprecated_test.py .......                                                                                                                                                                 [  0%]
testing/test_argcomplete.py ..                                                                                                                                                                     [  0%]
testing/test_assertion.py .....................................................................                                                                                                    [  2%]
testing/test_assertrewrite.py ............................................                                                                                                                         [  3%]
testing/test_capture.py .............................................................s..                                                                                                           [  5%]
testing/test_collection.py .                                                                                                                                                                       [  5%]
testing/test_compat.py ...........                                                                                                                                                                 [  5%]
testing/test_config.py ......................................................                                                                                                                      [  7%]
testing/test_conftest.py ...........                                                                                                                                                               [  7%]
testing/test_debugging.py .                                                                                                                                                                        [  7%]
testing/test_doctest.py .............                                                                                                                                                              [  8%]
testing/test_entry_points.py .                                                                                                                                                                     [  8%]
testing/test_faulthandler.py ...                                                                                                                                                                   [  8%]
testing/test_findpaths.py ..............s...                                                                                                                                                       [  8%]
testing/test_helpconfig.py .                                                                                                                                                                       [  8%]
testing/test_junitxml.py ....                                                                                                                                                                      [  9%]
testing/test_legacypath.py ....                                                                                                                                                                    [  9%]
testing/test_main.py .....                                                                                                                                                                         [  9%]
testing/test_mark.py ..............                                                                                                                                                                [  9%]
testing/test_mark_expression.py ....................................................................................                                                                               [ 12%]
testing/test_monkeypatch.py ...............................                                                                                                                                        [ 13%]
testing/test_nodes.py ..............                                                                                                                                                               [ 13%]
testing/test_nose.py ..                                                                                                                                                                            [ 13%]
testing/test_parseopt.py ............................                                                                                                                                              [ 14%]
testing/test_pastebin.py ....                                                                                                                                                                      [ 14%]
testing/test_pathlib.py .............................................s.....                                                                                                                        [ 15%]
testing/test_pluginmanager.py .........                                                                                                                                                            [ 16%]
testing/test_pytester.py .....................                                                                                                                                                     [ 16%]
testing/test_recwarn.py ........................................                                                                                                                                   [ 17%]
testing/test_runner.py ..............                                                                                                                                                              [ 18%]
testing/test_scope.py ....                                                                                                                                                                         [ 18%]
testing/test_skipping.py .                                                                                                                                                                         [ 18%]
testing/test_stash.py .                                                                                                                                                                            [ 18%]
testing/test_terminal.py .......................................                                                                                                                                   [ 19%]
testing/test_tmpdir.py ...s...............                                                                                                                                                         [ 20%]
testing/test_warning_types.py ..............                                                                                                                                                       [ 20%]
testing/test_warnings.py .                                                                                                                                                                         [ 20%]
testing/_py/test_local.py .................................................................ss..............s.................x......s.....................................sssssss................. [ 25%]
...........x...                                                                                                                                                                                    [ 26%]
testing/code/test_code.py .................                                                                                                                                                        [ 26%]
testing/code/test_excinfo.py .................s.......s.......................................................................................................                                     [ 30%]
testing/code/test_source.py .......................................................                                                                                                                [ 31%]
testing/freeze/tests/test_trivial.py ..                                                                                                                                                            [ 31%]
testing/io/test_saferepr.py ..............                                                                                                                                                         [ 32%]
testing/io/test_terminalwriter.py .............................................                                                                                                                    [ 33%]
testing/io/test_wcwidth.py .................                                                                                                                                                       [ 34%]
testing/logging/test_fixture.py .........                                                                                                                                                          [ 34%]
testing/logging/test_formatter.py ....                                                                                                                                                             [ 34%]
testing/logging/test_reporting.py ..                                                                                                                                                               [ 34%]
testing/python/approx.py .sss..sssss......................................ssssss................ss........                                                                                         [ 36%]
testing/python/collect.py ..                                                                                                                                                                       [ 37%]
testing/python/fixtures.py ..........                                                                                                                                                              [ 37%]
testing/python/integration.py ....                                                                                                                                                                 [ 37%]
testing/python/metafunc.py .........................................                                                                                                                               [ 38%]
testing/python/raises.py .......................                                                                                                                                                   [ 39%]
testing/freeze/tests/test_doctest.txt .                                                                                                                                                            [ 39%]
testing/acceptance_test.py ..................................................x....................                                                                                                 [ 41%]
testing/deprecated_test.py .............                                                                                                                                                           [ 41%]
testing/test_assertion.py ...................................                                                                                                                                      [ 42%]
testing/test_assertrewrite.py ........................................................                                                                                                             [ 44%]
testing/test_cacheprovider.py ....................................................                                                                                                                 [ 45%]
testing/test_capture.py ......x....................................                                                                                                                                [ 47%]
testing/test_collection.py ...........................x......................................s.................                                                                                    [ 49%]
testing/test_compat.py ..                                                                                                                                                                          [ 49%]
testing/test_config.py .............x...............................................................................................................F                                              [ 53%]
testing/test_conftest.py .............s.............................                                                                                                                               [ 54%]
testing/test_debugging.py .............                                                                                                                                                            [ 55%]
testing/test_doctest.py ..............................................................x..........................................................                                                  [ 58%]
testing/test_error_diffs.py ............                                                                                                                                                           [ 58%]
testing/test_faulthandler.py ...                                                                                                                                                                   [ 58%]
testing/test_helpconfig.py ..F.....                                                                                                                                                                [ 59%]
testing/test_junitxml.py .................................................................................................s...s.......................                                             [ 62%]
testing/test_legacypath.py ..........                                                                                                                                                              [ 63%]
testing/test_link_resolve.py .                                                                                                                                                                     [ 63%]
testing/test_main.py .............                                                                                                                                                                 [ 63%]
testing/test_mark.py ...........................................................x................                                                                                                  [ 65%]
testing/test_monkeypatch.py ....                                                                                                                                                                   [ 65%]
testing/test_nodes.py ....                                                                                                                                                                         [ 65%]
testing/test_nose.py ......................                                                                                                                                                        [ 66%]
testing/test_parseopt.py .                                                                                                                                                                         [ 66%]
testing/test_pastebin.py ...                                                                                                                                                                       [ 66%]
testing/test_pluginmanager.py ................                                                                                                                                                     [ 67%]
testing/test_pytester.py x.........................                                                                                                                                                [ 67%]
testing/test_python_path.py .....                                                                                                                                                                  [ 68%]
testing/test_recwarn.py ..                                                                                                                                                                         [ 68%]
testing/test_reports.py ..................                                                                                                                                                         [ 68%]
testing/test_runner.py .......................x.....................                                                                                                                               [ 70%]
testing/test_runner_xunit.py .............                                                                                                                                                         [ 70%]
testing/test_session.py ........................                                                                                                                                                   [ 71%]
testing/test_setuponly.py ..........................                                                                                                                                               [ 71%]
testing/test_setupplan.py ...                                                                                                                                                                      [ 71%]
testing/test_skipping.py ............................................................................................                                                                              [ 74%]
testing/test_stepwise.py ..............                                                                                                                                                            [ 75%]
testing/test_terminal.py ..............F...............................s.......................................................sss......s......                                                    [ 78%]
testing/test_threadexception.py ....                                                                                                                                                               [ 78%]
testing/test_tmpdir.py ....................                                                                                                                                                        [ 79%]
testing/test_unittest.py ......................sssssss.................................s........                                                                                                   [ 81%]
testing/test_unraisableexception.py ....                                                                                                                                                           [ 81%]
testing/test_warning_types.py .                                                                                                                                                                    [ 81%]
testing/test_warnings.py ...................sss.........                                                                                                                                           [ 82%]
testing/code/test_excinfo.py .............sssssssss.....                                                                                                                                           [ 83%]
testing/examples/test_issue519.py .                                                                                                                                                                [ 83%]
testing/logging/test_fixture.py .......                                                                                                                                                            [ 83%]
testing/logging/test_reporting.py .........................................                                                                                                                        [ 84%]
testing/python/approx.py .                                                                                                                                                                         [ 84%]
testing/python/collect.py ...........................................................................                                                                                              [ 86%]
testing/python/fixtures.py .......................................................................x............................................................................................... [ 91%]
....s..                                                                                                                                                                                            [ 91%]
testing/python/integration.py ...............                                                                                                                                                      [ 92%]
testing/python/metafunc.py ............................................................                                                                                                            [ 93%]
testing/python/raises.py ...                                                                                                                                                                       [ 94%]
testing/python/show_fixtures_per_test.py ........                                                                                                                                                  [ 94%]
testing/acceptance_test.py ....                                                                                                                                                                    [ 94%]
testing/test_assertion.py ............                                                                                                                                                             [ 94%]
testing/test_assertrewrite.py .........                                                                                                                                                            [ 95%]
testing/test_capture.py ........................                                                                                                                                                   [ 95%]
testing/test_collection.py .                                                                                                                                                                       [ 95%]
testing/test_compat.py s                                                                                                                                                                           [ 95%]
testing/test_config.py ..                                                                                                                                                                          [ 95%]
testing/test_debugging.py sssssssssss.ssssssssssssssss.sss....ssss.sss                                                                                                                             [ 97%]
testing/test_faulthandler.py ..s.                                                                                                                                                                  [ 97%]
testing/test_helpconfig.py ..                                                                                                                                                                      [ 97%]
testing/test_legacypath.py .                                                                                                                                                                       [ 97%]
testing/test_meta.py ...................................................................                                                                                                           [ 99%]
testing/test_pytester.py ....s                                                                                                                                                                     [ 99%]
testing/test_reports.py .                                                                                                                                                                          [ 99%]
testing/test_terminal.py ss..                                                                                                                                                                      [ 99%]
testing/test_unittest.py s.                                                                                                                                                                        [ 99%]
testing/test_warnings.py .........                                                                                                                                                                 [ 99%]
testing/python/collect.py .                                                                                                                                                                        [ 99%]
testing/python/fixtures.py ..                                                                                                                                                                      [100%]

================================================================================================ FAILURES ================================================================================================
____________________________________________________________________________________ TestDebugOptions.test_debug_help ____________________________________________________________________________________

self = <test_config.TestDebugOptions object at 0x7faf04fccf90>, pytester = <Pytester PosixPath('/tmp/pytest-of-ubuntu/pytest-0/test_debug_help0')>

    def test_debug_help(self, pytester: Pytester) -> None:
        result = pytester.runpytest("-h")
>       result.stdout.fnmatch_lines(
            [
                "*Store internal tracing debug information in this log*",
                "*file. This file is opened with 'w' and truncated as a*",
                "*Default: pytestdebug.log.",
            ]
        )
E       Failed: nomatch: '*Store internal tracing debug information in this log*'
E           and: 'usage: pytest [options] [file_or_dir] [file_or_dir] [...]'
E           and: ''
E           and: 'positional arguments:'
E           and: '  file_or_dir'
E           and: ''
E           and: 'general:'
E           and: '  -k EXPRESSION         Only run tests which match the given substring expression. An expression is a Python evaluatable expression where all names are substring-matched against test names and their'
E           and: "                        parent classes. Example: -k 'test_method or test_other' matches all test functions and classes whose name contains 'test_method' or 'test_other', while -k 'not test_method'"
E           and: "                        matches those that don't contain 'test_method' in their names. -k 'not test_method and not test_other' will eliminate the matches. Additionally keywords are matched to classes"
E           and: "                        and functions containing extra names in their 'extra_keyword_matches' set, as well as functions which have names assigned directly to them. The matching is case-insensitive."
E           and: "  -m MARKEXPR           Only run tests matching given mark expression. For example: -m 'mark1 and not mark2'."
E           and: '  --markers             show markers (builtin, plugin and per-project ones).'
E           and: '  -x, --exitfirst       Exit instantly on first error or failed test'
E           and: '  --fixtures, --funcargs'
E           and: "                        Show available fixtures, sorted by plugin appearance (fixtures with leading '_' are only shown with '-v')"
E           and: '  --fixtures-per-test   Show fixtures per test'
E           and: '  --pdb                 Start the interactive Python debugger on errors or KeyboardInterrupt'
E           and: '  --pdbcls=modulename:classname'
E           and: '                        Specify a custom interactive Python debugger for use with --pdb.For example: --pdbcls=IPython.terminal.debugger:TerminalPdb'
E           and: '  --trace               Immediately break when running each test'
E           and: '  --capture=method      Per-test capturing method: one of fd|sys|no|tee-sys'
E           and: '  -s                    Shortcut for --capture=no'
E           and: '  --runxfail            Report the results of xfail tests as if they were not marked'
E           and: '  --lf, --last-failed   Rerun only the tests that failed at the last run (or all if none failed)'
E           and: '  --ff, --failed-first  Run all tests, but run the last failures first. This may re-order tests and thus lead to repeated fixture setup/teardown.'
E           and: '  --nf, --new-first     Run tests from new files first, then the rest of the tests sorted by file mtime'
E           and: '  --cache-show=[CACHESHOW]'
E           and: "                        Show cache contents, don't perform collection or tests. Optional argument: glob (default: '*')."
E           and: '  --cache-clear         Remove all cache contents at start of test run'
E           and: '  --lfnf={all,none}, --last-failed-no-failures={all,none}'
E           and: '                        Which tests to run with no previously (known) failures'
E           and: '  --sw, --stepwise      Exit on test failure and continue from last failing test next time'
E           and: '  --sw-skip, --stepwise-skip'
E           and: '                        Ignore the first failing test but stop on the next failing test. Implicitly enables --stepwise.'
E           and: ''
E           and: 'Reporting:'
E           and: '  --durations=N         Show N slowest setup/test durations (N=0 for all)'
E           and: '  --durations-min=N     Minimal duration in seconds for inclusion in slowest list. Default: 0.005.'
E           and: '  -v, --verbose         Increase verbosity'
E           and: '  --no-header           Disable header'
E           and: '  --no-summary          Disable summary'
E           and: '  -q, --quiet           Decrease verbosity'
E           and: '  --verbosity=VERBOSE   Set verbosity. Default: 0.'
E           and: '  -r chars              Show extra test summary info as specified by chars: (f)ailed, (E)rror, (s)kipped, (x)failed, (X)passed, (p)assed, (P)assed with output, (a)ll except passed (p/P), or (A)ll.'
E           and: "                        (w)arnings are enabled by default (see --disable-warnings), 'N' can be used to reset the list. (default: 'fE')."
E           and: '  --disable-warnings, --disable-pytest-warnings'
E           and: '                        Disable warnings summary'
E           and: '  -l, --showlocals      Show locals in tracebacks (disabled by default)'
E           and: '  --no-showlocals       Hide locals in tracebacks (negate --showlocals passed through addopts)'
E           and: '  --tb=style            Traceback print mode (auto/long/short/line/native/no)'
E           and: '  --show-capture={no,stdout,stderr,log,all}'
E           and: '                        Controls how captured stdout/stderr/log is shown on failed tests. Default: all.'
E           and: "  --full-trace          Don't cut any tracebacks (default is to cut)"
E           and: '  --color=color         Color terminal output (yes/no/auto)'
E           and: '  --code-highlight={yes,no}'
E           and: '                        Whether code should be highlighted (only if --color is also enabled). Default: yes.'
E           and: '  --pastebin=mode       Send failed|all info to bpaste.net pastebin service'
E           and: '  --junit-xml=path      Create junit-xml style report file at given path'
E           and: '  --junit-prefix=str    Prepend prefix to classnames in junit-xml output'
E           and: ''
E           and: 'pytest-warnings:'
E           and: '  -W PYTHONWARNINGS, --pythonwarnings=PYTHONWARNINGS'
E           and: '                        Set which warnings to report, see -W option of Python itself'
E           and: '  --maxfail=num         Exit after first num failures or errors'
E           and: '  --strict-config       Any warnings encountered while parsing the `pytest` section of the configuration file raise errors'
E           and: '  --strict-markers      Markers not registered in the `markers` section of the configuration file raise errors'
E           and: '  --strict              (Deprecated) alias to --strict-markers'
E           and: '  -c file               Load configuration from `file` instead of trying to locate one of the implicit configuration files'
E           and: '  --continue-on-collection-errors'
E           and: '                        Force test execution even if collection errors occur'
E           and: "  --rootdir=ROOTDIR     Define root directory for tests. Can be relative path: 'root_dir', './root_dir', 'root_dir/another_dir/'; absolute path: '/home/user/root_dir'; path with variables:"
E           and: "                        '$HOME/root_dir'."
E           and: ''
E           and: 'collection:'
E           and: "  --collect-only, --co  Only collect tests, don't execute them"
E           and: '  --pyargs              Try to interpret all arguments as Python packages'
E           and: '  --ignore=path         Ignore path during collection (multi-allowed)'
E           and: '  --ignore-glob=path    Ignore path pattern during collection (multi-allowed)'
E           and: '  --deselect=nodeid_prefix'
E           and: '                        Deselect item (via node id prefix) during collection (multi-allowed)'
E           and: "  --confcutdir=dir      Only load conftest.py's relative to specified dir"
E           and: "  --noconftest          Don't load any conftest.py files"
E           and: '  --keep-duplicates     Keep duplicate tests'
E           and: '  --collect-in-virtualenv'
E           and: "                        Don't ignore tests in a local virtualenv directory"
E           and: '  --import-mode={prepend,append,importlib}'
E           and: '                        Prepend/append to sys.path when importing test modules and conftest files. Default: prepend.'
E           and: '  --doctest-modules     Run doctests in all .py modules'
E           and: '  --doctest-report={none,cdiff,ndiff,udiff,only_first_failure}'
E           and: '                        Choose another output format for diffs on doctest failure'
E           and: '  --doctest-glob=pat    Doctests file matching pattern, default: test*.txt'
E           and: '  --doctest-ignore-import-errors'
E           and: '                        Ignore doctest ImportErrors'
E           and: '  --doctest-continue-on-failure'
E           and: '                        For a given doctest, continue to run after the first failure'
E           and: ''
E           and: 'test session debugging and configuration:'
E           and: '  --basetemp=dir        Base temporary directory for this test run. (Warning: this directory is removed if it exists.)'
E           and: '  -V, --version         Display pytest version and information about plugins. When given twice, also display information about plugins.'
E           and: '  -h, --help            Show help message and configuration info'
E           and: '  -p name               Early-load given plugin module name or entry point (multi-allowed). To avoid loading of plugins, use the `no:` prefix, e.g. `no:doctest`.'
E           and: '  --trace-config        Trace considerations of conftest.py files'
E           and: '  --debug=[DEBUG_FILE_NAME]'
E       fnmatch: '*Store internal tracing debug information in this log*'
E          with: "                        Store internal tracing debug information in this log file. This file is opened with 'w' and truncated as a result, care advised. Default: pytestdebug.log."
E       nomatch: "*file. This file is opened with 'w' and truncated as a*"
E           and: '  -o OVERRIDE_INI, --override-ini=OVERRIDE_INI'
E           and: '                        Override ini option with "option=value" style, e.g. `-o xfail_strict=True -o cache_dir=cache`.'
E           and: '  --assert=MODE         Control assertion debugging tools.'
E           and: "                        'plain' performs no assertion debugging."
E           and: "                        'rewrite' (the default) rewrites assert statements in test modules on import to provide assert expression information."
E           and: '  --setup-only          Only setup fixtures, do not execute tests'
E           and: '  --setup-show          Show setup of fixtures while executing tests'
E           and: "  --setup-plan          Show what fixtures and tests would be executed but don't execute anything"
E           and: ''
E           and: 'logging:'
E           and: '  --log-level=LEVEL     Level of messages to catch/display. Not set by default, so it depends on the root/parent log handler\'s effective level, where it is "WARNING" by default.'
E           and: '  --log-format=LOG_FORMAT'
E           and: '                        Log format used by the logging module'
E           and: '  --log-date-format=LOG_DATE_FORMAT'
E           and: '                        Log date format used by the logging module'
E           and: '  --log-cli-level=LOG_CLI_LEVEL'
E           and: '                        CLI logging level'
E           and: '  --log-cli-format=LOG_CLI_FORMAT'
E           and: '                        Log format used by the logging module'
E           and: '  --log-cli-date-format=LOG_CLI_DATE_FORMAT'
E           and: '                        Log date format used by the logging module'
E           and: '  --log-file=LOG_FILE   Path to a file when logging will be written to'
E           and: '  --log-file-level=LOG_FILE_LEVEL'
E           and: '                        Log file logging level'
E           and: '  --log-file-format=LOG_FILE_FORMAT'
E           and: '                        Log format used by the logging module'
E           and: '  --log-file-date-format=LOG_FILE_DATE_FORMAT'
E           and: '                        Log date format used by the logging module'
E           and: '  --log-auto-indent=LOG_AUTO_INDENT'
E           and: '                        Auto-indent multiline messages passed to the logging module. Accepts true|on, false|off or an integer.'
E           and: '  --log-disable=LOGGER_DISABLE'
E           and: '                        Disable a logger by name. Can be passed multiple times.'
E           and: ''
E           and: '[pytest] ini-options in the first pytest.ini|tox.ini|setup.cfg|pyproject.toml file found:'
E           and: ''
E           and: '  markers (linelist):   Markers for test functions'
E           and: '  empty_parameter_set_mark (string):'
E           and: '                        Default marker for empty parametersets'
E           and: '  norecursedirs (args): Directory patterns to avoid for recursion'
E           and: '  testpaths (args):     Directories to search for tests when no files or directories are given on the command line'
E           and: '  filterwarnings (linelist):'
E           and: '                        Each line specifies a pattern for warnings.filterwarnings. Processed after -W/--pythonwarnings.'
E           and: '  usefixtures (args):   List of default fixtures to be used with this project'
E           and: '  python_files (args):  Glob-style file patterns for Python test module discovery'
E           and: '  python_classes (args):'
E           and: '                        Prefixes or glob names for Python test class discovery'
E           and: '  python_functions (args):'
E           and: '                        Prefixes or glob names for Python test function and method discovery'
E           and: '  disable_test_id_escaping_and_forfeit_all_rights_to_community_support (bool):'
E           and: '                        Disable string escape non-ASCII characters, might cause unwanted side effects(use at your own risk)'
E           and: '  console_output_style (string):'
E           and: '                        Console output: "classic", or with additional progress information ("progress" (percentage) | "count" | "progress-even-when-capture-no" (forces progress even when capture=no)'
E           and: '  xfail_strict (bool):  Default for the strict parameter of xfail markers when not given explicitly (default: False)'
E           and: '  tmp_path_retention_count (string):'
E           and: '                        How many sessions should we keep the `tmp_path` directories, according to `tmp_path_retention_policy`.'
E           and: '  tmp_path_retention_policy (string):'
E           and: '                        Controls which directories created by the `tmp_path` fixture are kept around, based on test outcome. (all/failed/none)'
E           and: '  enable_assertion_pass_hook (bool):'
E           and: '                        Enables the pytest_assertion_pass hook. Make sure to delete any previously generated pyc cache files.'
E           and: '  junit_suite_name (string):'
E           and: '                        Test suite name for JUnit report'
E           and: '  junit_logging (string):'
E           and: '                        Write captured log messages to JUnit report: one of no|log|system-out|system-err|out-err|all'
E           and: '  junit_log_passing_tests (bool):'
E           and: '                        Capture log information for passing tests to JUnit report:'
E           and: '  junit_duration_report (string):'
E           and: '                        Duration time to report: one of total|call'
E           and: '  junit_family (string):'
E           and: '                        Emit XML for schema: one of legacy|xunit1|xunit2'
E           and: '  doctest_optionflags (args):'
E           and: '                        Option flags for doctests'
E           and: '  doctest_encoding (string):'
E           and: '                        Encoding used for doctest files'
E           and: '  cache_dir (string):   Cache directory path'
E           and: '  log_level (string):   Default value for --log-level'
E           and: '  log_format (string):  Default value for --log-format'
E           and: '  log_date_format (string):'
E           and: '                        Default value for --log-date-format'
E           and: '  log_cli (bool):       Enable log display during test run (also known as "live logging")'
E           and: '  log_cli_level (string):'
E           and: '                        Default value for --log-cli-level'
E           and: '  log_cli_format (string):'
E           and: '                        Default value for --log-cli-format'
E           and: '  log_cli_date_format (string):'
E           and: '                        Default value for --log-cli-date-format'
E           and: '  log_file (string):    Default value for --log-file'
E           and: '  log_file_level (string):'
E           and: '                        Default value for --log-file-level'
E           and: '  log_file_format (string):'
E           and: '                        Default value for --log-file-format'
E           and: '  log_file_date_format (string):'
E           and: '                        Default value for --log-file-date-format'
E           and: '  log_auto_indent (string):'
E           and: '                        Default value for --log-auto-indent'
E           and: '  pythonpath (paths):   Add paths to sys.path'
E           and: '  faulthandler_timeout (string):'
E           and: '                        Dump the traceback of all threads if a test takes more than TIMEOUT seconds to finish'
E           and: '  addopts (args):       Extra command line options'
E           and: '  minversion (string):  Minimally required pytest version'
E           and: '  required_plugins (args):'
E           and: '                        Plugins that must be present for pytest to run'
E           and: ''
E           and: 'Environment variables:'
E           and: '  PYTEST_ADDOPTS           Extra command line options'
E           and: '  PYTEST_PLUGINS           Comma-separated plugins to load during startup'
E           and: '  PYTEST_DISABLE_PLUGIN_AUTOLOAD Set to disable plugin auto-loading'
E           and: "  PYTEST_DEBUG             Set to enable debug tracing of pytest's internals"
E           and: ''
E           and: ''
E           and: 'to see available markers type: pytest --markers'
E           and: 'to see available fixtures type: pytest --fixtures'
E           and: "(shown according to specified file_or_dir or current dir if not specified; fixtures with leading '_' are only shown with the '-v' option"
E       remains unmatched: "*file. This file is opened with 'w' and truncated as a*"

/home/ubuntu/pytest/testing/test_config.py:2129: Failed
------------------------------------------------------------------------------------------ Captured stdout call ------------------------------------------------------------------------------------------
usage: pytest [options] [file_or_dir] [file_or_dir] [...]

positional arguments:
  file_or_dir

general:
  -k EXPRESSION         Only run tests which match the given substring expression. An expression is a Python evaluatable expression where all names are substring-matched against test names and their
                        parent classes. Example: -k 'test_method or test_other' matches all test functions and classes whose name contains 'test_method' or 'test_other', while -k 'not test_method'
                        matches those that don't contain 'test_method' in their names. -k 'not test_method and not test_other' will eliminate the matches. Additionally keywords are matched to classes
                        and functions containing extra names in their 'extra_keyword_matches' set, as well as functions which have names assigned directly to them. The matching is case-insensitive.
  -m MARKEXPR           Only run tests matching given mark expression. For example: -m 'mark1 and not mark2'.
  --markers             show markers (builtin, plugin and per-project ones).
  -x, --exitfirst       Exit instantly on first error or failed test
  --fixtures, --funcargs
                        Show available fixtures, sorted by plugin appearance (fixtures with leading '_' are only shown with '-v')
  --fixtures-per-test   Show fixtures per test
  --pdb                 Start the interactive Python debugger on errors or KeyboardInterrupt
  --pdbcls=modulename:classname
                        Specify a custom interactive Python debugger for use with --pdb.For example: --pdbcls=IPython.terminal.debugger:TerminalPdb
  --trace               Immediately break when running each test
  --capture=method      Per-test capturing method: one of fd|sys|no|tee-sys
  -s                    Shortcut for --capture=no
  --runxfail            Report the results of xfail tests as if they were not marked
  --lf, --last-failed   Rerun only the tests that failed at the last run (or all if none failed)
  --ff, --failed-first  Run all tests, but run the last failures first. This may re-order tests and thus lead to repeated fixture setup/teardown.
  --nf, --new-first     Run tests from new files first, then the rest of the tests sorted by file mtime
  --cache-show=[CACHESHOW]
                        Show cache contents, don't perform collection or tests. Optional argument: glob (default: '*').
  --cache-clear         Remove all cache contents at start of test run
  --lfnf={all,none}, --last-failed-no-failures={all,none}
                        Which tests to run with no previously (known) failures
  --sw, --stepwise      Exit on test failure and continue from last failing test next time
  --sw-skip, --stepwise-skip
                        Ignore the first failing test but stop on the next failing test. Implicitly enables --stepwise.

Reporting:
  --durations=N         Show N slowest setup/test durations (N=0 for all)
  --durations-min=N     Minimal duration in seconds for inclusion in slowest list. Default: 0.005.
  -v, --verbose         Increase verbosity
  --no-header           Disable header
  --no-summary          Disable summary
  -q, --quiet           Decrease verbosity
  --verbosity=VERBOSE   Set verbosity. Default: 0.
  -r chars              Show extra test summary info as specified by chars: (f)ailed, (E)rror, (s)kipped, (x)failed, (X)passed, (p)assed, (P)assed with output, (a)ll except passed (p/P), or (A)ll.
                        (w)arnings are enabled by default (see --disable-warnings), 'N' can be used to reset the list. (default: 'fE').
  --disable-warnings, --disable-pytest-warnings
                        Disable warnings summary
  -l, --showlocals      Show locals in tracebacks (disabled by default)
  --no-showlocals       Hide locals in tracebacks (negate --showlocals passed through addopts)
  --tb=style            Traceback print mode (auto/long/short/line/native/no)
  --show-capture={no,stdout,stderr,log,all}
                        Controls how captured stdout/stderr/log is shown on failed tests. Default: all.
  --full-trace          Don't cut any tracebacks (default is to cut)
  --color=color         Color terminal output (yes/no/auto)
  --code-highlight={yes,no}
                        Whether code should be highlighted (only if --color is also enabled). Default: yes.
  --pastebin=mode       Send failed|all info to bpaste.net pastebin service
  --junit-xml=path      Create junit-xml style report file at given path
  --junit-prefix=str    Prepend prefix to classnames in junit-xml output

pytest-warnings:
  -W PYTHONWARNINGS, --pythonwarnings=PYTHONWARNINGS
                        Set which warnings to report, see -W option of Python itself
  --maxfail=num         Exit after first num failures or errors
  --strict-config       Any warnings encountered while parsing the `pytest` section of the configuration file raise errors
  --strict-markers      Markers not registered in the `markers` section of the configuration file raise errors
  --strict              (Deprecated) alias to --strict-markers
  -c file               Load configuration from `file` instead of trying to locate one of the implicit configuration files
  --continue-on-collection-errors
                        Force test execution even if collection errors occur
  --rootdir=ROOTDIR     Define root directory for tests. Can be relative path: 'root_dir', './root_dir', 'root_dir/another_dir/'; absolute path: '/home/user/root_dir'; path with variables:
                        '$HOME/root_dir'.

collection:
  --collect-only, --co  Only collect tests, don't execute them
  --pyargs              Try to interpret all arguments as Python packages
  --ignore=path         Ignore path during collection (multi-allowed)
  --ignore-glob=path    Ignore path pattern during collection (multi-allowed)
  --deselect=nodeid_prefix
                        Deselect item (via node id prefix) during collection (multi-allowed)
  --confcutdir=dir      Only load conftest.py's relative to specified dir
  --noconftest          Don't load any conftest.py files
  --keep-duplicates     Keep duplicate tests
  --collect-in-virtualenv
                        Don't ignore tests in a local virtualenv directory
  --import-mode={prepend,append,importlib}
                        Prepend/append to sys.path when importing test modules and conftest files. Default: prepend.
  --doctest-modules     Run doctests in all .py modules
  --doctest-report={none,cdiff,ndiff,udiff,only_first_failure}
                        Choose another output format for diffs on doctest failure
  --doctest-glob=pat    Doctests file matching pattern, default: test*.txt
  --doctest-ignore-import-errors
                        Ignore doctest ImportErrors
  --doctest-continue-on-failure
                        For a given doctest, continue to run after the first failure

test session debugging and configuration:
  --basetemp=dir        Base temporary directory for this test run. (Warning: this directory is removed if it exists.)
  -V, --version         Display pytest version and information about plugins. When given twice, also display information about plugins.
  -h, --help            Show help message and configuration info
  -p name               Early-load given plugin module name or entry point (multi-allowed). To avoid loading of plugins, use the `no:` prefix, e.g. `no:doctest`.
  --trace-config        Trace considerations of conftest.py files
  --debug=[DEBUG_FILE_NAME]
                        Store internal tracing debug information in this log file. This file is opened with 'w' and truncated as a result, care advised. Default: pytestdebug.log.
  -o OVERRIDE_INI, --override-ini=OVERRIDE_INI
                        Override ini option with "option=value" style, e.g. `-o xfail_strict=True -o cache_dir=cache`.
  --assert=MODE         Control assertion debugging tools.
                        'plain' performs no assertion debugging.
                        'rewrite' (the default) rewrites assert statements in test modules on import to provide assert expression information.
  --setup-only          Only setup fixtures, do not execute tests
  --setup-show          Show setup of fixtures while executing tests
  --setup-plan          Show what fixtures and tests would be executed but don't execute anything

logging:
  --log-level=LEVEL     Level of messages to catch/display. Not set by default, so it depends on the root/parent log handler's effective level, where it is "WARNING" by default.
  --log-format=LOG_FORMAT
                        Log format used by the logging module
  --log-date-format=LOG_DATE_FORMAT
                        Log date format used by the logging module
  --log-cli-level=LOG_CLI_LEVEL
                        CLI logging level
  --log-cli-format=LOG_CLI_FORMAT
                        Log format used by the logging module
  --log-cli-date-format=LOG_CLI_DATE_FORMAT
                        Log date format used by the logging module
  --log-file=LOG_FILE   Path to a file when logging will be written to
  --log-file-level=LOG_FILE_LEVEL
                        Log file logging level
  --log-file-format=LOG_FILE_FORMAT
                        Log format used by the logging module
  --log-file-date-format=LOG_FILE_DATE_FORMAT
                        Log date format used by the logging module
  --log-auto-indent=LOG_AUTO_INDENT
                        Auto-indent multiline messages passed to the logging module. Accepts true|on, false|off or an integer.
  --log-disable=LOGGER_DISABLE
                        Disable a logger by name. Can be passed multiple times.

[pytest] ini-options in the first pytest.ini|tox.ini|setup.cfg|pyproject.toml file found:

  markers (linelist):   Markers for test functions
  empty_parameter_set_mark (string):
                        Default marker for empty parametersets
  norecursedirs (args): Directory patterns to avoid for recursion
  testpaths (args):     Directories to search for tests when no files or directories are given on the command line
  filterwarnings (linelist):
                        Each line specifies a pattern for warnings.filterwarnings. Processed after -W/--pythonwarnings.
  usefixtures (args):   List of default fixtures to be used with this project
  python_files (args):  Glob-style file patterns for Python test module discovery
  python_classes (args):
                        Prefixes or glob names for Python test class discovery
  python_functions (args):
                        Prefixes or glob names for Python test function and method discovery
  disable_test_id_escaping_and_forfeit_all_rights_to_community_support (bool):
                        Disable string escape non-ASCII characters, might cause unwanted side effects(use at your own risk)
  console_output_style (string):
                        Console output: "classic", or with additional progress information ("progress" (percentage) | "count" | "progress-even-when-capture-no" (forces progress even when capture=no)
  xfail_strict (bool):  Default for the strict parameter of xfail markers when not given explicitly (default: False)
  tmp_path_retention_count (string):
                        How many sessions should we keep the `tmp_path` directories, according to `tmp_path_retention_policy`.
  tmp_path_retention_policy (string):
                        Controls which directories created by the `tmp_path` fixture are kept around, based on test outcome. (all/failed/none)
  enable_assertion_pass_hook (bool):
                        Enables the pytest_assertion_pass hook. Make sure to delete any previously generated pyc cache files.
  junit_suite_name (string):
                        Test suite name for JUnit report
  junit_logging (string):
                        Write captured log messages to JUnit report: one of no|log|system-out|system-err|out-err|all
  junit_log_passing_tests (bool):
                        Capture log information for passing tests to JUnit report:
  junit_duration_report (string):
                        Duration time to report: one of total|call
  junit_family (string):
                        Emit XML for schema: one of legacy|xunit1|xunit2
  doctest_optionflags (args):
                        Option flags for doctests
  doctest_encoding (string):
                        Encoding used for doctest files
  cache_dir (string):   Cache directory path
  log_level (string):   Default value for --log-level
  log_format (string):  Default value for --log-format
  log_date_format (string):
                        Default value for --log-date-format
  log_cli (bool):       Enable log display during test run (also known as "live logging")
  log_cli_level (string):
                        Default value for --log-cli-level
  log_cli_format (string):
                        Default value for --log-cli-format
  log_cli_date_format (string):
                        Default value for --log-cli-date-format
  log_file (string):    Default value for --log-file
  log_file_level (string):
                        Default value for --log-file-level
  log_file_format (string):
                        Default value for --log-file-format
  log_file_date_format (string):
                        Default value for --log-file-date-format
  log_auto_indent (string):
                        Default value for --log-auto-indent
  pythonpath (paths):   Add paths to sys.path
  faulthandler_timeout (string):
                        Dump the traceback of all threads if a test takes more than TIMEOUT seconds to finish
  addopts (args):       Extra command line options
  minversion (string):  Minimally required pytest version
  required_plugins (args):
                        Plugins that must be present for pytest to run

Environment variables:
  PYTEST_ADDOPTS           Extra command line options
  PYTEST_PLUGINS           Comma-separated plugins to load during startup
  PYTEST_DISABLE_PLUGIN_AUTOLOAD Set to disable plugin auto-loading
  PYTEST_DEBUG             Set to enable debug tracing of pytest's internals


to see available markers type: pytest --markers
to see available fixtures type: pytest --fixtures
(shown according to specified file_or_dir or current dir if not specified; fixtures with leading '_' are only shown with the '-v' option
_______________________________________________________________________________________________ test_help ________________________________________________________________________________________________

pytester = <Pytester PosixPath('/tmp/pytest-of-ubuntu/pytest-0/test_help0')>

    def test_help(pytester: Pytester) -> None:
        result = pytester.runpytest("--help")
        assert result.ret == 0
>       result.stdout.fnmatch_lines(
            """
              -m MARKEXPR           Only run tests matching given mark expression. For
                                    example: -m 'mark1 and not mark2'.
            Reporting:
              --durations=N *
              -V, --version         Display pytest version and information about plugins.
                                    When given twice, also display information about
                                    plugins.
            *setup.cfg*
            *minversion*
            *to see*markers*pytest --markers*
            *to see*fixtures*pytest --fixtures*
        """
        )
E       Failed: nomatch: '  -m MARKEXPR           Only run tests matching given mark expression. For'
E           and: 'usage: pytest [options] [file_or_dir] [file_or_dir] [...]'
E           and: ''
E           and: 'positional arguments:'
E           and: '  file_or_dir'
E           and: ''
E           and: 'general:'
E           and: '  -k EXPRESSION         Only run tests which match the given substring expression. An expression is a Python evaluatable expression where all names are substring-matched against test names and their'
E           and: "                        parent classes. Example: -k 'test_method or test_other' matches all test functions and classes whose name contains 'test_method' or 'test_other', while -k 'not test_method'"
E           and: "                        matches those that don't contain 'test_method' in their names. -k 'not test_method and not test_other' will eliminate the matches. Additionally keywords are matched to classes"
E           and: "                        and functions containing extra names in their 'extra_keyword_matches' set, as well as functions which have names assigned directly to them. The matching is case-insensitive."
E           and: "  -m MARKEXPR           Only run tests matching given mark expression. For example: -m 'mark1 and not mark2'."
E           and: '  --markers             show markers (builtin, plugin and per-project ones).'
E           and: '  -x, --exitfirst       Exit instantly on first error or failed test'
E           and: '  --fixtures, --funcargs'
E           and: "                        Show available fixtures, sorted by plugin appearance (fixtures with leading '_' are only shown with '-v')"
E           and: '  --fixtures-per-test   Show fixtures per test'
E           and: '  --pdb                 Start the interactive Python debugger on errors or KeyboardInterrupt'
E           and: '  --pdbcls=modulename:classname'
E           and: '                        Specify a custom interactive Python debugger for use with --pdb.For example: --pdbcls=IPython.terminal.debugger:TerminalPdb'
E           and: '  --trace               Immediately break when running each test'
E           and: '  --capture=method      Per-test capturing method: one of fd|sys|no|tee-sys'
E           and: '  -s                    Shortcut for --capture=no'
E           and: '  --runxfail            Report the results of xfail tests as if they were not marked'
E           and: '  --lf, --last-failed   Rerun only the tests that failed at the last run (or all if none failed)'
E           and: '  --ff, --failed-first  Run all tests, but run the last failures first. This may re-order tests and thus lead to repeated fixture setup/teardown.'
E           and: '  --nf, --new-first     Run tests from new files first, then the rest of the tests sorted by file mtime'
E           and: '  --cache-show=[CACHESHOW]'
E           and: "                        Show cache contents, don't perform collection or tests. Optional argument: glob (default: '*')."
E           and: '  --cache-clear         Remove all cache contents at start of test run'
E           and: '  --lfnf={all,none}, --last-failed-no-failures={all,none}'
E           and: '                        Which tests to run with no previously (known) failures'
E           and: '  --sw, --stepwise      Exit on test failure and continue from last failing test next time'
E           and: '  --sw-skip, --stepwise-skip'
E           and: '                        Ignore the first failing test but stop on the next failing test. Implicitly enables --stepwise.'
E           and: ''
E           and: 'Reporting:'
E           and: '  --durations=N         Show N slowest setup/test durations (N=0 for all)'
E           and: '  --durations-min=N     Minimal duration in seconds for inclusion in slowest list. Default: 0.005.'
E           and: '  -v, --verbose         Increase verbosity'
E           and: '  --no-header           Disable header'
E           and: '  --no-summary          Disable summary'
E           and: '  -q, --quiet           Decrease verbosity'
E           and: '  --verbosity=VERBOSE   Set verbosity. Default: 0.'
E           and: '  -r chars              Show extra test summary info as specified by chars: (f)ailed, (E)rror, (s)kipped, (x)failed, (X)passed, (p)assed, (P)assed with output, (a)ll except passed (p/P), or (A)ll.'
E           and: "                        (w)arnings are enabled by default (see --disable-warnings), 'N' can be used to reset the list. (default: 'fE')."
E           and: '  --disable-warnings, --disable-pytest-warnings'
E           and: '                        Disable warnings summary'
E           and: '  -l, --showlocals      Show locals in tracebacks (disabled by default)'
E           and: '  --no-showlocals       Hide locals in tracebacks (negate --showlocals passed through addopts)'
E           and: '  --tb=style            Traceback print mode (auto/long/short/line/native/no)'
E           and: '  --show-capture={no,stdout,stderr,log,all}'
E           and: '                        Controls how captured stdout/stderr/log is shown on failed tests. Default: all.'
E           and: "  --full-trace          Don't cut any tracebacks (default is to cut)"
E           and: '  --color=color         Color terminal output (yes/no/auto)'
E           and: '  --code-highlight={yes,no}'
E           and: '                        Whether code should be highlighted (only if --color is also enabled). Default: yes.'
E           and: '  --pastebin=mode       Send failed|all info to bpaste.net pastebin service'
E           and: '  --junit-xml=path      Create junit-xml style report file at given path'
E           and: '  --junit-prefix=str    Prepend prefix to classnames in junit-xml output'
E           and: ''
E           and: 'pytest-warnings:'
E           and: '  -W PYTHONWARNINGS, --pythonwarnings=PYTHONWARNINGS'
E           and: '                        Set which warnings to report, see -W option of Python itself'
E           and: '  --maxfail=num         Exit after first num failures or errors'
E           and: '  --strict-config       Any warnings encountered while parsing the `pytest` section of the configuration file raise errors'
E           and: '  --strict-markers      Markers not registered in the `markers` section of the configuration file raise errors'
E           and: '  --strict              (Deprecated) alias to --strict-markers'
E           and: '  -c file               Load configuration from `file` instead of trying to locate one of the implicit configuration files'
E           and: '  --continue-on-collection-errors'
E           and: '                        Force test execution even if collection errors occur'
E           and: "  --rootdir=ROOTDIR     Define root directory for tests. Can be relative path: 'root_dir', './root_dir', 'root_dir/another_dir/'; absolute path: '/home/user/root_dir'; path with variables:"
E           and: "                        '$HOME/root_dir'."
E           and: ''
E           and: 'collection:'
E           and: "  --collect-only, --co  Only collect tests, don't execute them"
E           and: '  --pyargs              Try to interpret all arguments as Python packages'
E           and: '  --ignore=path         Ignore path during collection (multi-allowed)'
E           and: '  --ignore-glob=path    Ignore path pattern during collection (multi-allowed)'
E           and: '  --deselect=nodeid_prefix'
E           and: '                        Deselect item (via node id prefix) during collection (multi-allowed)'
E           and: "  --confcutdir=dir      Only load conftest.py's relative to specified dir"
E           and: "  --noconftest          Don't load any conftest.py files"
E           and: '  --keep-duplicates     Keep duplicate tests'
E           and: '  --collect-in-virtualenv'
E           and: "                        Don't ignore tests in a local virtualenv directory"
E           and: '  --import-mode={prepend,append,importlib}'
E           and: '                        Prepend/append to sys.path when importing test modules and conftest files. Default: prepend.'
E           and: '  --doctest-modules     Run doctests in all .py modules'
E           and: '  --doctest-report={none,cdiff,ndiff,udiff,only_first_failure}'
E           and: '                        Choose another output format for diffs on doctest failure'
E           and: '  --doctest-glob=pat    Doctests file matching pattern, default: test*.txt'
E           and: '  --doctest-ignore-import-errors'
E           and: '                        Ignore doctest ImportErrors'
E           and: '  --doctest-continue-on-failure'
E           and: '                        For a given doctest, continue to run after the first failure'
E           and: ''
E           and: 'test session debugging and configuration:'
E           and: '  --basetemp=dir        Base temporary directory for this test run. (Warning: this directory is removed if it exists.)'
E           and: '  -V, --version         Display pytest version and information about plugins. When given twice, also display information about plugins.'
E           and: '  -h, --help            Show help message and configuration info'
E           and: '  -p name               Early-load given plugin module name or entry point (multi-allowed). To avoid loading of plugins, use the `no:` prefix, e.g. `no:doctest`.'
E           and: '  --trace-config        Trace considerations of conftest.py files'
E           and: '  --debug=[DEBUG_FILE_NAME]'
E           and: "                        Store internal tracing debug information in this log file. This file is opened with 'w' and truncated as a result, care advised. Default: pytestdebug.log."
E           and: '  -o OVERRIDE_INI, --override-ini=OVERRIDE_INI'
E           and: '                        Override ini option with "option=value" style, e.g. `-o xfail_strict=True -o cache_dir=cache`.'
E           and: '  --assert=MODE         Control assertion debugging tools.'
E           and: "                        'plain' performs no assertion debugging."
E           and: "                        'rewrite' (the default) rewrites assert statements in test modules on import to provide assert expression information."
E           and: '  --setup-only          Only setup fixtures, do not execute tests'
E           and: '  --setup-show          Show setup of fixtures while executing tests'
E           and: "  --setup-plan          Show what fixtures and tests would be executed but don't execute anything"
E           and: ''
E           and: 'logging:'
E           and: '  --log-level=LEVEL     Level of messages to catch/display. Not set by default, so it depends on the root/parent log handler\'s effective level, where it is "WARNING" by default.'
E           and: '  --log-format=LOG_FORMAT'
E           and: '                        Log format used by the logging module'
E           and: '  --log-date-format=LOG_DATE_FORMAT'
E           and: '                        Log date format used by the logging module'
E           and: '  --log-cli-level=LOG_CLI_LEVEL'
E           and: '                        CLI logging level'
E           and: '  --log-cli-format=LOG_CLI_FORMAT'
E           and: '                        Log format used by the logging module'
E           and: '  --log-cli-date-format=LOG_CLI_DATE_FORMAT'
E           and: '                        Log date format used by the logging module'
E           and: '  --log-file=LOG_FILE   Path to a file when logging will be written to'
E           and: '  --log-file-level=LOG_FILE_LEVEL'
E           and: '                        Log file logging level'
E           and: '  --log-file-format=LOG_FILE_FORMAT'
E           and: '                        Log format used by the logging module'
E           and: '  --log-file-date-format=LOG_FILE_DATE_FORMAT'
E           and: '                        Log date format used by the logging module'
E           and: '  --log-auto-indent=LOG_AUTO_INDENT'
E           and: '                        Auto-indent multiline messages passed to the logging module. Accepts true|on, false|off or an integer.'
E           and: '  --log-disable=LOGGER_DISABLE'
E           and: '                        Disable a logger by name. Can be passed multiple times.'
E           and: ''
E           and: '[pytest] ini-options in the first pytest.ini|tox.ini|setup.cfg|pyproject.toml file found:'
E           and: ''
E           and: '  markers (linelist):   Markers for test functions'
E           and: '  empty_parameter_set_mark (string):'
E           and: '                        Default marker for empty parametersets'
E           and: '  norecursedirs (args): Directory patterns to avoid for recursion'
E           and: '  testpaths (args):     Directories to search for tests when no files or directories are given on the command line'
E           and: '  filterwarnings (linelist):'
E           and: '                        Each line specifies a pattern for warnings.filterwarnings. Processed after -W/--pythonwarnings.'
E           and: '  usefixtures (args):   List of default fixtures to be used with this project'
E           and: '  python_files (args):  Glob-style file patterns for Python test module discovery'
E           and: '  python_classes (args):'
E           and: '                        Prefixes or glob names for Python test class discovery'
E           and: '  python_functions (args):'
E           and: '                        Prefixes or glob names for Python test function and method discovery'
E           and: '  disable_test_id_escaping_and_forfeit_all_rights_to_community_support (bool):'
E           and: '                        Disable string escape non-ASCII characters, might cause unwanted side effects(use at your own risk)'
E           and: '  console_output_style (string):'
E           and: '                        Console output: "classic", or with additional progress information ("progress" (percentage) | "count" | "progress-even-when-capture-no" (forces progress even when capture=no)'
E           and: '  xfail_strict (bool):  Default for the strict parameter of xfail markers when not given explicitly (default: False)'
E           and: '  tmp_path_retention_count (string):'
E           and: '                        How many sessions should we keep the `tmp_path` directories, according to `tmp_path_retention_policy`.'
E           and: '  tmp_path_retention_policy (string):'
E           and: '                        Controls which directories created by the `tmp_path` fixture are kept around, based on test outcome. (all/failed/none)'
E           and: '  enable_assertion_pass_hook (bool):'
E           and: '                        Enables the pytest_assertion_pass hook. Make sure to delete any previously generated pyc cache files.'
E           and: '  junit_suite_name (string):'
E           and: '                        Test suite name for JUnit report'
E           and: '  junit_logging (string):'
E           and: '                        Write captured log messages to JUnit report: one of no|log|system-out|system-err|out-err|all'
E           and: '  junit_log_passing_tests (bool):'
E           and: '                        Capture log information for passing tests to JUnit report:'
E           and: '  junit_duration_report (string):'
E           and: '                        Duration time to report: one of total|call'
E           and: '  junit_family (string):'
E           and: '                        Emit XML for schema: one of legacy|xunit1|xunit2'
E           and: '  doctest_optionflags (args):'
E           and: '                        Option flags for doctests'
E           and: '  doctest_encoding (string):'
E           and: '                        Encoding used for doctest files'
E           and: '  cache_dir (string):   Cache directory path'
E           and: '  log_level (string):   Default value for --log-level'
E           and: '  log_format (string):  Default value for --log-format'
E           and: '  log_date_format (string):'
E           and: '                        Default value for --log-date-format'
E           and: '  log_cli (bool):       Enable log display during test run (also known as "live logging")'
E           and: '  log_cli_level (string):'
E           and: '                        Default value for --log-cli-level'
E           and: '  log_cli_format (string):'
E           and: '                        Default value for --log-cli-format'
E           and: '  log_cli_date_format (string):'
E           and: '                        Default value for --log-cli-date-format'
E           and: '  log_file (string):    Default value for --log-file'
E           and: '  log_file_level (string):'
E           and: '                        Default value for --log-file-level'
E           and: '  log_file_format (string):'
E           and: '                        Default value for --log-file-format'
E           and: '  log_file_date_format (string):'
E           and: '                        Default value for --log-file-date-format'
E           and: '  log_auto_indent (string):'
E           and: '                        Default value for --log-auto-indent'
E           and: '  pythonpath (paths):   Add paths to sys.path'
E           and: '  faulthandler_timeout (string):'
E           and: '                        Dump the traceback of all threads if a test takes more than TIMEOUT seconds to finish'
E           and: '  addopts (args):       Extra command line options'
E           and: '  minversion (string):  Minimally required pytest version'
E           and: '  required_plugins (args):'
E           and: '                        Plugins that must be present for pytest to run'
E           and: ''
E           and: 'Environment variables:'
E           and: '  PYTEST_ADDOPTS           Extra command line options'
E           and: '  PYTEST_PLUGINS           Comma-separated plugins to load during startup'
E           and: '  PYTEST_DISABLE_PLUGIN_AUTOLOAD Set to disable plugin auto-loading'
E           and: "  PYTEST_DEBUG             Set to enable debug tracing of pytest's internals"
E           and: ''
E           and: ''
E           and: 'to see available markers type: pytest --markers'
E           and: 'to see available fixtures type: pytest --fixtures'
E           and: "(shown according to specified file_or_dir or current dir if not specified; fixtures with leading '_' are only shown with the '-v' option"
E       remains unmatched: '  -m MARKEXPR           Only run tests matching given mark expression. For'

/home/ubuntu/pytest/testing/test_helpconfig.py:31: Failed
------------------------------------------------------------------------------------------ Captured stdout call ------------------------------------------------------------------------------------------
usage: pytest [options] [file_or_dir] [file_or_dir] [...]

positional arguments:
  file_or_dir

general:
  -k EXPRESSION         Only run tests which match the given substring expression. An expression is a Python evaluatable expression where all names are substring-matched against test names and their
                        parent classes. Example: -k 'test_method or test_other' matches all test functions and classes whose name contains 'test_method' or 'test_other', while -k 'not test_method'
                        matches those that don't contain 'test_method' in their names. -k 'not test_method and not test_other' will eliminate the matches. Additionally keywords are matched to classes
                        and functions containing extra names in their 'extra_keyword_matches' set, as well as functions which have names assigned directly to them. The matching is case-insensitive.
  -m MARKEXPR           Only run tests matching given mark expression. For example: -m 'mark1 and not mark2'.
  --markers             show markers (builtin, plugin and per-project ones).
  -x, --exitfirst       Exit instantly on first error or failed test
  --fixtures, --funcargs
                        Show available fixtures, sorted by plugin appearance (fixtures with leading '_' are only shown with '-v')
  --fixtures-per-test   Show fixtures per test
  --pdb                 Start the interactive Python debugger on errors or KeyboardInterrupt
  --pdbcls=modulename:classname
                        Specify a custom interactive Python debugger for use with --pdb.For example: --pdbcls=IPython.terminal.debugger:TerminalPdb
  --trace               Immediately break when running each test
  --capture=method      Per-test capturing method: one of fd|sys|no|tee-sys
  -s                    Shortcut for --capture=no
  --runxfail            Report the results of xfail tests as if they were not marked
  --lf, --last-failed   Rerun only the tests that failed at the last run (or all if none failed)
  --ff, --failed-first  Run all tests, but run the last failures first. This may re-order tests and thus lead to repeated fixture setup/teardown.
  --nf, --new-first     Run tests from new files first, then the rest of the tests sorted by file mtime
  --cache-show=[CACHESHOW]
                        Show cache contents, don't perform collection or tests. Optional argument: glob (default: '*').
  --cache-clear         Remove all cache contents at start of test run
  --lfnf={all,none}, --last-failed-no-failures={all,none}
                        Which tests to run with no previously (known) failures
  --sw, --stepwise      Exit on test failure and continue from last failing test next time
  --sw-skip, --stepwise-skip
                        Ignore the first failing test but stop on the next failing test. Implicitly enables --stepwise.

Reporting:
  --durations=N         Show N slowest setup/test durations (N=0 for all)
  --durations-min=N     Minimal duration in seconds for inclusion in slowest list. Default: 0.005.
  -v, --verbose         Increase verbosity
  --no-header           Disable header
  --no-summary          Disable summary
  -q, --quiet           Decrease verbosity
  --verbosity=VERBOSE   Set verbosity. Default: 0.
  -r chars              Show extra test summary info as specified by chars: (f)ailed, (E)rror, (s)kipped, (x)failed, (X)passed, (p)assed, (P)assed with output, (a)ll except passed (p/P), or (A)ll.
                        (w)arnings are enabled by default (see --disable-warnings), 'N' can be used to reset the list. (default: 'fE').
  --disable-warnings, --disable-pytest-warnings
                        Disable warnings summary
  -l, --showlocals      Show locals in tracebacks (disabled by default)
  --no-showlocals       Hide locals in tracebacks (negate --showlocals passed through addopts)
  --tb=style            Traceback print mode (auto/long/short/line/native/no)
  --show-capture={no,stdout,stderr,log,all}
                        Controls how captured stdout/stderr/log is shown on failed tests. Default: all.
  --full-trace          Don't cut any tracebacks (default is to cut)
  --color=color         Color terminal output (yes/no/auto)
  --code-highlight={yes,no}
                        Whether code should be highlighted (only if --color is also enabled). Default: yes.
  --pastebin=mode       Send failed|all info to bpaste.net pastebin service
  --junit-xml=path      Create junit-xml style report file at given path
  --junit-prefix=str    Prepend prefix to classnames in junit-xml output

pytest-warnings:
  -W PYTHONWARNINGS, --pythonwarnings=PYTHONWARNINGS
                        Set which warnings to report, see -W option of Python itself
  --maxfail=num         Exit after first num failures or errors
  --strict-config       Any warnings encountered while parsing the `pytest` section of the configuration file raise errors
  --strict-markers      Markers not registered in the `markers` section of the configuration file raise errors
  --strict              (Deprecated) alias to --strict-markers
  -c file               Load configuration from `file` instead of trying to locate one of the implicit configuration files
  --continue-on-collection-errors
                        Force test execution even if collection errors occur
  --rootdir=ROOTDIR     Define root directory for tests. Can be relative path: 'root_dir', './root_dir', 'root_dir/another_dir/'; absolute path: '/home/user/root_dir'; path with variables:
                        '$HOME/root_dir'.

collection:
  --collect-only, --co  Only collect tests, don't execute them
  --pyargs              Try to interpret all arguments as Python packages
  --ignore=path         Ignore path during collection (multi-allowed)
  --ignore-glob=path    Ignore path pattern during collection (multi-allowed)
  --deselect=nodeid_prefix
                        Deselect item (via node id prefix) during collection (multi-allowed)
  --confcutdir=dir      Only load conftest.py's relative to specified dir
  --noconftest          Don't load any conftest.py files
  --keep-duplicates     Keep duplicate tests
  --collect-in-virtualenv
                        Don't ignore tests in a local virtualenv directory
  --import-mode={prepend,append,importlib}
                        Prepend/append to sys.path when importing test modules and conftest files. Default: prepend.
  --doctest-modules     Run doctests in all .py modules
  --doctest-report={none,cdiff,ndiff,udiff,only_first_failure}
                        Choose another output format for diffs on doctest failure
  --doctest-glob=pat    Doctests file matching pattern, default: test*.txt
  --doctest-ignore-import-errors
                        Ignore doctest ImportErrors
  --doctest-continue-on-failure
                        For a given doctest, continue to run after the first failure

test session debugging and configuration:
  --basetemp=dir        Base temporary directory for this test run. (Warning: this directory is removed if it exists.)
  -V, --version         Display pytest version and information about plugins. When given twice, also display information about plugins.
  -h, --help            Show help message and configuration info
  -p name               Early-load given plugin module name or entry point (multi-allowed). To avoid loading of plugins, use the `no:` prefix, e.g. `no:doctest`.
  --trace-config        Trace considerations of conftest.py files
  --debug=[DEBUG_FILE_NAME]
                        Store internal tracing debug information in this log file. This file is opened with 'w' and truncated as a result, care advised. Default: pytestdebug.log.
  -o OVERRIDE_INI, --override-ini=OVERRIDE_INI
                        Override ini option with "option=value" style, e.g. `-o xfail_strict=True -o cache_dir=cache`.
  --assert=MODE         Control assertion debugging tools.
                        'plain' performs no assertion debugging.
                        'rewrite' (the default) rewrites assert statements in test modules on import to provide assert expression information.
  --setup-only          Only setup fixtures, do not execute tests
  --setup-show          Show setup of fixtures while executing tests
  --setup-plan          Show what fixtures and tests would be executed but don't execute anything

logging:
  --log-level=LEVEL     Level of messages to catch/display. Not set by default, so it depends on the root/parent log handler's effective level, where it is "WARNING" by default.
  --log-format=LOG_FORMAT
                        Log format used by the logging module
  --log-date-format=LOG_DATE_FORMAT
                        Log date format used by the logging module
  --log-cli-level=LOG_CLI_LEVEL
                        CLI logging level
  --log-cli-format=LOG_CLI_FORMAT
                        Log format used by the logging module
  --log-cli-date-format=LOG_CLI_DATE_FORMAT
                        Log date format used by the logging module
  --log-file=LOG_FILE   Path to a file when logging will be written to
  --log-file-level=LOG_FILE_LEVEL
                        Log file logging level
  --log-file-format=LOG_FILE_FORMAT
                        Log format used by the logging module
  --log-file-date-format=LOG_FILE_DATE_FORMAT
                        Log date format used by the logging module
  --log-auto-indent=LOG_AUTO_INDENT
                        Auto-indent multiline messages passed to the logging module. Accepts true|on, false|off or an integer.
  --log-disable=LOGGER_DISABLE
                        Disable a logger by name. Can be passed multiple times.

[pytest] ini-options in the first pytest.ini|tox.ini|setup.cfg|pyproject.toml file found:

  markers (linelist):   Markers for test functions
  empty_parameter_set_mark (string):
                        Default marker for empty parametersets
  norecursedirs (args): Directory patterns to avoid for recursion
  testpaths (args):     Directories to search for tests when no files or directories are given on the command line
  filterwarnings (linelist):
                        Each line specifies a pattern for warnings.filterwarnings. Processed after -W/--pythonwarnings.
  usefixtures (args):   List of default fixtures to be used with this project
  python_files (args):  Glob-style file patterns for Python test module discovery
  python_classes (args):
                        Prefixes or glob names for Python test class discovery
  python_functions (args):
                        Prefixes or glob names for Python test function and method discovery
  disable_test_id_escaping_and_forfeit_all_rights_to_community_support (bool):
                        Disable string escape non-ASCII characters, might cause unwanted side effects(use at your own risk)
  console_output_style (string):
                        Console output: "classic", or with additional progress information ("progress" (percentage) | "count" | "progress-even-when-capture-no" (forces progress even when capture=no)
  xfail_strict (bool):  Default for the strict parameter of xfail markers when not given explicitly (default: False)
  tmp_path_retention_count (string):
                        How many sessions should we keep the `tmp_path` directories, according to `tmp_path_retention_policy`.
  tmp_path_retention_policy (string):
                        Controls which directories created by the `tmp_path` fixture are kept around, based on test outcome. (all/failed/none)
  enable_assertion_pass_hook (bool):
                        Enables the pytest_assertion_pass hook. Make sure to delete any previously generated pyc cache files.
  junit_suite_name (string):
                        Test suite name for JUnit report
  junit_logging (string):
                        Write captured log messages to JUnit report: one of no|log|system-out|system-err|out-err|all
  junit_log_passing_tests (bool):
                        Capture log information for passing tests to JUnit report:
  junit_duration_report (string):
                        Duration time to report: one of total|call
  junit_family (string):
                        Emit XML for schema: one of legacy|xunit1|xunit2
  doctest_optionflags (args):
                        Option flags for doctests
  doctest_encoding (string):
                        Encoding used for doctest files
  cache_dir (string):   Cache directory path
  log_level (string):   Default value for --log-level
  log_format (string):  Default value for --log-format
  log_date_format (string):
                        Default value for --log-date-format
  log_cli (bool):       Enable log display during test run (also known as "live logging")
  log_cli_level (string):
                        Default value for --log-cli-level
  log_cli_format (string):
                        Default value for --log-cli-format
  log_cli_date_format (string):
                        Default value for --log-cli-date-format
  log_file (string):    Default value for --log-file
  log_file_level (string):
                        Default value for --log-file-level
  log_file_format (string):
                        Default value for --log-file-format
  log_file_date_format (string):
                        Default value for --log-file-date-format
  log_auto_indent (string):
                        Default value for --log-auto-indent
  pythonpath (paths):   Add paths to sys.path
  faulthandler_timeout (string):
                        Dump the traceback of all threads if a test takes more than TIMEOUT seconds to finish
  addopts (args):       Extra command line options
  minversion (string):  Minimally required pytest version
  required_plugins (args):
                        Plugins that must be present for pytest to run

Environment variables:
  PYTEST_ADDOPTS           Extra command line options
  PYTEST_PLUGINS           Comma-separated plugins to load during startup
  PYTEST_DISABLE_PLUGIN_AUTOLOAD Set to disable plugin auto-loading
  PYTEST_DEBUG             Set to enable debug tracing of pytest's internals


to see available markers type: pytest --markers
to see available fixtures type: pytest --fixtures
(shown according to specified file_or_dir or current dir if not specified; fixtures with leading '_' are only shown with the '-v' option
_________________________________________________________________________________ TestTerminal.test_verbose_skip_reason __________________________________________________________________________________

self = <test_terminal.TestTerminal object at 0x7faf037b1050>, pytester = <Pytester PosixPath('/tmp/pytest-of-ubuntu/pytest-0/test_verbose_skip_reason0')>

    def test_verbose_skip_reason(self, pytester: Pytester) -> None:
        pytester.makepyfile(
            """
            import pytest

            @pytest.mark.skip(reason="123")
            def test_1():
                pass

            @pytest.mark.xfail(reason="456")
            def test_2():
                pass

            @pytest.mark.xfail(reason="789")
            def test_3():
                assert False

            @pytest.mark.xfail(reason="")
            def test_4():
                assert False

            @pytest.mark.skip
            def test_5():
                pass

            @pytest.mark.xfail
            def test_6():
                pass

            def test_7():
                pytest.skip()

            def test_8():
                pytest.skip("888 is great")

            def test_9():
                pytest.xfail()

            def test_10():
                pytest.xfail("It's 🕙 o'clock")

            @pytest.mark.skip(
                reason="cannot do foobar because baz is missing due to I don't know what"
            )
            def test_long_skip():
                pass

            @pytest.mark.xfail(
                reason="cannot do foobar because baz is missing due to I don't know what"
            )
            def test_long_xfail():
                print(1 / 0)
        """
        )

        common_output = [
            "test_verbose_skip_reason.py::test_1 SKIPPED (123) *",
            "test_verbose_skip_reason.py::test_2 XPASS (456) *",
            "test_verbose_skip_reason.py::test_3 XFAIL (789) *",
            "test_verbose_skip_reason.py::test_4 XFAIL  *",
            "test_verbose_skip_reason.py::test_5 SKIPPED (unconditional skip) *",
            "test_verbose_skip_reason.py::test_6 XPASS  *",
            "test_verbose_skip_reason.py::test_7 SKIPPED  *",
            "test_verbose_skip_reason.py::test_8 SKIPPED (888 is great) *",
            "test_verbose_skip_reason.py::test_9 XFAIL  *",
            "test_verbose_skip_reason.py::test_10 XFAIL (It's 🕙 o'clock) *",
        ]

        result = pytester.runpytest("-v")
>       result.stdout.fnmatch_lines(
            common_output
            + [
                "test_verbose_skip_reason.py::test_long_skip SKIPPED (cannot *...) *",
                "test_verbose_skip_reason.py::test_long_xfail XFAIL (cannot *...) *",
            ]
        )
E       Failed: nomatch: 'test_verbose_skip_reason.py::test_1 SKIPPED (123) *'
E           and: '========================================================================================== test session starts ==========================================================================================='
E           and: 'platform linux -- Python 3.11.2, pytest-7.4.0.dev41+g762bb6156, pluggy-1.0.0 -- /home/ubuntu/pytest/.tox/py311/bin/python'
E           and: 'cachedir: .pytest_cache'
E           and: 'rootdir: /tmp/pytest-of-ubuntu/pytest-0/test_verbose_skip_reason0'
E           and: 'collecting ... collected 12 items'
E           and: ''
E       fnmatch: 'test_verbose_skip_reason.py::test_1 SKIPPED (123) *'
E          with: 'test_verbose_skip_reason.py::test_1 SKIPPED (123)                                                                                                                                                  [  8%]'
E       fnmatch: 'test_verbose_skip_reason.py::test_2 XPASS (456) *'
E          with: 'test_verbose_skip_reason.py::test_2 XPASS (456)                                                                                                                                                    [ 16%]'
E       fnmatch: 'test_verbose_skip_reason.py::test_3 XFAIL (789) *'
E          with: 'test_verbose_skip_reason.py::test_3 XFAIL (789)                                                                                                                                                    [ 25%]'
E       fnmatch: 'test_verbose_skip_reason.py::test_4 XFAIL  *'
E          with: 'test_verbose_skip_reason.py::test_4 XFAIL                                                                                                                                                          [ 33%]'
E       fnmatch: 'test_verbose_skip_reason.py::test_5 SKIPPED (unconditional skip) *'
E          with: 'test_verbose_skip_reason.py::test_5 SKIPPED (unconditional skip)                                                                                                                                   [ 41%]'
E       fnmatch: 'test_verbose_skip_reason.py::test_6 XPASS  *'
E          with: 'test_verbose_skip_reason.py::test_6 XPASS                                                                                                                                                          [ 50%]'
E       fnmatch: 'test_verbose_skip_reason.py::test_7 SKIPPED  *'
E          with: 'test_verbose_skip_reason.py::test_7 SKIPPED                                                                                                                                                        [ 58%]'
E       fnmatch: 'test_verbose_skip_reason.py::test_8 SKIPPED (888 is great) *'
E          with: 'test_verbose_skip_reason.py::test_8 SKIPPED (888 is great)                                                                                                                                         [ 66%]'
E       fnmatch: 'test_verbose_skip_reason.py::test_9 XFAIL  *'
E          with: 'test_verbose_skip_reason.py::test_9 XFAIL                                                                                                                                                          [ 75%]'
E       fnmatch: "test_verbose_skip_reason.py::test_10 XFAIL (It's 🕙 o'clock) *"
E          with: "test_verbose_skip_reason.py::test_10 XFAIL (It's 🕙 o'clock)                                                                                                                                       [ 83%]"
E       nomatch: 'test_verbose_skip_reason.py::test_long_skip SKIPPED (cannot *...) *'
E           and: "test_verbose_skip_reason.py::test_long_skip SKIPPED (cannot do foobar because baz is missing due to I don't know what)                                                                             [ 91%]"
E           and: "test_verbose_skip_reason.py::test_long_xfail XFAIL (cannot do foobar because baz is missing due to I don't know what)                                                                              [100%]"
E           and: ''
E           and: '================================================================================ 5 skipped, 5 xfailed, 2 xpassed in 0.02s ================================================================================'
E       remains unmatched: 'test_verbose_skip_reason.py::test_long_skip SKIPPED (cannot *...) *'

/home/ubuntu/pytest/testing/test_terminal.py:417: Failed
------------------------------------------------------------------------------------------ Captured stdout call ------------------------------------------------------------------------------------------
========================================================================================== test session starts ===========================================================================================
platform linux -- Python 3.11.2, pytest-7.4.0.dev41+g762bb6156, pluggy-1.0.0 -- /home/ubuntu/pytest/.tox/py311/bin/python
cachedir: .pytest_cache
rootdir: /tmp/pytest-of-ubuntu/pytest-0/test_verbose_skip_reason0
collecting ... collected 12 items

test_verbose_skip_reason.py::test_1 SKIPPED (123)                                                                                                                                                  [  8%]
test_verbose_skip_reason.py::test_2 XPASS (456)                                                                                                                                                    [ 16%]
test_verbose_skip_reason.py::test_3 XFAIL (789)                                                                                                                                                    [ 25%]
test_verbose_skip_reason.py::test_4 XFAIL                                                                                                                                                          [ 33%]
test_verbose_skip_reason.py::test_5 SKIPPED (unconditional skip)                                                                                                                                   [ 41%]
test_verbose_skip_reason.py::test_6 XPASS                                                                                                                                                          [ 50%]
test_verbose_skip_reason.py::test_7 SKIPPED                                                                                                                                                        [ 58%]
test_verbose_skip_reason.py::test_8 SKIPPED (888 is great)                                                                                                                                         [ 66%]
test_verbose_skip_reason.py::test_9 XFAIL                                                                                                                                                          [ 75%]
test_verbose_skip_reason.py::test_10 XFAIL (It's 🕙 o'clock)                                                                                                                                       [ 83%]
test_verbose_skip_reason.py::test_long_skip SKIPPED (cannot do foobar because baz is missing due to I don't know what)                                                                             [ 91%]
test_verbose_skip_reason.py::test_long_xfail XFAIL (cannot do foobar because baz is missing due to I don't know what)                                                                              [100%]

================================================================================ 5 skipped, 5 xfailed, 2 xpassed in 0.02s ================================================================================
======================================================================================== short test summary info =========================================================================================
FAILED testing/test_config.py::TestDebugOptions::test_debug_help - Failed: nomatch: '*Store internal tracing debug information in this log*'
FAILED testing/test_helpconfig.py::test_help - Failed: nomatch: '  -m MARKEXPR           Only run tests matching given mark expression. For'
FAILED testing/test_terminal.py::TestTerminal::test_verbose_skip_reason - Failed: nomatch: 'test_verbose_skip_reason.py::test_1 SKIPPED (123) *'
================================================================== 3 failed, 3309 passed, 106 skipped, 11 xfailed in 145.64s (0:02:25) ===================================================================
py311: exit 1 (146.28 seconds) /home/ubuntu/pytest> pytest pid=5419
py311: FAIL ✖ in 2 minutes 33.76 seconds
py312: skipped because could not find python interpreter with spec(s): py312
py312: SKIP ⚠ in 0 seconds
pypy3: skipped because could not find python interpreter with spec(s): pypy3
pypy3: SKIP ⚠ in 0 seconds
py37-pexpect: skipped because could not find python interpreter with spec(s): py37
py37-pexpect: SKIP ⚠ in 0 seconds
py37-xdist: skipped because could not find python interpreter with spec(s): py37
py37-xdist: SKIP ⚠ in 0 seconds
py37-unittestextras: skipped because could not find python interpreter with spec(s): py37
py37-unittestextras: SKIP ⚠ in 0 seconds
py37-numpy: skipped because could not find python interpreter with spec(s): py37
py37-numpy: SKIP ⚠ in 0 seconds
py37-pluggymain: skipped because could not find python interpreter with spec(s): py37
py37-pluggymain: SKIP ⚠ in 0 seconds
py37-pylib: skipped because could not find python interpreter with spec(s): py37
py37-pylib: SKIP ⚠ in 0 seconds
doctesting: install_deps> python -I -m pip install PyYAML
doctesting: install_package_deps> python -I -m pip install argcomplete 'attrs>=19.2.0' 'colorama; sys_platform == "win32"' 'exceptiongroup>=1.0.0rc8; python_version < "3.11"' 'hypothesis>=3.56' 'importlib-metadata>=0.12; python_version < "3.8"' iniconfig mock nose packaging 'pluggy<2.0,>=0.12' 'pygments>=2.7.2' requests 'tomli>=1.0.0; python_version < "3.11"' xmlschema
doctesting: install_package> python -I -m pip install --force-reinstall --no-deps /home/ubuntu/pytest/.tox/.tmp/package/3/pytest-7.4.0.dev41+g762bb6156.tar.gz
doctesting: commands[0]> pytest doc/en
========================================================================================== test session starts ===========================================================================================
platform linux -- Python 3.11.2, pytest-7.4.0.dev41+g762bb6156, pluggy-1.0.0
cachedir: /home/ubuntu/pytest/.tox/doctesting/.pytest_cache
rootdir: /home/ubuntu/pytest/doc/en
configfile: pytest.ini
plugins: hypothesis-6.74.1
collected 15 items

doc/en/example/assertion/test_failures.py .                                                                                                                                                        [  6%]
doc/en/example/assertion/test_setup_flow_example.py ..                                                                                                                                             [ 20%]
doc/en/example/assertion/global_testmodule_config/test_hello_world.py .                                                                                                                            [ 26%]
doc/en/example/fixtures/test_fixtures_order_autouse.py .                                                                                                                                           [ 33%]
doc/en/example/fixtures/test_fixtures_order_autouse_multiple_scopes.py ..                                                                                                                          [ 46%]
doc/en/example/fixtures/test_fixtures_order_autouse_temp_effects.py ....                                                                                                                           [ 73%]
doc/en/example/fixtures/test_fixtures_order_dependencies.py .                                                                                                                                      [ 80%]
doc/en/example/fixtures/test_fixtures_order_scope.py .                                                                                                                                             [ 86%]
doc/en/example/fixtures/test_fixtures_request_different_scope.py ..                                                                                                                                [100%]

=========================================================================================== 15 passed in 0.36s ===========================================================================================
doctesting: commands[1]> pytest --doctest-modules --pyargs _pytest
========================================================================================== test session starts ===========================================================================================
platform linux -- Python 3.11.2, pytest-7.4.0.dev41+g762bb6156, pluggy-1.0.0
cachedir: .tox/doctesting/.pytest_cache
rootdir: /home/ubuntu/pytest
configfile: pyproject.toml
plugins: hypothesis-6.74.1
collected 5 items

.tox/doctesting/lib/python3.11/site-packages/_pytest/freeze_support.py .                                                                                                                           [ 20%]
.tox/doctesting/lib/python3.11/site-packages/_pytest/python_api.py ..                                                                                                                              [ 60%]
.tox/doctesting/lib/python3.11/site-packages/_pytest/recwarn.py ..                                                                                                                                 [100%]

=========================================================================================== 5 passed in 0.13s ============================================================================================
doctesting: OK ✔ in 9.3 seconds
plugins: install_deps> python -m pip install --pre -r testing/plugins_integration/requirements.txt
plugins: install_package_deps> python -m pip install --pre argcomplete 'attrs>=19.2.0' 'colorama; sys_platform == "win32"' 'exceptiongroup>=1.0.0rc8; python_version < "3.11"' 'hypothesis>=3.56' 'importlib-metadata>=0.12; python_version < "3.8"' iniconfig mock nose packaging 'pluggy<2.0,>=0.12' 'pygments>=2.7.2' requests 'tomli>=1.0.0; python_version < "3.11"' xmlschema
plugins: install_package> python -m pip install --pre --force-reinstall --no-deps /home/ubuntu/pytest/.tox/.tmp/package/4/pytest-7.4.0.dev41+g762bb6156.tar.gz
plugins: commands[0] /home/ubuntu/pytest/testing/plugins_integration> pip check
No broken requirements found.
plugins: commands[1] /home/ubuntu/pytest/testing/plugins_integration> pytest bdd_wallet.py
Test session starts (platform: linux, Python 3.11.2, pytest 7.4.0.dev41+g762bb6156, pytest-sugar 0.9.7)
cachedir: /home/ubuntu/pytest/.tox/plugins/.pytest_cache
rootdir: /home/ubuntu/pytest/testing/plugins_integration
configfile: pytest.ini
plugins: twisted-1.14.0, xvfb-2.0.0, html-3.2.0, rerunfailures-11.1.2, hypothesis-6.74.1, mock-3.10.0, sugar-0.9.7, flakes-4.0.5, asyncio-0.21.0, django-4.5.2, anyio-3.6.2, metadata-2.0.4, bdd-6.1.1, trio-0.7.0, cov-4.0.0
asyncio: mode=Mode.STRICT
collected 1 item

 bdd_wallet.py ✓                                                                                                                                                                           100% ██████████

Results (0.03s):
       1 passed
plugins: commands[2] /home/ubuntu/pytest/testing/plugins_integration> pytest --cov=. simple_integration.py
Test session starts (platform: linux, Python 3.11.2, pytest 7.4.0.dev41+g762bb6156, pytest-sugar 0.9.7)
cachedir: /home/ubuntu/pytest/.tox/plugins/.pytest_cache
rootdir: /home/ubuntu/pytest/testing/plugins_integration
configfile: pytest.ini
plugins: twisted-1.14.0, xvfb-2.0.0, html-3.2.0, rerunfailures-11.1.2, hypothesis-6.74.1, mock-3.10.0, sugar-0.9.7, flakes-4.0.5, asyncio-0.21.0, django-4.5.2, anyio-3.6.2, metadata-2.0.4, bdd-6.1.1, trio-0.7.0, cov-4.0.0
asyncio: mode=Mode.STRICT
collected 4 items

 simple_integration.py ✓✓✓✓                                                                                                                                                                100% ██████████

---------- coverage: platform linux, python 3.11.2-final-0 -----------
Name                            Stmts   Miss  Cover
---------------------------------------------------
bdd_wallet.py                      25     25     0%
django_settings.py                  1      1     0%
pytest_anyio_integration.py         5      5     0%
pytest_asyncio_integration.py       5      5     0%
pytest_mock_integration.py          2      2     0%
pytest_trio_integration.py          5      5     0%
pytest_twisted_integration.py      11     11     0%
simple_integration.py               6      0   100%
---------------------------------------------------
TOTAL                              60     54    10%


Results (0.08s):
       4 passed
plugins: commands[3] /home/ubuntu/pytest/testing/plugins_integration> pytest --ds=django_settings simple_integration.py
Test session starts (platform: linux, Python 3.11.2, pytest 7.4.0.dev41+g762bb6156, pytest-sugar 0.9.7)
cachedir: /home/ubuntu/pytest/.tox/plugins/.pytest_cache
django: settings: django_settings (from option)
rootdir: /home/ubuntu/pytest/testing/plugins_integration
configfile: pytest.ini
plugins: twisted-1.14.0, xvfb-2.0.0, html-3.2.0, rerunfailures-11.1.2, hypothesis-6.74.1, mock-3.10.0, sugar-0.9.7, flakes-4.0.5, asyncio-0.21.0, django-4.5.2, anyio-3.6.2, metadata-2.0.4, bdd-6.1.1, trio-0.7.0, cov-4.0.0
asyncio: mode=Mode.STRICT
collected 4 items

 simple_integration.py ✓✓✓✓                                                                                                                                                                100% ██████████
============================================================================================ warnings summary ============================================================================================
../../.tox/plugins/lib/python3.11/site-packages/django/conf/__init__.py:241
  /home/ubuntu/pytest/.tox/plugins/lib/python3.11/site-packages/django/conf/__init__.py:241: RemovedInDjango50Warning: The default value of USE_TZ will change from False to True in Django 5.0. Set USE_TZ to False in your project settings if you want to keep the current default behavior.
    warnings.warn(

-- Docs: https://docs.pytest.org/en/stable/how-to/capture-warnings.html

Results (0.04s):
       4 passed
plugins: commands[4] /home/ubuntu/pytest/testing/plugins_integration> pytest --html=simple.html simple_integration.py
Test session starts (platform: linux, Python 3.11.2, pytest 7.4.0.dev41+g762bb6156, pytest-sugar 0.9.7)
cachedir: /home/ubuntu/pytest/.tox/plugins/.pytest_cache
rootdir: /home/ubuntu/pytest/testing/plugins_integration
configfile: pytest.ini
plugins: twisted-1.14.0, xvfb-2.0.0, html-3.2.0, rerunfailures-11.1.2, hypothesis-6.74.1, mock-3.10.0, sugar-0.9.7, flakes-4.0.5, asyncio-0.21.0, django-4.5.2, anyio-3.6.2, metadata-2.0.4, bdd-6.1.1, trio-0.7.0, cov-4.0.0
asyncio: mode=Mode.STRICT
collected 4 items

 simple_integration.py ✓✓✓✓                                                                                                                                                                100% ██████████
-------------------------------------------------------- generated html file: file:///home/ubuntu/pytest/testing/plugins_integration/simple.html ---------------------------------------------------------

Results (0.04s):
       8 passed
plugins: commands[5] /home/ubuntu/pytest/testing/plugins_integration> pytest --reruns 5 simple_integration.py
Test session starts (platform: linux, Python 3.11.2, pytest 7.4.0.dev41+g762bb6156, pytest-sugar 0.9.7)
cachedir: /home/ubuntu/pytest/.tox/plugins/.pytest_cache
rootdir: /home/ubuntu/pytest/testing/plugins_integration
configfile: pytest.ini
plugins: twisted-1.14.0, xvfb-2.0.0, html-3.2.0, rerunfailures-11.1.2, hypothesis-6.74.1, mock-3.10.0, sugar-0.9.7, flakes-4.0.5, asyncio-0.21.0, django-4.5.2, anyio-3.6.2, metadata-2.0.4, bdd-6.1.1, trio-0.7.0, cov-4.0.0
asyncio: mode=Mode.STRICT
collected 4 items

 simple_integration.py ✓✓✓✓                                                                                                                                                                100% ██████████

Results (0.03s):
       4 passed
plugins: commands[6] /home/ubuntu/pytest/testing/plugins_integration> pytest pytest_anyio_integration.py
Test session starts (platform: linux, Python 3.11.2, pytest 7.4.0.dev41+g762bb6156, pytest-sugar 0.9.7)
cachedir: /home/ubuntu/pytest/.tox/plugins/.pytest_cache
rootdir: /home/ubuntu/pytest/testing/plugins_integration
configfile: pytest.ini
plugins: twisted-1.14.0, xvfb-2.0.0, html-3.2.0, rerunfailures-11.1.2, hypothesis-6.74.1, mock-3.10.0, sugar-0.9.7, flakes-4.0.5, asyncio-0.21.0, django-4.5.2, anyio-3.6.2, metadata-2.0.4, bdd-6.1.1, trio-0.7.0, cov-4.0.0
asyncio: mode=Mode.STRICT
collected 2 items

 pytest_anyio_integration.py ✓✓                                                                                                                                                            100% ██████████

Results (0.08s):
       2 passed
plugins: commands[7] /home/ubuntu/pytest/testing/plugins_integration> pytest pytest_asyncio_integration.py
Test session starts (platform: linux, Python 3.11.2, pytest 7.4.0.dev41+g762bb6156, pytest-sugar 0.9.7)
cachedir: /home/ubuntu/pytest/.tox/plugins/.pytest_cache
rootdir: /home/ubuntu/pytest/testing/plugins_integration
configfile: pytest.ini
plugins: twisted-1.14.0, xvfb-2.0.0, html-3.2.0, rerunfailures-11.1.2, hypothesis-6.74.1, mock-3.10.0, sugar-0.9.7, flakes-4.0.5, asyncio-0.21.0, django-4.5.2, anyio-3.6.2, metadata-2.0.4, bdd-6.1.1, trio-0.7.0, cov-4.0.0
asyncio: mode=Mode.STRICT
collected 1 item

 pytest_asyncio_integration.py ✓                                                                                                                                                           100% ██████████

Results (0.03s):
       1 passed
plugins: commands[8] /home/ubuntu/pytest/testing/plugins_integration> pytest pytest_mock_integration.py
Test session starts (platform: linux, Python 3.11.2, pytest 7.4.0.dev41+g762bb6156, pytest-sugar 0.9.7)
cachedir: /home/ubuntu/pytest/.tox/plugins/.pytest_cache
rootdir: /home/ubuntu/pytest/testing/plugins_integration
configfile: pytest.ini
plugins: twisted-1.14.0, xvfb-2.0.0, html-3.2.0, rerunfailures-11.1.2, hypothesis-6.74.1, mock-3.10.0, sugar-0.9.7, flakes-4.0.5, asyncio-0.21.0, django-4.5.2, anyio-3.6.2, metadata-2.0.4, bdd-6.1.1, trio-0.7.0, cov-4.0.0
asyncio: mode=Mode.STRICT
collected 1 item

 pytest_mock_integration.py ✓                                                                                                                                                              100% ██████████

Results (0.03s):
       1 passed
plugins: commands[9] /home/ubuntu/pytest/testing/plugins_integration> pytest pytest_trio_integration.py
Test session starts (platform: linux, Python 3.11.2, pytest 7.4.0.dev41+g762bb6156, pytest-sugar 0.9.7)
cachedir: /home/ubuntu/pytest/.tox/plugins/.pytest_cache
rootdir: /home/ubuntu/pytest/testing/plugins_integration
configfile: pytest.ini
plugins: twisted-1.14.0, xvfb-2.0.0, html-3.2.0, rerunfailures-11.1.2, hypothesis-6.74.1, mock-3.10.0, sugar-0.9.7, flakes-4.0.5, asyncio-0.21.0, django-4.5.2, anyio-3.6.2, metadata-2.0.4, bdd-6.1.1, trio-0.7.0, cov-4.0.0
asyncio: mode=Mode.STRICT
collected 1 item

 pytest_trio_integration.py ✓                                                                                                                                                              100% ██████████
============================================================================================ warnings summary ============================================================================================
pytest_trio_integration.py::test_sleep
  /home/ubuntu/pytest/.tox/plugins/lib/python3.11/site-packages/trio/_core/_wakeup_socketpair.py:56: RuntimeWarning: It looks like Trio's signal handling code might have collided with another library you're using. If you're running Trio in guest mode, then this might mean you should set host_uses_signal_set_wakeup_fd=True. Otherwise, file a bug on Trio and we'll help you figure out what's going on.
    warnings.warn(

-- Docs: https://docs.pytest.org/en/stable/how-to/capture-warnings.html

Results (0.03s):
       1 passed
plugins: commands[10] /home/ubuntu/pytest/testing/plugins_integration> pytest pytest_twisted_integration.py
Test session starts (platform: linux, Python 3.11.2, pytest 7.4.0.dev41+g762bb6156, pytest-sugar 0.9.7)
cachedir: /home/ubuntu/pytest/.tox/plugins/.pytest_cache
rootdir: /home/ubuntu/pytest/testing/plugins_integration
configfile: pytest.ini
plugins: twisted-1.14.0, xvfb-2.0.0, html-3.2.0, rerunfailures-11.1.2, hypothesis-6.74.1, mock-3.10.0, sugar-0.9.7, flakes-4.0.5, asyncio-0.21.0, django-4.5.2, anyio-3.6.2, metadata-2.0.4, bdd-6.1.1, trio-0.7.0, cov-4.0.0
asyncio: mode=Mode.STRICT
collected 2 items

 pytest_twisted_integration.py ✓✓                                                                                                                                                          100% ██████████

Results (0.03s):
       2 passed
plugins: commands[11] /home/ubuntu/pytest/testing/plugins_integration> pytest simple_integration.py --force-sugar --flakes
Test session starts (platform: linux, Python 3.11.2, pytest 7.4.0.dev41+g762bb6156, pytest-sugar 0.9.7)
cachedir: /home/ubuntu/pytest/.tox/plugins/.pytest_cache
rootdir: /home/ubuntu/pytest/testing/plugins_integration
configfile: pytest.ini
plugins: twisted-1.14.0, xvfb-2.0.0, html-3.2.0, rerunfailures-11.1.2, hypothesis-6.74.1, mock-3.10.0, sugar-0.9.7, flakes-4.0.5, asyncio-0.21.0, django-4.5.2, anyio-3.6.2, metadata-2.0.4, bdd-6.1.1, trio-0.7.0, cov-4.0.0
asyncio: mode=Mode.STRICT
collected 5 items

 simple_integration.py ✓✓✓✓✓                                                                                                                                                               100% ██████████

Results (0.03s):
       5 passed
plugins: OK ✔ in 33.77 seconds
py37-freeze: skipped because could not find python interpreter with spec(s): py37
py37-freeze: SKIP ⚠ in 0 seconds
docs: install_deps> python -I -m pip install 'towncrier<21.3.0' -r /home/ubuntu/pytest/doc/en/requirements.txt
docs: install_package_deps> python -I -m pip install argcomplete 'attrs>=19.2.0' 'colorama; sys_platform == "win32"' 'exceptiongroup>=1.0.0rc8; python_version < "3.11"' 'hypothesis>=3.56' 'importlib-metadata>=0.12; python_version < "3.8"' iniconfig mock nose packaging 'pluggy<2.0,>=0.12' 'pygments>=2.7.2' requests 'tomli>=1.0.0; python_version < "3.11"' xmlschema
docs: install_package> python -I -m pip install --force-reinstall --no-deps /home/ubuntu/pytest/.tox/.tmp/package/5/pytest-7.4.0.dev41+g762bb6156-py3-none-any.whl
docs: commands[0]> python scripts/towncrier-draft-to-file.py
Loading template...
Finding news fragments...
Rendering news fragments...
Draft only -- nothing has been written.
What is seen below is what would be written.

docs: commands[1]> sphinx-build -W --keep-going -b html doc/en doc/en/_build/html -t changelog_towncrier_draft
Running Sphinx v5.3.0
making output directory... done
[autosummary] generating autosummary for: _changelog_towncrier_draft.rst, adopt.rst, announce/index.rst, announce/release-2.0.0.rst, announce/release-2.0.1.rst, announce/release-2.0.2.rst, announce/release-2.0.3.rst, announce/release-2.1.0.rst, announce/release-2.1.1.rst, announce/release-2.1.2.rst, ..., reference/customize.rst, reference/exit-codes.rst, reference/fixtures.rst, reference/index.rst, reference/plugin_list.rst, reference/reference.rst, sponsor.rst, talks.rst, tidelift.rst, yieldfixture.rst
loading intersphinx inventory from https://pluggy.readthedocs.io/en/stable/objects.inv...
loading intersphinx inventory from https://docs.python.org/3/objects.inv...
loading intersphinx inventory from https://numpy.org/doc/stable/objects.inv...
loading intersphinx inventory from https://pip.pypa.io/en/stable/objects.inv...
loading intersphinx inventory from https://tox.wiki/en/stable/objects.inv...
loading intersphinx inventory from https://virtualenv.pypa.io/en/stable/objects.inv...
loading intersphinx inventory from https://setuptools.pypa.io/en/stable/objects.inv...
loading intersphinx inventory from https://packaging.python.org/en/latest/objects.inv...
building [mo]: targets for 0 po files that are out of date
building [html]: targets for 222 source files that are out of date
updating environment: [new config] 222 added, 0 changed, 0 removed
reading sources... [100%] yieldfixture
looking for now-outdated files... none found
pickling environment... done
checking consistency... done
preparing documents... done
writing output... [100%] yieldfixture
generating indices... py-modindex done
highlighting module code... [100%] builtins
writing additional pages... search done
copying images... [100%] example/fixtures/test_fixtures_order_autouse_temp_effects.svg
copying static files... done
copying extra files... done
dumping search index in English (code: en)... done
dumping object inventory... done
build succeeded.

The HTML pages are in doc/en/_build/html.
docs: OK ✔ in 30.8 seconds
docs-checklinks: install_deps> python -I -m pip install -r /home/ubuntu/pytest/doc/en/requirements.txt
docs-checklinks: install_package_deps> python -I -m pip install argcomplete 'attrs>=19.2.0' 'colorama; sys_platform == "win32"' 'exceptiongroup>=1.0.0rc8; python_version < "3.11"' 'hypothesis>=3.56' 'importlib-metadata>=0.12; python_version < "3.8"' iniconfig mock nose packaging 'pluggy<2.0,>=0.12' 'pygments>=2.7.2' requests 'tomli>=1.0.0; python_version < "3.11"' xmlschema
docs-checklinks: install_package> python -I -m pip install --force-reinstall --no-deps /home/ubuntu/pytest/.tox/.tmp/package/6/pytest-7.4.0.dev41+g762bb6156-py3-none-any.whl
docs-checklinks: commands[0] /home/ubuntu/pytest/doc/en> sphinx-build -W -q --keep-going -b linkcheck . _build
/home/ubuntu/pytest/doc/en/adopt.rst:56: WARNING: broken link: fixture.html ()
/home/ubuntu/pytest/doc/en/adopt.rst:55: WARNING: broken link: assert.html ()
/home/ubuntu/pytest/doc/en/announce/release-2.2.0.rst:12: WARNING: broken link: http://pytest.org/en/stable/example/how-to/parametrize.html (404 Client Error: Not Found for url: https://pytest.org/en/stable/example/how-to/parametrize.html)
/home/ubuntu/pytest/doc/en/history.rst:120: WARNING: broken link: http://web.archive.org/web/20091012022829/http://codespeak.net/py/dist/test/plugin/how-to/monkeypatch.html (404 Client Error: NOT FOUND for url: http://web.archive.org/web/20091012022829/http://codespeak.net/py/dist/test/plugin/how-to/monkeypatch.html)
/home/ubuntu/pytest/doc/en/adopt.rst:55: WARNING: broken link: https://bitbucket.org/hpk42/pycmd/overview (404 Client Error: Not Found for url: https://bitbucket.org/hpk42/pycmd/overview)
/home/ubuntu/pytest/doc/en/announce/release-2.6.0.rst:21: WARNING: broken link: https://bitbucket.org/pytest-dev/pytest/issues?status=new&status=open&sort=-votes (404 Client Error: Not Found for url: https://bitbucket.org/pytest-dev/pytest/issues?status=new&status=open&sort=-votes)
/home/ubuntu/pytest/doc/en/explanation/goodpractices.rst:111: WARNING: broken link: https://blog.ionelmc.ro/2014/05/25/python-packaging/#the-structure> (Anchor 'the-structure>' not found)
/home/ubuntu/pytest/doc/en/announce/release-2.3.0.rst:97: WARNING: broken link: https://docs.pytest.org/en/6.0.1/faq.html (404 Client Error: Not Found for url: https://docs.pytest.org/en/6.0.1/faq.html)
/home/ubuntu/pytest/doc/en/reference/reference.rst:153: WARNING: broken link: https://github.com/asottile/re-assert#re_assertmatchespattern-str-args-kwargs (Anchor 're_assertmatchespattern-str-args-kwargs' not found)
/home/ubuntu/pytest/doc/en/explanation/goodpractices.rst:288: WARNING: broken link: https://github.com/pytest-dev/pytest-runner#deprecation-notice (Anchor 'deprecation-notice' not found)
/home/ubuntu/pytest/doc/en/history.rst:108: WARNING: broken link: https://github.com/pytest-dev/pytest/blob/main/doc/en/changelog.rst#091 (Anchor '091' not found)
/home/ubuntu/pytest/doc/en/contact.rst:24: WARNING: broken link: https://matrix.to/#/%23pytest:libera.chat (Anchor '/%23pytest:libera.chat' not found)
/home/ubuntu/pytest/doc/en/changelog.rst:4810: WARNING: broken link: https://peps.python.org/pep-0506/#recommended-filter-settings-for-test-runners (Anchor 'recommended-filter-settings-for-test-runners' not found)
/home/ubuntu/pytest/doc/en/history.rst:99: WARNING: broken link: https://pypi.org/project/py/0.8.0-alpha2/#history/ (Anchor 'history/' not found)
/home/ubuntu/pytest/doc/en/contributing.rst:154: WARNING: broken link: https://tox.readthedocs.io/en/latest/config.html#configuration-discovery (Anchor 'configuration-discovery' not found)
/home/ubuntu/pytest/doc/en/contact.rst:24: WARNING: broken link: https://web.libera.chat/#pytest (Anchor 'pytest' not found)
/home/ubuntu/pytest/doc/en/adopt.rst:57: WARNING: broken link: mark.html ()
/home/ubuntu/pytest/doc/en/talks.rst:83: WARNING: broken link: monkeypatch.html ()
/home/ubuntu/pytest/doc/en/adopt.rst:47: WARNING: broken link: nose.html ()
/home/ubuntu/pytest/doc/en/talks.rst:87: WARNING: broken link: parametrize.html#test-generators ()
/home/ubuntu/pytest/doc/en/talks.rst:105: WARNING: broken link: plugins.html ()
/home/ubuntu/pytest/doc/en/adopt.rst:47: WARNING: broken link: unittest.html ()
/home/ubuntu/pytest/doc/en/changelog.rst:210: WARNING: broken link: with-setup-nose ()
/home/ubuntu/pytest/doc/en/adopt.rst:59: WARNING: broken link: xdist.html ()
/home/ubuntu/pytest/doc/en/adopt.rst:56: WARNING: broken link: xunit_setup.html ()
docs-checklinks: exit 1 (104.47 seconds) /home/ubuntu/pytest/doc/en> sphinx-build -W -q --keep-going -b linkcheck . _build pid=10912
docs-checklinks: FAIL ✖ in 1 minute 52.88 seconds
py311-exceptiongroup: install_deps> python -I -m pip install 'exceptiongroup>=1.0.0rc8'
py311-exceptiongroup: install_package_deps> python -I -m pip install argcomplete 'attrs>=19.2.0' 'colorama; sys_platform == "win32"' 'exceptiongroup>=1.0.0rc8; python_version < "3.11"' 'hypothesis>=3.56' 'importlib-metadata>=0.12; python_version < "3.8"' iniconfig mock nose packaging 'pluggy<2.0,>=0.12' 'pygments>=2.7.2' requests 'tomli>=1.0.0; python_version < "3.11"' xmlschema
py311-exceptiongroup: install_package> python -I -m pip install --force-reinstall --no-deps /home/ubuntu/pytest/.tox/.tmp/package/7/pytest-7.4.0.dev41+g762bb6156.tar.gz
py311-exceptiongroup: commands[0]> pytest
========================================================================================== test session starts ===========================================================================================
platform linux -- Python 3.11.2, pytest-7.4.0.dev41+g762bb6156, pluggy-1.0.0
cachedir: .tox/py311-exceptiongroup/.pytest_cache
rootdir: /home/ubuntu/pytest
configfile: pyproject.toml
testpaths: testing
plugins: hypothesis-6.74.1
collected 3429 items

testing/acceptance_test.py .....                                                                                                                                                                   [  0%]
testing/deprecated_test.py .......                                                                                                                                                                 [  0%]
testing/test_argcomplete.py ..                                                                                                                                                                     [  0%]
testing/test_assertion.py .....................................................................                                                                                                    [  2%]
testing/test_assertrewrite.py ............................................                                                                                                                         [  3%]
testing/test_capture.py .............................................................s..                                                                                                           [  5%]
testing/test_collection.py .                                                                                                                                                                       [  5%]
testing/test_compat.py ...........                                                                                                                                                                 [  5%]
testing/test_config.py ......................................................                                                                                                                      [  7%]
testing/test_conftest.py ...........                                                                                                                                                               [  7%]
testing/test_debugging.py .                                                                                                                                                                        [  7%]
testing/test_doctest.py .............                                                                                                                                                              [  8%]
testing/test_entry_points.py .                                                                                                                                                                     [  8%]
testing/test_faulthandler.py ...                                                                                                                                                                   [  8%]
testing/test_findpaths.py ..............s...                                                                                                                                                       [  8%]
testing/test_helpconfig.py .                                                                                                                                                                       [  8%]
testing/test_junitxml.py ....                                                                                                                                                                      [  9%]
testing/test_legacypath.py ....                                                                                                                                                                    [  9%]
testing/test_main.py .....                                                                                                                                                                         [  9%]
testing/test_mark.py ..............                                                                                                                                                                [  9%]
testing/test_mark_expression.py ....................................................................................                                                                               [ 12%]
testing/test_monkeypatch.py ...............................                                                                                                                                        [ 13%]
testing/test_nodes.py ..............                                                                                                                                                               [ 13%]
testing/test_nose.py ..                                                                                                                                                                            [ 13%]
testing/test_parseopt.py ............................                                                                                                                                              [ 14%]
testing/test_pastebin.py ....                                                                                                                                                                      [ 14%]
testing/test_pathlib.py .............................................s.....                                                                                                                        [ 15%]
testing/test_pluginmanager.py .........                                                                                                                                                            [ 16%]
testing/test_pytester.py .....................                                                                                                                                                     [ 16%]
testing/test_recwarn.py ........................................                                                                                                                                   [ 17%]
testing/test_runner.py ..............                                                                                                                                                              [ 18%]
testing/test_scope.py ....                                                                                                                                                                         [ 18%]
testing/test_skipping.py .                                                                                                                                                                         [ 18%]
testing/test_stash.py .                                                                                                                                                                            [ 18%]
testing/test_terminal.py .......................................                                                                                                                                   [ 19%]
testing/test_tmpdir.py ...s...............                                                                                                                                                         [ 20%]
testing/test_warning_types.py ..............                                                                                                                                                       [ 20%]
testing/test_warnings.py .                                                                                                                                                                         [ 20%]
testing/_py/test_local.py .................................................................ss..............s.................x......s.....................................sssssss................. [ 25%]
...........x...                                                                                                                                                                                    [ 26%]
testing/code/test_code.py .................                                                                                                                                                        [ 26%]
testing/code/test_excinfo.py .................s.......s.......................................................................................................                                     [ 30%]
testing/code/test_source.py .......................................................                                                                                                                [ 31%]
testing/freeze/tests/test_trivial.py ..                                                                                                                                                            [ 31%]
testing/io/test_saferepr.py ..............                                                                                                                                                         [ 32%]
testing/io/test_terminalwriter.py .............................................                                                                                                                    [ 33%]
testing/io/test_wcwidth.py .................                                                                                                                                                       [ 34%]
testing/logging/test_fixture.py .........                                                                                                                                                          [ 34%]
testing/logging/test_formatter.py ....                                                                                                                                                             [ 34%]
testing/logging/test_reporting.py ..                                                                                                                                                               [ 34%]
testing/python/approx.py .sss..sssss......................................ssssss................ss........                                                                                         [ 36%]
testing/python/collect.py ..                                                                                                                                                                       [ 37%]
testing/python/fixtures.py ..........                                                                                                                                                              [ 37%]
testing/python/integration.py ....                                                                                                                                                                 [ 37%]
testing/python/metafunc.py .........................................                                                                                                                               [ 38%]
testing/python/raises.py .......................                                                                                                                                                   [ 39%]
testing/freeze/tests/test_doctest.txt .                                                                                                                                                            [ 39%]
testing/acceptance_test.py ..................................................x....................                                                                                                 [ 41%]
testing/deprecated_test.py .............                                                                                                                                                           [ 41%]
testing/test_assertion.py ...................................                                                                                                                                      [ 42%]
testing/test_assertrewrite.py ........................................................                                                                                                             [ 44%]
testing/test_cacheprovider.py ....................................................                                                                                                                 [ 45%]
testing/test_capture.py ......x....................................                                                                                                                                [ 47%]
testing/test_collection.py ...........................x......................................s.................                                                                                    [ 49%]
testing/test_compat.py ..                                                                                                                                                                          [ 49%]
testing/test_config.py .............x...............................................................................................................F                                              [ 53%]
testing/test_conftest.py .............s.............................                                                                                                                               [ 54%]
testing/test_debugging.py .............                                                                                                                                                            [ 55%]
testing/test_doctest.py ..............................................................x..........................................................                                                  [ 58%]
testing/test_error_diffs.py ............                                                                                                                                                           [ 58%]
testing/test_faulthandler.py ...                                                                                                                                                                   [ 58%]
testing/test_helpconfig.py ..F.....                                                                                                                                                                [ 59%]
testing/test_junitxml.py .................................................................................................s...s.......................                                             [ 62%]
testing/test_legacypath.py ..........                                                                                                                                                              [ 63%]
testing/test_link_resolve.py .                                                                                                                                                                     [ 63%]
testing/test_main.py .............                                                                                                                                                                 [ 63%]
testing/test_mark.py ...........................................................x................                                                                                                  [ 65%]
testing/test_monkeypatch.py ....                                                                                                                                                                   [ 65%]
testing/test_nodes.py ....                                                                                                                                                                         [ 65%]
testing/test_nose.py ......................                                                                                                                                                        [ 66%]
testing/test_parseopt.py .                                                                                                                                                                         [ 66%]
testing/test_pastebin.py ...                                                                                                                                                                       [ 66%]
testing/test_pluginmanager.py ................                                                                                                                                                     [ 67%]
testing/test_pytester.py x.........................                                                                                                                                                [ 67%]
testing/test_python_path.py .....                                                                                                                                                                  [ 68%]
testing/test_recwarn.py ..                                                                                                                                                                         [ 68%]
testing/test_reports.py ..................                                                                                                                                                         [ 68%]
testing/test_runner.py .......................x.....................                                                                                                                               [ 70%]
testing/test_runner_xunit.py .............                                                                                                                                                         [ 70%]
testing/test_session.py ........................                                                                                                                                                   [ 71%]
testing/test_setuponly.py ..........................                                                                                                                                               [ 71%]
testing/test_setupplan.py ...                                                                                                                                                                      [ 71%]
testing/test_skipping.py ............................................................................................                                                                              [ 74%]
testing/test_stepwise.py ..............                                                                                                                                                            [ 75%]
testing/test_terminal.py ..............F...............................s.......................................................sss......s......                                                    [ 78%]
testing/test_threadexception.py ....                                                                                                                                                               [ 78%]
testing/test_tmpdir.py ....................                                                                                                                                                        [ 79%]
testing/test_unittest.py ......................sssssss.................................s........                                                                                                   [ 81%]
testing/test_unraisableexception.py ....                                                                                                                                                           [ 81%]
testing/test_warning_types.py .                                                                                                                                                                    [ 81%]
testing/test_warnings.py ...................sss.........                                                                                                                                           [ 82%]
testing/code/test_excinfo.py ...........................                                                                                                                                           [ 83%]
testing/examples/test_issue519.py .                                                                                                                                                                [ 83%]
testing/logging/test_fixture.py .......                                                                                                                                                            [ 83%]
testing/logging/test_reporting.py .........................................                                                                                                                        [ 84%]
testing/python/approx.py .                                                                                                                                                                         [ 84%]
testing/python/collect.py ...........................................................................                                                                                              [ 86%]
testing/python/fixtures.py .......................................................................x............................................................................................... [ 91%]
....s..                                                                                                                                                                                            [ 91%]
testing/python/integration.py ...............                                                                                                                                                      [ 92%]
testing/python/metafunc.py ............................................................                                                                                                            [ 93%]
testing/python/raises.py ...                                                                                                                                                                       [ 94%]
testing/python/show_fixtures_per_test.py ........                                                                                                                                                  [ 94%]
testing/acceptance_test.py ....                                                                                                                                                                    [ 94%]
testing/test_assertion.py ............                                                                                                                                                             [ 94%]
testing/test_assertrewrite.py .........                                                                                                                                                            [ 95%]
testing/test_capture.py ........................                                                                                                                                                   [ 95%]
testing/test_collection.py .                                                                                                                                                                       [ 95%]
testing/test_compat.py s                                                                                                                                                                           [ 95%]
testing/test_config.py ..                                                                                                                                                                          [ 95%]
testing/test_debugging.py sssssssssss.ssssssssssssssss.sss....ssss.sss                                                                                                                             [ 97%]
testing/test_faulthandler.py ..s.                                                                                                                                                                  [ 97%]
testing/test_helpconfig.py ..                                                                                                                                                                      [ 97%]
testing/test_legacypath.py .                                                                                                                                                                       [ 97%]
testing/test_meta.py ...................................................................                                                                                                           [ 99%]
testing/test_pytester.py ....s                                                                                                                                                                     [ 99%]
testing/test_reports.py .                                                                                                                                                                          [ 99%]
testing/test_terminal.py ss..                                                                                                                                                                      [ 99%]
testing/test_unittest.py s.                                                                                                                                                                        [ 99%]
testing/test_warnings.py .........                                                                                                                                                                 [ 99%]
testing/python/collect.py .                                                                                                                                                                        [ 99%]
testing/python/fixtures.py ..                                                                                                                                                                      [100%]

================================================================================================ FAILURES ================================================================================================
____________________________________________________________________________________ TestDebugOptions.test_debug_help ____________________________________________________________________________________

self = <test_config.TestDebugOptions object at 0x7f9c35fa7850>, pytester = <Pytester PosixPath('/tmp/pytest-of-ubuntu/pytest-2/test_debug_help0')>

    def test_debug_help(self, pytester: Pytester) -> None:
        result = pytester.runpytest("-h")
>       result.stdout.fnmatch_lines(
            [
                "*Store internal tracing debug information in this log*",
                "*file. This file is opened with 'w' and truncated as a*",
                "*Default: pytestdebug.log.",
            ]
        )
E       Failed: nomatch: '*Store internal tracing debug information in this log*'
E           and: 'usage: pytest [options] [file_or_dir] [file_or_dir] [...]'
E           and: ''
E           and: 'positional arguments:'
E           and: '  file_or_dir'
E           and: ''
E           and: 'general:'
E           and: '  -k EXPRESSION         Only run tests which match the given substring expression. An expression is a Python evaluatable expression where all names are substring-matched against test names and their'
E           and: "                        parent classes. Example: -k 'test_method or test_other' matches all test functions and classes whose name contains 'test_method' or 'test_other', while -k 'not test_method'"
E           and: "                        matches those that don't contain 'test_method' in their names. -k 'not test_method and not test_other' will eliminate the matches. Additionally keywords are matched to classes"
E           and: "                        and functions containing extra names in their 'extra_keyword_matches' set, as well as functions which have names assigned directly to them. The matching is case-insensitive."
E           and: "  -m MARKEXPR           Only run tests matching given mark expression. For example: -m 'mark1 and not mark2'."
E           and: '  --markers             show markers (builtin, plugin and per-project ones).'
E           and: '  -x, --exitfirst       Exit instantly on first error or failed test'
E           and: '  --fixtures, --funcargs'
E           and: "                        Show available fixtures, sorted by plugin appearance (fixtures with leading '_' are only shown with '-v')"
E           and: '  --fixtures-per-test   Show fixtures per test'
E           and: '  --pdb                 Start the interactive Python debugger on errors or KeyboardInterrupt'
E           and: '  --pdbcls=modulename:classname'
E           and: '                        Specify a custom interactive Python debugger for use with --pdb.For example: --pdbcls=IPython.terminal.debugger:TerminalPdb'
E           and: '  --trace               Immediately break when running each test'
E           and: '  --capture=method      Per-test capturing method: one of fd|sys|no|tee-sys'
E           and: '  -s                    Shortcut for --capture=no'
E           and: '  --runxfail            Report the results of xfail tests as if they were not marked'
E           and: '  --lf, --last-failed   Rerun only the tests that failed at the last run (or all if none failed)'
E           and: '  --ff, --failed-first  Run all tests, but run the last failures first. This may re-order tests and thus lead to repeated fixture setup/teardown.'
E           and: '  --nf, --new-first     Run tests from new files first, then the rest of the tests sorted by file mtime'
E           and: '  --cache-show=[CACHESHOW]'
E           and: "                        Show cache contents, don't perform collection or tests. Optional argument: glob (default: '*')."
E           and: '  --cache-clear         Remove all cache contents at start of test run'
E           and: '  --lfnf={all,none}, --last-failed-no-failures={all,none}'
E           and: '                        Which tests to run with no previously (known) failures'
E           and: '  --sw, --stepwise      Exit on test failure and continue from last failing test next time'
E           and: '  --sw-skip, --stepwise-skip'
E           and: '                        Ignore the first failing test but stop on the next failing test. Implicitly enables --stepwise.'
E           and: ''
E           and: 'Reporting:'
E           and: '  --durations=N         Show N slowest setup/test durations (N=0 for all)'
E           and: '  --durations-min=N     Minimal duration in seconds for inclusion in slowest list. Default: 0.005.'
E           and: '  -v, --verbose         Increase verbosity'
E           and: '  --no-header           Disable header'
E           and: '  --no-summary          Disable summary'
E           and: '  -q, --quiet           Decrease verbosity'
E           and: '  --verbosity=VERBOSE   Set verbosity. Default: 0.'
E           and: '  -r chars              Show extra test summary info as specified by chars: (f)ailed, (E)rror, (s)kipped, (x)failed, (X)passed, (p)assed, (P)assed with output, (a)ll except passed (p/P), or (A)ll.'
E           and: "                        (w)arnings are enabled by default (see --disable-warnings), 'N' can be used to reset the list. (default: 'fE')."
E           and: '  --disable-warnings, --disable-pytest-warnings'
E           and: '                        Disable warnings summary'
E           and: '  -l, --showlocals      Show locals in tracebacks (disabled by default)'
E           and: '  --no-showlocals       Hide locals in tracebacks (negate --showlocals passed through addopts)'
E           and: '  --tb=style            Traceback print mode (auto/long/short/line/native/no)'
E           and: '  --show-capture={no,stdout,stderr,log,all}'
E           and: '                        Controls how captured stdout/stderr/log is shown on failed tests. Default: all.'
E           and: "  --full-trace          Don't cut any tracebacks (default is to cut)"
E           and: '  --color=color         Color terminal output (yes/no/auto)'
E           and: '  --code-highlight={yes,no}'
E           and: '                        Whether code should be highlighted (only if --color is also enabled). Default: yes.'
E           and: '  --pastebin=mode       Send failed|all info to bpaste.net pastebin service'
E           and: '  --junit-xml=path      Create junit-xml style report file at given path'
E           and: '  --junit-prefix=str    Prepend prefix to classnames in junit-xml output'
E           and: ''
E           and: 'pytest-warnings:'
E           and: '  -W PYTHONWARNINGS, --pythonwarnings=PYTHONWARNINGS'
E           and: '                        Set which warnings to report, see -W option of Python itself'
E           and: '  --maxfail=num         Exit after first num failures or errors'
E           and: '  --strict-config       Any warnings encountered while parsing the `pytest` section of the configuration file raise errors'
E           and: '  --strict-markers      Markers not registered in the `markers` section of the configuration file raise errors'
E           and: '  --strict              (Deprecated) alias to --strict-markers'
E           and: '  -c file               Load configuration from `file` instead of trying to locate one of the implicit configuration files'
E           and: '  --continue-on-collection-errors'
E           and: '                        Force test execution even if collection errors occur'
E           and: "  --rootdir=ROOTDIR     Define root directory for tests. Can be relative path: 'root_dir', './root_dir', 'root_dir/another_dir/'; absolute path: '/home/user/root_dir'; path with variables:"
E           and: "                        '$HOME/root_dir'."
E           and: ''
E           and: 'collection:'
E           and: "  --collect-only, --co  Only collect tests, don't execute them"
E           and: '  --pyargs              Try to interpret all arguments as Python packages'
E           and: '  --ignore=path         Ignore path during collection (multi-allowed)'
E           and: '  --ignore-glob=path    Ignore path pattern during collection (multi-allowed)'
E           and: '  --deselect=nodeid_prefix'
E           and: '                        Deselect item (via node id prefix) during collection (multi-allowed)'
E           and: "  --confcutdir=dir      Only load conftest.py's relative to specified dir"
E           and: "  --noconftest          Don't load any conftest.py files"
E           and: '  --keep-duplicates     Keep duplicate tests'
E           and: '  --collect-in-virtualenv'
E           and: "                        Don't ignore tests in a local virtualenv directory"
E           and: '  --import-mode={prepend,append,importlib}'
E           and: '                        Prepend/append to sys.path when importing test modules and conftest files. Default: prepend.'
E           and: '  --doctest-modules     Run doctests in all .py modules'
E           and: '  --doctest-report={none,cdiff,ndiff,udiff,only_first_failure}'
E           and: '                        Choose another output format for diffs on doctest failure'
E           and: '  --doctest-glob=pat    Doctests file matching pattern, default: test*.txt'
E           and: '  --doctest-ignore-import-errors'
E           and: '                        Ignore doctest ImportErrors'
E           and: '  --doctest-continue-on-failure'
E           and: '                        For a given doctest, continue to run after the first failure'
E           and: ''
E           and: 'test session debugging and configuration:'
E           and: '  --basetemp=dir        Base temporary directory for this test run. (Warning: this directory is removed if it exists.)'
E           and: '  -V, --version         Display pytest version and information about plugins. When given twice, also display information about plugins.'
E           and: '  -h, --help            Show help message and configuration info'
E           and: '  -p name               Early-load given plugin module name or entry point (multi-allowed). To avoid loading of plugins, use the `no:` prefix, e.g. `no:doctest`.'
E           and: '  --trace-config        Trace considerations of conftest.py files'
E           and: '  --debug=[DEBUG_FILE_NAME]'
E       fnmatch: '*Store internal tracing debug information in this log*'
E          with: "                        Store internal tracing debug information in this log file. This file is opened with 'w' and truncated as a result, care advised. Default: pytestdebug.log."
E       nomatch: "*file. This file is opened with 'w' and truncated as a*"
E           and: '  -o OVERRIDE_INI, --override-ini=OVERRIDE_INI'
E           and: '                        Override ini option with "option=value" style, e.g. `-o xfail_strict=True -o cache_dir=cache`.'
E           and: '  --assert=MODE         Control assertion debugging tools.'
E           and: "                        'plain' performs no assertion debugging."
E           and: "                        'rewrite' (the default) rewrites assert statements in test modules on import to provide assert expression information."
E           and: '  --setup-only          Only setup fixtures, do not execute tests'
E           and: '  --setup-show          Show setup of fixtures while executing tests'
E           and: "  --setup-plan          Show what fixtures and tests would be executed but don't execute anything"
E           and: ''
E           and: 'logging:'
E           and: '  --log-level=LEVEL     Level of messages to catch/display. Not set by default, so it depends on the root/parent log handler\'s effective level, where it is "WARNING" by default.'
E           and: '  --log-format=LOG_FORMAT'
E           and: '                        Log format used by the logging module'
E           and: '  --log-date-format=LOG_DATE_FORMAT'
E           and: '                        Log date format used by the logging module'
E           and: '  --log-cli-level=LOG_CLI_LEVEL'
E           and: '                        CLI logging level'
E           and: '  --log-cli-format=LOG_CLI_FORMAT'
E           and: '                        Log format used by the logging module'
E           and: '  --log-cli-date-format=LOG_CLI_DATE_FORMAT'
E           and: '                        Log date format used by the logging module'
E           and: '  --log-file=LOG_FILE   Path to a file when logging will be written to'
E           and: '  --log-file-level=LOG_FILE_LEVEL'
E           and: '                        Log file logging level'
E           and: '  --log-file-format=LOG_FILE_FORMAT'
E           and: '                        Log format used by the logging module'
E           and: '  --log-file-date-format=LOG_FILE_DATE_FORMAT'
E           and: '                        Log date format used by the logging module'
E           and: '  --log-auto-indent=LOG_AUTO_INDENT'
E           and: '                        Auto-indent multiline messages passed to the logging module. Accepts true|on, false|off or an integer.'
E           and: '  --log-disable=LOGGER_DISABLE'
E           and: '                        Disable a logger by name. Can be passed multiple times.'
E           and: ''
E           and: '[pytest] ini-options in the first pytest.ini|tox.ini|setup.cfg|pyproject.toml file found:'
E           and: ''
E           and: '  markers (linelist):   Markers for test functions'
E           and: '  empty_parameter_set_mark (string):'
E           and: '                        Default marker for empty parametersets'
E           and: '  norecursedirs (args): Directory patterns to avoid for recursion'
E           and: '  testpaths (args):     Directories to search for tests when no files or directories are given on the command line'
E           and: '  filterwarnings (linelist):'
E           and: '                        Each line specifies a pattern for warnings.filterwarnings. Processed after -W/--pythonwarnings.'
E           and: '  usefixtures (args):   List of default fixtures to be used with this project'
E           and: '  python_files (args):  Glob-style file patterns for Python test module discovery'
E           and: '  python_classes (args):'
E           and: '                        Prefixes or glob names for Python test class discovery'
E           and: '  python_functions (args):'
E           and: '                        Prefixes or glob names for Python test function and method discovery'
E           and: '  disable_test_id_escaping_and_forfeit_all_rights_to_community_support (bool):'
E           and: '                        Disable string escape non-ASCII characters, might cause unwanted side effects(use at your own risk)'
E           and: '  console_output_style (string):'
E           and: '                        Console output: "classic", or with additional progress information ("progress" (percentage) | "count" | "progress-even-when-capture-no" (forces progress even when capture=no)'
E           and: '  xfail_strict (bool):  Default for the strict parameter of xfail markers when not given explicitly (default: False)'
E           and: '  tmp_path_retention_count (string):'
E           and: '                        How many sessions should we keep the `tmp_path` directories, according to `tmp_path_retention_policy`.'
E           and: '  tmp_path_retention_policy (string):'
E           and: '                        Controls which directories created by the `tmp_path` fixture are kept around, based on test outcome. (all/failed/none)'
E           and: '  enable_assertion_pass_hook (bool):'
E           and: '                        Enables the pytest_assertion_pass hook. Make sure to delete any previously generated pyc cache files.'
E           and: '  junit_suite_name (string):'
E           and: '                        Test suite name for JUnit report'
E           and: '  junit_logging (string):'
E           and: '                        Write captured log messages to JUnit report: one of no|log|system-out|system-err|out-err|all'
E           and: '  junit_log_passing_tests (bool):'
E           and: '                        Capture log information for passing tests to JUnit report:'
E           and: '  junit_duration_report (string):'
E           and: '                        Duration time to report: one of total|call'
E           and: '  junit_family (string):'
E           and: '                        Emit XML for schema: one of legacy|xunit1|xunit2'
E           and: '  doctest_optionflags (args):'
E           and: '                        Option flags for doctests'
E           and: '  doctest_encoding (string):'
E           and: '                        Encoding used for doctest files'
E           and: '  cache_dir (string):   Cache directory path'
E           and: '  log_level (string):   Default value for --log-level'
E           and: '  log_format (string):  Default value for --log-format'
E           and: '  log_date_format (string):'
E           and: '                        Default value for --log-date-format'
E           and: '  log_cli (bool):       Enable log display during test run (also known as "live logging")'
E           and: '  log_cli_level (string):'
E           and: '                        Default value for --log-cli-level'
E           and: '  log_cli_format (string):'
E           and: '                        Default value for --log-cli-format'
E           and: '  log_cli_date_format (string):'
E           and: '                        Default value for --log-cli-date-format'
E           and: '  log_file (string):    Default value for --log-file'
E           and: '  log_file_level (string):'
E           and: '                        Default value for --log-file-level'
E           and: '  log_file_format (string):'
E           and: '                        Default value for --log-file-format'
E           and: '  log_file_date_format (string):'
E           and: '                        Default value for --log-file-date-format'
E           and: '  log_auto_indent (string):'
E           and: '                        Default value for --log-auto-indent'
E           and: '  pythonpath (paths):   Add paths to sys.path'
E           and: '  faulthandler_timeout (string):'
E           and: '                        Dump the traceback of all threads if a test takes more than TIMEOUT seconds to finish'
E           and: '  addopts (args):       Extra command line options'
E           and: '  minversion (string):  Minimally required pytest version'
E           and: '  required_plugins (args):'
E           and: '                        Plugins that must be present for pytest to run'
E           and: ''
E           and: 'Environment variables:'
E           and: '  PYTEST_ADDOPTS           Extra command line options'
E           and: '  PYTEST_PLUGINS           Comma-separated plugins to load during startup'
E           and: '  PYTEST_DISABLE_PLUGIN_AUTOLOAD Set to disable plugin auto-loading'
E           and: "  PYTEST_DEBUG             Set to enable debug tracing of pytest's internals"
E           and: ''
E           and: ''
E           and: 'to see available markers type: pytest --markers'
E           and: 'to see available fixtures type: pytest --fixtures'
E           and: "(shown according to specified file_or_dir or current dir if not specified; fixtures with leading '_' are only shown with the '-v' option"
E       remains unmatched: "*file. This file is opened with 'w' and truncated as a*"

/home/ubuntu/pytest/testing/test_config.py:2129: Failed
------------------------------------------------------------------------------------------ Captured stdout call ------------------------------------------------------------------------------------------
usage: pytest [options] [file_or_dir] [file_or_dir] [...]

positional arguments:
  file_or_dir

general:
  -k EXPRESSION         Only run tests which match the given substring expression. An expression is a Python evaluatable expression where all names are substring-matched against test names and their
                        parent classes. Example: -k 'test_method or test_other' matches all test functions and classes whose name contains 'test_method' or 'test_other', while -k 'not test_method'
                        matches those that don't contain 'test_method' in their names. -k 'not test_method and not test_other' will eliminate the matches. Additionally keywords are matched to classes
                        and functions containing extra names in their 'extra_keyword_matches' set, as well as functions which have names assigned directly to them. The matching is case-insensitive.
  -m MARKEXPR           Only run tests matching given mark expression. For example: -m 'mark1 and not mark2'.
  --markers             show markers (builtin, plugin and per-project ones).
  -x, --exitfirst       Exit instantly on first error or failed test
  --fixtures, --funcargs
                        Show available fixtures, sorted by plugin appearance (fixtures with leading '_' are only shown with '-v')
  --fixtures-per-test   Show fixtures per test
  --pdb                 Start the interactive Python debugger on errors or KeyboardInterrupt
  --pdbcls=modulename:classname
                        Specify a custom interactive Python debugger for use with --pdb.For example: --pdbcls=IPython.terminal.debugger:TerminalPdb
  --trace               Immediately break when running each test
  --capture=method      Per-test capturing method: one of fd|sys|no|tee-sys
  -s                    Shortcut for --capture=no
  --runxfail            Report the results of xfail tests as if they were not marked
  --lf, --last-failed   Rerun only the tests that failed at the last run (or all if none failed)
  --ff, --failed-first  Run all tests, but run the last failures first. This may re-order tests and thus lead to repeated fixture setup/teardown.
  --nf, --new-first     Run tests from new files first, then the rest of the tests sorted by file mtime
  --cache-show=[CACHESHOW]
                        Show cache contents, don't perform collection or tests. Optional argument: glob (default: '*').
  --cache-clear         Remove all cache contents at start of test run
  --lfnf={all,none}, --last-failed-no-failures={all,none}
                        Which tests to run with no previously (known) failures
  --sw, --stepwise      Exit on test failure and continue from last failing test next time
  --sw-skip, --stepwise-skip
                        Ignore the first failing test but stop on the next failing test. Implicitly enables --stepwise.

Reporting:
  --durations=N         Show N slowest setup/test durations (N=0 for all)
  --durations-min=N     Minimal duration in seconds for inclusion in slowest list. Default: 0.005.
  -v, --verbose         Increase verbosity
  --no-header           Disable header
  --no-summary          Disable summary
  -q, --quiet           Decrease verbosity
  --verbosity=VERBOSE   Set verbosity. Default: 0.
  -r chars              Show extra test summary info as specified by chars: (f)ailed, (E)rror, (s)kipped, (x)failed, (X)passed, (p)assed, (P)assed with output, (a)ll except passed (p/P), or (A)ll.
                        (w)arnings are enabled by default (see --disable-warnings), 'N' can be used to reset the list. (default: 'fE').
  --disable-warnings, --disable-pytest-warnings
                        Disable warnings summary
  -l, --showlocals      Show locals in tracebacks (disabled by default)
  --no-showlocals       Hide locals in tracebacks (negate --showlocals passed through addopts)
  --tb=style            Traceback print mode (auto/long/short/line/native/no)
  --show-capture={no,stdout,stderr,log,all}
                        Controls how captured stdout/stderr/log is shown on failed tests. Default: all.
  --full-trace          Don't cut any tracebacks (default is to cut)
  --color=color         Color terminal output (yes/no/auto)
  --code-highlight={yes,no}
                        Whether code should be highlighted (only if --color is also enabled). Default: yes.
  --pastebin=mode       Send failed|all info to bpaste.net pastebin service
  --junit-xml=path      Create junit-xml style report file at given path
  --junit-prefix=str    Prepend prefix to classnames in junit-xml output

pytest-warnings:
  -W PYTHONWARNINGS, --pythonwarnings=PYTHONWARNINGS
                        Set which warnings to report, see -W option of Python itself
  --maxfail=num         Exit after first num failures or errors
  --strict-config       Any warnings encountered while parsing the `pytest` section of the configuration file raise errors
  --strict-markers      Markers not registered in the `markers` section of the configuration file raise errors
  --strict              (Deprecated) alias to --strict-markers
  -c file               Load configuration from `file` instead of trying to locate one of the implicit configuration files
  --continue-on-collection-errors
                        Force test execution even if collection errors occur
  --rootdir=ROOTDIR     Define root directory for tests. Can be relative path: 'root_dir', './root_dir', 'root_dir/another_dir/'; absolute path: '/home/user/root_dir'; path with variables:
                        '$HOME/root_dir'.

collection:
  --collect-only, --co  Only collect tests, don't execute them
  --pyargs              Try to interpret all arguments as Python packages
  --ignore=path         Ignore path during collection (multi-allowed)
  --ignore-glob=path    Ignore path pattern during collection (multi-allowed)
  --deselect=nodeid_prefix
                        Deselect item (via node id prefix) during collection (multi-allowed)
  --confcutdir=dir      Only load conftest.py's relative to specified dir
  --noconftest          Don't load any conftest.py files
  --keep-duplicates     Keep duplicate tests
  --collect-in-virtualenv
                        Don't ignore tests in a local virtualenv directory
  --import-mode={prepend,append,importlib}
                        Prepend/append to sys.path when importing test modules and conftest files. Default: prepend.
  --doctest-modules     Run doctests in all .py modules
  --doctest-report={none,cdiff,ndiff,udiff,only_first_failure}
                        Choose another output format for diffs on doctest failure
  --doctest-glob=pat    Doctests file matching pattern, default: test*.txt
  --doctest-ignore-import-errors
                        Ignore doctest ImportErrors
  --doctest-continue-on-failure
                        For a given doctest, continue to run after the first failure

test session debugging and configuration:
  --basetemp=dir        Base temporary directory for this test run. (Warning: this directory is removed if it exists.)
  -V, --version         Display pytest version and information about plugins. When given twice, also display information about plugins.
  -h, --help            Show help message and configuration info
  -p name               Early-load given plugin module name or entry point (multi-allowed). To avoid loading of plugins, use the `no:` prefix, e.g. `no:doctest`.
  --trace-config        Trace considerations of conftest.py files
  --debug=[DEBUG_FILE_NAME]
                        Store internal tracing debug information in this log file. This file is opened with 'w' and truncated as a result, care advised. Default: pytestdebug.log.
  -o OVERRIDE_INI, --override-ini=OVERRIDE_INI
                        Override ini option with "option=value" style, e.g. `-o xfail_strict=True -o cache_dir=cache`.
  --assert=MODE         Control assertion debugging tools.
                        'plain' performs no assertion debugging.
                        'rewrite' (the default) rewrites assert statements in test modules on import to provide assert expression information.
  --setup-only          Only setup fixtures, do not execute tests
  --setup-show          Show setup of fixtures while executing tests
  --setup-plan          Show what fixtures and tests would be executed but don't execute anything

logging:
  --log-level=LEVEL     Level of messages to catch/display. Not set by default, so it depends on the root/parent log handler's effective level, where it is "WARNING" by default.
  --log-format=LOG_FORMAT
                        Log format used by the logging module
  --log-date-format=LOG_DATE_FORMAT
                        Log date format used by the logging module
  --log-cli-level=LOG_CLI_LEVEL
                        CLI logging level
  --log-cli-format=LOG_CLI_FORMAT
                        Log format used by the logging module
  --log-cli-date-format=LOG_CLI_DATE_FORMAT
                        Log date format used by the logging module
  --log-file=LOG_FILE   Path to a file when logging will be written to
  --log-file-level=LOG_FILE_LEVEL
                        Log file logging level
  --log-file-format=LOG_FILE_FORMAT
                        Log format used by the logging module
  --log-file-date-format=LOG_FILE_DATE_FORMAT
                        Log date format used by the logging module
  --log-auto-indent=LOG_AUTO_INDENT
                        Auto-indent multiline messages passed to the logging module. Accepts true|on, false|off or an integer.
  --log-disable=LOGGER_DISABLE
                        Disable a logger by name. Can be passed multiple times.

[pytest] ini-options in the first pytest.ini|tox.ini|setup.cfg|pyproject.toml file found:

  markers (linelist):   Markers for test functions
  empty_parameter_set_mark (string):
                        Default marker for empty parametersets
  norecursedirs (args): Directory patterns to avoid for recursion
  testpaths (args):     Directories to search for tests when no files or directories are given on the command line
  filterwarnings (linelist):
                        Each line specifies a pattern for warnings.filterwarnings. Processed after -W/--pythonwarnings.
  usefixtures (args):   List of default fixtures to be used with this project
  python_files (args):  Glob-style file patterns for Python test module discovery
  python_classes (args):
                        Prefixes or glob names for Python test class discovery
  python_functions (args):
                        Prefixes or glob names for Python test function and method discovery
  disable_test_id_escaping_and_forfeit_all_rights_to_community_support (bool):
                        Disable string escape non-ASCII characters, might cause unwanted side effects(use at your own risk)
  console_output_style (string):
                        Console output: "classic", or with additional progress information ("progress" (percentage) | "count" | "progress-even-when-capture-no" (forces progress even when capture=no)
  xfail_strict (bool):  Default for the strict parameter of xfail markers when not given explicitly (default: False)
  tmp_path_retention_count (string):
                        How many sessions should we keep the `tmp_path` directories, according to `tmp_path_retention_policy`.
  tmp_path_retention_policy (string):
                        Controls which directories created by the `tmp_path` fixture are kept around, based on test outcome. (all/failed/none)
  enable_assertion_pass_hook (bool):
                        Enables the pytest_assertion_pass hook. Make sure to delete any previously generated pyc cache files.
  junit_suite_name (string):
                        Test suite name for JUnit report
  junit_logging (string):
                        Write captured log messages to JUnit report: one of no|log|system-out|system-err|out-err|all
  junit_log_passing_tests (bool):
                        Capture log information for passing tests to JUnit report:
  junit_duration_report (string):
                        Duration time to report: one of total|call
  junit_family (string):
                        Emit XML for schema: one of legacy|xunit1|xunit2
  doctest_optionflags (args):
                        Option flags for doctests
  doctest_encoding (string):
                        Encoding used for doctest files
  cache_dir (string):   Cache directory path
  log_level (string):   Default value for --log-level
  log_format (string):  Default value for --log-format
  log_date_format (string):
                        Default value for --log-date-format
  log_cli (bool):       Enable log display during test run (also known as "live logging")
  log_cli_level (string):
                        Default value for --log-cli-level
  log_cli_format (string):
                        Default value for --log-cli-format
  log_cli_date_format (string):
                        Default value for --log-cli-date-format
  log_file (string):    Default value for --log-file
  log_file_level (string):
                        Default value for --log-file-level
  log_file_format (string):
                        Default value for --log-file-format
  log_file_date_format (string):
                        Default value for --log-file-date-format
  log_auto_indent (string):
                        Default value for --log-auto-indent
  pythonpath (paths):   Add paths to sys.path
  faulthandler_timeout (string):
                        Dump the traceback of all threads if a test takes more than TIMEOUT seconds to finish
  addopts (args):       Extra command line options
  minversion (string):  Minimally required pytest version
  required_plugins (args):
                        Plugins that must be present for pytest to run

Environment variables:
  PYTEST_ADDOPTS           Extra command line options
  PYTEST_PLUGINS           Comma-separated plugins to load during startup
  PYTEST_DISABLE_PLUGIN_AUTOLOAD Set to disable plugin auto-loading
  PYTEST_DEBUG             Set to enable debug tracing of pytest's internals


to see available markers type: pytest --markers
to see available fixtures type: pytest --fixtures
(shown according to specified file_or_dir or current dir if not specified; fixtures with leading '_' are only shown with the '-v' option
_______________________________________________________________________________________________ test_help ________________________________________________________________________________________________

pytester = <Pytester PosixPath('/tmp/pytest-of-ubuntu/pytest-2/test_help0')>

    def test_help(pytester: Pytester) -> None:
        result = pytester.runpytest("--help")
        assert result.ret == 0
>       result.stdout.fnmatch_lines(
            """
              -m MARKEXPR           Only run tests matching given mark expression. For
                                    example: -m 'mark1 and not mark2'.
            Reporting:
              --durations=N *
              -V, --version         Display pytest version and information about plugins.
                                    When given twice, also display information about
                                    plugins.
            *setup.cfg*
            *minversion*
            *to see*markers*pytest --markers*
            *to see*fixtures*pytest --fixtures*
        """
        )
E       Failed: nomatch: '  -m MARKEXPR           Only run tests matching given mark expression. For'
E           and: 'usage: pytest [options] [file_or_dir] [file_or_dir] [...]'
E           and: ''
E           and: 'positional arguments:'
E           and: '  file_or_dir'
E           and: ''
E           and: 'general:'
E           and: '  -k EXPRESSION         Only run tests which match the given substring expression. An expression is a Python evaluatable expression where all names are substring-matched against test names and their'
E           and: "                        parent classes. Example: -k 'test_method or test_other' matches all test functions and classes whose name contains 'test_method' or 'test_other', while -k 'not test_method'"
E           and: "                        matches those that don't contain 'test_method' in their names. -k 'not test_method and not test_other' will eliminate the matches. Additionally keywords are matched to classes"
E           and: "                        and functions containing extra names in their 'extra_keyword_matches' set, as well as functions which have names assigned directly to them. The matching is case-insensitive."
E           and: "  -m MARKEXPR           Only run tests matching given mark expression. For example: -m 'mark1 and not mark2'."
E           and: '  --markers             show markers (builtin, plugin and per-project ones).'
E           and: '  -x, --exitfirst       Exit instantly on first error or failed test'
E           and: '  --fixtures, --funcargs'
E           and: "                        Show available fixtures, sorted by plugin appearance (fixtures with leading '_' are only shown with '-v')"
E           and: '  --fixtures-per-test   Show fixtures per test'
E           and: '  --pdb                 Start the interactive Python debugger on errors or KeyboardInterrupt'
E           and: '  --pdbcls=modulename:classname'
E           and: '                        Specify a custom interactive Python debugger for use with --pdb.For example: --pdbcls=IPython.terminal.debugger:TerminalPdb'
E           and: '  --trace               Immediately break when running each test'
E           and: '  --capture=method      Per-test capturing method: one of fd|sys|no|tee-sys'
E           and: '  -s                    Shortcut for --capture=no'
E           and: '  --runxfail            Report the results of xfail tests as if they were not marked'
E           and: '  --lf, --last-failed   Rerun only the tests that failed at the last run (or all if none failed)'
E           and: '  --ff, --failed-first  Run all tests, but run the last failures first. This may re-order tests and thus lead to repeated fixture setup/teardown.'
E           and: '  --nf, --new-first     Run tests from new files first, then the rest of the tests sorted by file mtime'
E           and: '  --cache-show=[CACHESHOW]'
E           and: "                        Show cache contents, don't perform collection or tests. Optional argument: glob (default: '*')."
E           and: '  --cache-clear         Remove all cache contents at start of test run'
E           and: '  --lfnf={all,none}, --last-failed-no-failures={all,none}'
E           and: '                        Which tests to run with no previously (known) failures'
E           and: '  --sw, --stepwise      Exit on test failure and continue from last failing test next time'
E           and: '  --sw-skip, --stepwise-skip'
E           and: '                        Ignore the first failing test but stop on the next failing test. Implicitly enables --stepwise.'
E           and: ''
E           and: 'Reporting:'
E           and: '  --durations=N         Show N slowest setup/test durations (N=0 for all)'
E           and: '  --durations-min=N     Minimal duration in seconds for inclusion in slowest list. Default: 0.005.'
E           and: '  -v, --verbose         Increase verbosity'
E           and: '  --no-header           Disable header'
E           and: '  --no-summary          Disable summary'
E           and: '  -q, --quiet           Decrease verbosity'
E           and: '  --verbosity=VERBOSE   Set verbosity. Default: 0.'
E           and: '  -r chars              Show extra test summary info as specified by chars: (f)ailed, (E)rror, (s)kipped, (x)failed, (X)passed, (p)assed, (P)assed with output, (a)ll except passed (p/P), or (A)ll.'
E           and: "                        (w)arnings are enabled by default (see --disable-warnings), 'N' can be used to reset the list. (default: 'fE')."
E           and: '  --disable-warnings, --disable-pytest-warnings'
E           and: '                        Disable warnings summary'
E           and: '  -l, --showlocals      Show locals in tracebacks (disabled by default)'
E           and: '  --no-showlocals       Hide locals in tracebacks (negate --showlocals passed through addopts)'
E           and: '  --tb=style            Traceback print mode (auto/long/short/line/native/no)'
E           and: '  --show-capture={no,stdout,stderr,log,all}'
E           and: '                        Controls how captured stdout/stderr/log is shown on failed tests. Default: all.'
E           and: "  --full-trace          Don't cut any tracebacks (default is to cut)"
E           and: '  --color=color         Color terminal output (yes/no/auto)'
E           and: '  --code-highlight={yes,no}'
E           and: '                        Whether code should be highlighted (only if --color is also enabled). Default: yes.'
E           and: '  --pastebin=mode       Send failed|all info to bpaste.net pastebin service'
E           and: '  --junit-xml=path      Create junit-xml style report file at given path'
E           and: '  --junit-prefix=str    Prepend prefix to classnames in junit-xml output'
E           and: ''
E           and: 'pytest-warnings:'
E           and: '  -W PYTHONWARNINGS, --pythonwarnings=PYTHONWARNINGS'
E           and: '                        Set which warnings to report, see -W option of Python itself'
E           and: '  --maxfail=num         Exit after first num failures or errors'
E           and: '  --strict-config       Any warnings encountered while parsing the `pytest` section of the configuration file raise errors'
E           and: '  --strict-markers      Markers not registered in the `markers` section of the configuration file raise errors'
E           and: '  --strict              (Deprecated) alias to --strict-markers'
E           and: '  -c file               Load configuration from `file` instead of trying to locate one of the implicit configuration files'
E           and: '  --continue-on-collection-errors'
E           and: '                        Force test execution even if collection errors occur'
E           and: "  --rootdir=ROOTDIR     Define root directory for tests. Can be relative path: 'root_dir', './root_dir', 'root_dir/another_dir/'; absolute path: '/home/user/root_dir'; path with variables:"
E           and: "                        '$HOME/root_dir'."
E           and: ''
E           and: 'collection:'
E           and: "  --collect-only, --co  Only collect tests, don't execute them"
E           and: '  --pyargs              Try to interpret all arguments as Python packages'
E           and: '  --ignore=path         Ignore path during collection (multi-allowed)'
E           and: '  --ignore-glob=path    Ignore path pattern during collection (multi-allowed)'
E           and: '  --deselect=nodeid_prefix'
E           and: '                        Deselect item (via node id prefix) during collection (multi-allowed)'
E           and: "  --confcutdir=dir      Only load conftest.py's relative to specified dir"
E           and: "  --noconftest          Don't load any conftest.py files"
E           and: '  --keep-duplicates     Keep duplicate tests'
E           and: '  --collect-in-virtualenv'
E           and: "                        Don't ignore tests in a local virtualenv directory"
E           and: '  --import-mode={prepend,append,importlib}'
E           and: '                        Prepend/append to sys.path when importing test modules and conftest files. Default: prepend.'
E           and: '  --doctest-modules     Run doctests in all .py modules'
E           and: '  --doctest-report={none,cdiff,ndiff,udiff,only_first_failure}'
E           and: '                        Choose another output format for diffs on doctest failure'
E           and: '  --doctest-glob=pat    Doctests file matching pattern, default: test*.txt'
E           and: '  --doctest-ignore-import-errors'
E           and: '                        Ignore doctest ImportErrors'
E           and: '  --doctest-continue-on-failure'
E           and: '                        For a given doctest, continue to run after the first failure'
E           and: ''
E           and: 'test session debugging and configuration:'
E           and: '  --basetemp=dir        Base temporary directory for this test run. (Warning: this directory is removed if it exists.)'
E           and: '  -V, --version         Display pytest version and information about plugins. When given twice, also display information about plugins.'
E           and: '  -h, --help            Show help message and configuration info'
E           and: '  -p name               Early-load given plugin module name or entry point (multi-allowed). To avoid loading of plugins, use the `no:` prefix, e.g. `no:doctest`.'
E           and: '  --trace-config        Trace considerations of conftest.py files'
E           and: '  --debug=[DEBUG_FILE_NAME]'
E           and: "                        Store internal tracing debug information in this log file. This file is opened with 'w' and truncated as a result, care advised. Default: pytestdebug.log."
E           and: '  -o OVERRIDE_INI, --override-ini=OVERRIDE_INI'
E           and: '                        Override ini option with "option=value" style, e.g. `-o xfail_strict=True -o cache_dir=cache`.'
E           and: '  --assert=MODE         Control assertion debugging tools.'
E           and: "                        'plain' performs no assertion debugging."
E           and: "                        'rewrite' (the default) rewrites assert statements in test modules on import to provide assert expression information."
E           and: '  --setup-only          Only setup fixtures, do not execute tests'
E           and: '  --setup-show          Show setup of fixtures while executing tests'
E           and: "  --setup-plan          Show what fixtures and tests would be executed but don't execute anything"
E           and: ''
E           and: 'logging:'
E           and: '  --log-level=LEVEL     Level of messages to catch/display. Not set by default, so it depends on the root/parent log handler\'s effective level, where it is "WARNING" by default.'
E           and: '  --log-format=LOG_FORMAT'
E           and: '                        Log format used by the logging module'
E           and: '  --log-date-format=LOG_DATE_FORMAT'
E           and: '                        Log date format used by the logging module'
E           and: '  --log-cli-level=LOG_CLI_LEVEL'
E           and: '                        CLI logging level'
E           and: '  --log-cli-format=LOG_CLI_FORMAT'
E           and: '                        Log format used by the logging module'
E           and: '  --log-cli-date-format=LOG_CLI_DATE_FORMAT'
E           and: '                        Log date format used by the logging module'
E           and: '  --log-file=LOG_FILE   Path to a file when logging will be written to'
E           and: '  --log-file-level=LOG_FILE_LEVEL'
E           and: '                        Log file logging level'
E           and: '  --log-file-format=LOG_FILE_FORMAT'
E           and: '                        Log format used by the logging module'
E           and: '  --log-file-date-format=LOG_FILE_DATE_FORMAT'
E           and: '                        Log date format used by the logging module'
E           and: '  --log-auto-indent=LOG_AUTO_INDENT'
E           and: '                        Auto-indent multiline messages passed to the logging module. Accepts true|on, false|off or an integer.'
E           and: '  --log-disable=LOGGER_DISABLE'
E           and: '                        Disable a logger by name. Can be passed multiple times.'
E           and: ''
E           and: '[pytest] ini-options in the first pytest.ini|tox.ini|setup.cfg|pyproject.toml file found:'
E           and: ''
E           and: '  markers (linelist):   Markers for test functions'
E           and: '  empty_parameter_set_mark (string):'
E           and: '                        Default marker for empty parametersets'
E           and: '  norecursedirs (args): Directory patterns to avoid for recursion'
E           and: '  testpaths (args):     Directories to search for tests when no files or directories are given on the command line'
E           and: '  filterwarnings (linelist):'
E           and: '                        Each line specifies a pattern for warnings.filterwarnings. Processed after -W/--pythonwarnings.'
E           and: '  usefixtures (args):   List of default fixtures to be used with this project'
E           and: '  python_files (args):  Glob-style file patterns for Python test module discovery'
E           and: '  python_classes (args):'
E           and: '                        Prefixes or glob names for Python test class discovery'
E           and: '  python_functions (args):'
E           and: '                        Prefixes or glob names for Python test function and method discovery'
E           and: '  disable_test_id_escaping_and_forfeit_all_rights_to_community_support (bool):'
E           and: '                        Disable string escape non-ASCII characters, might cause unwanted side effects(use at your own risk)'
E           and: '  console_output_style (string):'
E           and: '                        Console output: "classic", or with additional progress information ("progress" (percentage) | "count" | "progress-even-when-capture-no" (forces progress even when capture=no)'
E           and: '  xfail_strict (bool):  Default for the strict parameter of xfail markers when not given explicitly (default: False)'
E           and: '  tmp_path_retention_count (string):'
E           and: '                        How many sessions should we keep the `tmp_path` directories, according to `tmp_path_retention_policy`.'
E           and: '  tmp_path_retention_policy (string):'
E           and: '                        Controls which directories created by the `tmp_path` fixture are kept around, based on test outcome. (all/failed/none)'
E           and: '  enable_assertion_pass_hook (bool):'
E           and: '                        Enables the pytest_assertion_pass hook. Make sure to delete any previously generated pyc cache files.'
E           and: '  junit_suite_name (string):'
E           and: '                        Test suite name for JUnit report'
E           and: '  junit_logging (string):'
E           and: '                        Write captured log messages to JUnit report: one of no|log|system-out|system-err|out-err|all'
E           and: '  junit_log_passing_tests (bool):'
E           and: '                        Capture log information for passing tests to JUnit report:'
E           and: '  junit_duration_report (string):'
E           and: '                        Duration time to report: one of total|call'
E           and: '  junit_family (string):'
E           and: '                        Emit XML for schema: one of legacy|xunit1|xunit2'
E           and: '  doctest_optionflags (args):'
E           and: '                        Option flags for doctests'
E           and: '  doctest_encoding (string):'
E           and: '                        Encoding used for doctest files'
E           and: '  cache_dir (string):   Cache directory path'
E           and: '  log_level (string):   Default value for --log-level'
E           and: '  log_format (string):  Default value for --log-format'
E           and: '  log_date_format (string):'
E           and: '                        Default value for --log-date-format'
E           and: '  log_cli (bool):       Enable log display during test run (also known as "live logging")'
E           and: '  log_cli_level (string):'
E           and: '                        Default value for --log-cli-level'
E           and: '  log_cli_format (string):'
E           and: '                        Default value for --log-cli-format'
E           and: '  log_cli_date_format (string):'
E           and: '                        Default value for --log-cli-date-format'
E           and: '  log_file (string):    Default value for --log-file'
E           and: '  log_file_level (string):'
E           and: '                        Default value for --log-file-level'
E           and: '  log_file_format (string):'
E           and: '                        Default value for --log-file-format'
E           and: '  log_file_date_format (string):'
E           and: '                        Default value for --log-file-date-format'
E           and: '  log_auto_indent (string):'
E           and: '                        Default value for --log-auto-indent'
E           and: '  pythonpath (paths):   Add paths to sys.path'
E           and: '  faulthandler_timeout (string):'
E           and: '                        Dump the traceback of all threads if a test takes more than TIMEOUT seconds to finish'
E           and: '  addopts (args):       Extra command line options'
E           and: '  minversion (string):  Minimally required pytest version'
E           and: '  required_plugins (args):'
E           and: '                        Plugins that must be present for pytest to run'
E           and: ''
E           and: 'Environment variables:'
E           and: '  PYTEST_ADDOPTS           Extra command line options'
E           and: '  PYTEST_PLUGINS           Comma-separated plugins to load during startup'
E           and: '  PYTEST_DISABLE_PLUGIN_AUTOLOAD Set to disable plugin auto-loading'
E           and: "  PYTEST_DEBUG             Set to enable debug tracing of pytest's internals"
E           and: ''
E           and: ''
E           and: 'to see available markers type: pytest --markers'
E           and: 'to see available fixtures type: pytest --fixtures'
E           and: "(shown according to specified file_or_dir or current dir if not specified; fixtures with leading '_' are only shown with the '-v' option"
E       remains unmatched: '  -m MARKEXPR           Only run tests matching given mark expression. For'

/home/ubuntu/pytest/testing/test_helpconfig.py:31: Failed
------------------------------------------------------------------------------------------ Captured stdout call ------------------------------------------------------------------------------------------
usage: pytest [options] [file_or_dir] [file_or_dir] [...]

positional arguments:
  file_or_dir

general:
  -k EXPRESSION         Only run tests which match the given substring expression. An expression is a Python evaluatable expression where all names are substring-matched against test names and their
                        parent classes. Example: -k 'test_method or test_other' matches all test functions and classes whose name contains 'test_method' or 'test_other', while -k 'not test_method'
                        matches those that don't contain 'test_method' in their names. -k 'not test_method and not test_other' will eliminate the matches. Additionally keywords are matched to classes
                        and functions containing extra names in their 'extra_keyword_matches' set, as well as functions which have names assigned directly to them. The matching is case-insensitive.
  -m MARKEXPR           Only run tests matching given mark expression. For example: -m 'mark1 and not mark2'.
  --markers             show markers (builtin, plugin and per-project ones).
  -x, --exitfirst       Exit instantly on first error or failed test
  --fixtures, --funcargs
                        Show available fixtures, sorted by plugin appearance (fixtures with leading '_' are only shown with '-v')
  --fixtures-per-test   Show fixtures per test
  --pdb                 Start the interactive Python debugger on errors or KeyboardInterrupt
  --pdbcls=modulename:classname
                        Specify a custom interactive Python debugger for use with --pdb.For example: --pdbcls=IPython.terminal.debugger:TerminalPdb
  --trace               Immediately break when running each test
  --capture=method      Per-test capturing method: one of fd|sys|no|tee-sys
  -s                    Shortcut for --capture=no
  --runxfail            Report the results of xfail tests as if they were not marked
  --lf, --last-failed   Rerun only the tests that failed at the last run (or all if none failed)
  --ff, --failed-first  Run all tests, but run the last failures first. This may re-order tests and thus lead to repeated fixture setup/teardown.
  --nf, --new-first     Run tests from new files first, then the rest of the tests sorted by file mtime
  --cache-show=[CACHESHOW]
                        Show cache contents, don't perform collection or tests. Optional argument: glob (default: '*').
  --cache-clear         Remove all cache contents at start of test run
  --lfnf={all,none}, --last-failed-no-failures={all,none}
                        Which tests to run with no previously (known) failures
  --sw, --stepwise      Exit on test failure and continue from last failing test next time
  --sw-skip, --stepwise-skip
                        Ignore the first failing test but stop on the next failing test. Implicitly enables --stepwise.

Reporting:
  --durations=N         Show N slowest setup/test durations (N=0 for all)
  --durations-min=N     Minimal duration in seconds for inclusion in slowest list. Default: 0.005.
  -v, --verbose         Increase verbosity
  --no-header           Disable header
  --no-summary          Disable summary
  -q, --quiet           Decrease verbosity
  --verbosity=VERBOSE   Set verbosity. Default: 0.
  -r chars              Show extra test summary info as specified by chars: (f)ailed, (E)rror, (s)kipped, (x)failed, (X)passed, (p)assed, (P)assed with output, (a)ll except passed (p/P), or (A)ll.
                        (w)arnings are enabled by default (see --disable-warnings), 'N' can be used to reset the list. (default: 'fE').
  --disable-warnings, --disable-pytest-warnings
                        Disable warnings summary
  -l, --showlocals      Show locals in tracebacks (disabled by default)
  --no-showlocals       Hide locals in tracebacks (negate --showlocals passed through addopts)
  --tb=style            Traceback print mode (auto/long/short/line/native/no)
  --show-capture={no,stdout,stderr,log,all}
                        Controls how captured stdout/stderr/log is shown on failed tests. Default: all.
  --full-trace          Don't cut any tracebacks (default is to cut)
  --color=color         Color terminal output (yes/no/auto)
  --code-highlight={yes,no}
                        Whether code should be highlighted (only if --color is also enabled). Default: yes.
  --pastebin=mode       Send failed|all info to bpaste.net pastebin service
  --junit-xml=path      Create junit-xml style report file at given path
  --junit-prefix=str    Prepend prefix to classnames in junit-xml output

pytest-warnings:
  -W PYTHONWARNINGS, --pythonwarnings=PYTHONWARNINGS
                        Set which warnings to report, see -W option of Python itself
  --maxfail=num         Exit after first num failures or errors
  --strict-config       Any warnings encountered while parsing the `pytest` section of the configuration file raise errors
  --strict-markers      Markers not registered in the `markers` section of the configuration file raise errors
  --strict              (Deprecated) alias to --strict-markers
  -c file               Load configuration from `file` instead of trying to locate one of the implicit configuration files
  --continue-on-collection-errors
                        Force test execution even if collection errors occur
  --rootdir=ROOTDIR     Define root directory for tests. Can be relative path: 'root_dir', './root_dir', 'root_dir/another_dir/'; absolute path: '/home/user/root_dir'; path with variables:
                        '$HOME/root_dir'.

collection:
  --collect-only, --co  Only collect tests, don't execute them
  --pyargs              Try to interpret all arguments as Python packages
  --ignore=path         Ignore path during collection (multi-allowed)
  --ignore-glob=path    Ignore path pattern during collection (multi-allowed)
  --deselect=nodeid_prefix
                        Deselect item (via node id prefix) during collection (multi-allowed)
  --confcutdir=dir      Only load conftest.py's relative to specified dir
  --noconftest          Don't load any conftest.py files
  --keep-duplicates     Keep duplicate tests
  --collect-in-virtualenv
                        Don't ignore tests in a local virtualenv directory
  --import-mode={prepend,append,importlib}
                        Prepend/append to sys.path when importing test modules and conftest files. Default: prepend.
  --doctest-modules     Run doctests in all .py modules
  --doctest-report={none,cdiff,ndiff,udiff,only_first_failure}
                        Choose another output format for diffs on doctest failure
  --doctest-glob=pat    Doctests file matching pattern, default: test*.txt
  --doctest-ignore-import-errors
                        Ignore doctest ImportErrors
  --doctest-continue-on-failure
                        For a given doctest, continue to run after the first failure

test session debugging and configuration:
  --basetemp=dir        Base temporary directory for this test run. (Warning: this directory is removed if it exists.)
  -V, --version         Display pytest version and information about plugins. When given twice, also display information about plugins.
  -h, --help            Show help message and configuration info
  -p name               Early-load given plugin module name or entry point (multi-allowed). To avoid loading of plugins, use the `no:` prefix, e.g. `no:doctest`.
  --trace-config        Trace considerations of conftest.py files
  --debug=[DEBUG_FILE_NAME]
                        Store internal tracing debug information in this log file. This file is opened with 'w' and truncated as a result, care advised. Default: pytestdebug.log.
  -o OVERRIDE_INI, --override-ini=OVERRIDE_INI
                        Override ini option with "option=value" style, e.g. `-o xfail_strict=True -o cache_dir=cache`.
  --assert=MODE         Control assertion debugging tools.
                        'plain' performs no assertion debugging.
                        'rewrite' (the default) rewrites assert statements in test modules on import to provide assert expression information.
  --setup-only          Only setup fixtures, do not execute tests
  --setup-show          Show setup of fixtures while executing tests
  --setup-plan          Show what fixtures and tests would be executed but don't execute anything

logging:
  --log-level=LEVEL     Level of messages to catch/display. Not set by default, so it depends on the root/parent log handler's effective level, where it is "WARNING" by default.
  --log-format=LOG_FORMAT
                        Log format used by the logging module
  --log-date-format=LOG_DATE_FORMAT
                        Log date format used by the logging module
  --log-cli-level=LOG_CLI_LEVEL
                        CLI logging level
  --log-cli-format=LOG_CLI_FORMAT
                        Log format used by the logging module
  --log-cli-date-format=LOG_CLI_DATE_FORMAT
                        Log date format used by the logging module
  --log-file=LOG_FILE   Path to a file when logging will be written to
  --log-file-level=LOG_FILE_LEVEL
                        Log file logging level
  --log-file-format=LOG_FILE_FORMAT
                        Log format used by the logging module
  --log-file-date-format=LOG_FILE_DATE_FORMAT
                        Log date format used by the logging module
  --log-auto-indent=LOG_AUTO_INDENT
                        Auto-indent multiline messages passed to the logging module. Accepts true|on, false|off or an integer.
  --log-disable=LOGGER_DISABLE
                        Disable a logger by name. Can be passed multiple times.

[pytest] ini-options in the first pytest.ini|tox.ini|setup.cfg|pyproject.toml file found:

  markers (linelist):   Markers for test functions
  empty_parameter_set_mark (string):
                        Default marker for empty parametersets
  norecursedirs (args): Directory patterns to avoid for recursion
  testpaths (args):     Directories to search for tests when no files or directories are given on the command line
  filterwarnings (linelist):
                        Each line specifies a pattern for warnings.filterwarnings. Processed after -W/--pythonwarnings.
  usefixtures (args):   List of default fixtures to be used with this project
  python_files (args):  Glob-style file patterns for Python test module discovery
  python_classes (args):
                        Prefixes or glob names for Python test class discovery
  python_functions (args):
                        Prefixes or glob names for Python test function and method discovery
  disable_test_id_escaping_and_forfeit_all_rights_to_community_support (bool):
                        Disable string escape non-ASCII characters, might cause unwanted side effects(use at your own risk)
  console_output_style (string):
                        Console output: "classic", or with additional progress information ("progress" (percentage) | "count" | "progress-even-when-capture-no" (forces progress even when capture=no)
  xfail_strict (bool):  Default for the strict parameter of xfail markers when not given explicitly (default: False)
  tmp_path_retention_count (string):
                        How many sessions should we keep the `tmp_path` directories, according to `tmp_path_retention_policy`.
  tmp_path_retention_policy (string):
                        Controls which directories created by the `tmp_path` fixture are kept around, based on test outcome. (all/failed/none)
  enable_assertion_pass_hook (bool):
                        Enables the pytest_assertion_pass hook. Make sure to delete any previously generated pyc cache files.
  junit_suite_name (string):
                        Test suite name for JUnit report
  junit_logging (string):
                        Write captured log messages to JUnit report: one of no|log|system-out|system-err|out-err|all
  junit_log_passing_tests (bool):
                        Capture log information for passing tests to JUnit report:
  junit_duration_report (string):
                        Duration time to report: one of total|call
  junit_family (string):
                        Emit XML for schema: one of legacy|xunit1|xunit2
  doctest_optionflags (args):
                        Option flags for doctests
  doctest_encoding (string):
                        Encoding used for doctest files
  cache_dir (string):   Cache directory path
  log_level (string):   Default value for --log-level
  log_format (string):  Default value for --log-format
  log_date_format (string):
                        Default value for --log-date-format
  log_cli (bool):       Enable log display during test run (also known as "live logging")
  log_cli_level (string):
                        Default value for --log-cli-level
  log_cli_format (string):
                        Default value for --log-cli-format
  log_cli_date_format (string):
                        Default value for --log-cli-date-format
  log_file (string):    Default value for --log-file
  log_file_level (string):
                        Default value for --log-file-level
  log_file_format (string):
                        Default value for --log-file-format
  log_file_date_format (string):
                        Default value for --log-file-date-format
  log_auto_indent (string):
                        Default value for --log-auto-indent
  pythonpath (paths):   Add paths to sys.path
  faulthandler_timeout (string):
                        Dump the traceback of all threads if a test takes more than TIMEOUT seconds to finish
  addopts (args):       Extra command line options
  minversion (string):  Minimally required pytest version
  required_plugins (args):
                        Plugins that must be present for pytest to run

Environment variables:
  PYTEST_ADDOPTS           Extra command line options
  PYTEST_PLUGINS           Comma-separated plugins to load during startup
  PYTEST_DISABLE_PLUGIN_AUTOLOAD Set to disable plugin auto-loading
  PYTEST_DEBUG             Set to enable debug tracing of pytest's internals


to see available markers type: pytest --markers
to see available fixtures type: pytest --fixtures
(shown according to specified file_or_dir or current dir if not specified; fixtures with leading '_' are only shown with the '-v' option
_________________________________________________________________________________ TestTerminal.test_verbose_skip_reason __________________________________________________________________________________

self = <test_terminal.TestTerminal object at 0x7f9c35146f90>, pytester = <Pytester PosixPath('/tmp/pytest-of-ubuntu/pytest-2/test_verbose_skip_reason0')>

    def test_verbose_skip_reason(self, pytester: Pytester) -> None:
        pytester.makepyfile(
            """
            import pytest

            @pytest.mark.skip(reason="123")
            def test_1():
                pass

            @pytest.mark.xfail(reason="456")
            def test_2():
                pass

            @pytest.mark.xfail(reason="789")
            def test_3():
                assert False

            @pytest.mark.xfail(reason="")
            def test_4():
                assert False

            @pytest.mark.skip
            def test_5():
                pass

            @pytest.mark.xfail
            def test_6():
                pass

            def test_7():
                pytest.skip()

            def test_8():
                pytest.skip("888 is great")

            def test_9():
                pytest.xfail()

            def test_10():
                pytest.xfail("It's 🕙 o'clock")

            @pytest.mark.skip(
                reason="cannot do foobar because baz is missing due to I don't know what"
            )
            def test_long_skip():
                pass

            @pytest.mark.xfail(
                reason="cannot do foobar because baz is missing due to I don't know what"
            )
            def test_long_xfail():
                print(1 / 0)
        """
        )

        common_output = [
            "test_verbose_skip_reason.py::test_1 SKIPPED (123) *",
            "test_verbose_skip_reason.py::test_2 XPASS (456) *",
            "test_verbose_skip_reason.py::test_3 XFAIL (789) *",
            "test_verbose_skip_reason.py::test_4 XFAIL  *",
            "test_verbose_skip_reason.py::test_5 SKIPPED (unconditional skip) *",
            "test_verbose_skip_reason.py::test_6 XPASS  *",
            "test_verbose_skip_reason.py::test_7 SKIPPED  *",
            "test_verbose_skip_reason.py::test_8 SKIPPED (888 is great) *",
            "test_verbose_skip_reason.py::test_9 XFAIL  *",
            "test_verbose_skip_reason.py::test_10 XFAIL (It's 🕙 o'clock) *",
        ]

        result = pytester.runpytest("-v")
>       result.stdout.fnmatch_lines(
            common_output
            + [
                "test_verbose_skip_reason.py::test_long_skip SKIPPED (cannot *...) *",
                "test_verbose_skip_reason.py::test_long_xfail XFAIL (cannot *...) *",
            ]
        )
E       Failed: nomatch: 'test_verbose_skip_reason.py::test_1 SKIPPED (123) *'
E           and: '========================================================================================== test session starts ==========================================================================================='
E           and: 'platform linux -- Python 3.11.2, pytest-7.4.0.dev41+g762bb6156, pluggy-1.0.0 -- /home/ubuntu/pytest/.tox/py311-exceptiongroup/bin/python'
E           and: 'cachedir: .pytest_cache'
E           and: 'rootdir: /tmp/pytest-of-ubuntu/pytest-2/test_verbose_skip_reason0'
E           and: 'collecting ... collected 12 items'
E           and: ''
E       fnmatch: 'test_verbose_skip_reason.py::test_1 SKIPPED (123) *'
E          with: 'test_verbose_skip_reason.py::test_1 SKIPPED (123)                                                                                                                                                  [  8%]'
E       fnmatch: 'test_verbose_skip_reason.py::test_2 XPASS (456) *'
E          with: 'test_verbose_skip_reason.py::test_2 XPASS (456)                                                                                                                                                    [ 16%]'
E       fnmatch: 'test_verbose_skip_reason.py::test_3 XFAIL (789) *'
E          with: 'test_verbose_skip_reason.py::test_3 XFAIL (789)                                                                                                                                                    [ 25%]'
E       fnmatch: 'test_verbose_skip_reason.py::test_4 XFAIL  *'
E          with: 'test_verbose_skip_reason.py::test_4 XFAIL                                                                                                                                                          [ 33%]'
E       fnmatch: 'test_verbose_skip_reason.py::test_5 SKIPPED (unconditional skip) *'
E          with: 'test_verbose_skip_reason.py::test_5 SKIPPED (unconditional skip)                                                                                                                                   [ 41%]'
E       fnmatch: 'test_verbose_skip_reason.py::test_6 XPASS  *'
E          with: 'test_verbose_skip_reason.py::test_6 XPASS                                                                                                                                                          [ 50%]'
E       fnmatch: 'test_verbose_skip_reason.py::test_7 SKIPPED  *'
E          with: 'test_verbose_skip_reason.py::test_7 SKIPPED                                                                                                                                                        [ 58%]'
E       fnmatch: 'test_verbose_skip_reason.py::test_8 SKIPPED (888 is great) *'
E          with: 'test_verbose_skip_reason.py::test_8 SKIPPED (888 is great)                                                                                                                                         [ 66%]'
E       fnmatch: 'test_verbose_skip_reason.py::test_9 XFAIL  *'
E          with: 'test_verbose_skip_reason.py::test_9 XFAIL                                                                                                                                                          [ 75%]'
E       fnmatch: "test_verbose_skip_reason.py::test_10 XFAIL (It's 🕙 o'clock) *"
E          with: "test_verbose_skip_reason.py::test_10 XFAIL (It's 🕙 o'clock)                                                                                                                                       [ 83%]"
E       nomatch: 'test_verbose_skip_reason.py::test_long_skip SKIPPED (cannot *...) *'
E           and: "test_verbose_skip_reason.py::test_long_skip SKIPPED (cannot do foobar because baz is missing due to I don't know what)                                                                             [ 91%]"
E           and: "test_verbose_skip_reason.py::test_long_xfail XFAIL (cannot do foobar because baz is missing due to I don't know what)                                                                              [100%]"
E           and: ''
E           and: '================================================================================ 5 skipped, 5 xfailed, 2 xpassed in 0.02s ================================================================================'
E       remains unmatched: 'test_verbose_skip_reason.py::test_long_skip SKIPPED (cannot *...) *'

/home/ubuntu/pytest/testing/test_terminal.py:417: Failed
------------------------------------------------------------------------------------------ Captured stdout call ------------------------------------------------------------------------------------------
========================================================================================== test session starts ===========================================================================================
platform linux -- Python 3.11.2, pytest-7.4.0.dev41+g762bb6156, pluggy-1.0.0 -- /home/ubuntu/pytest/.tox/py311-exceptiongroup/bin/python
cachedir: .pytest_cache
rootdir: /tmp/pytest-of-ubuntu/pytest-2/test_verbose_skip_reason0
collecting ... collected 12 items

test_verbose_skip_reason.py::test_1 SKIPPED (123)                                                                                                                                                  [  8%]
test_verbose_skip_reason.py::test_2 XPASS (456)                                                                                                                                                    [ 16%]
test_verbose_skip_reason.py::test_3 XFAIL (789)                                                                                                                                                    [ 25%]
test_verbose_skip_reason.py::test_4 XFAIL                                                                                                                                                          [ 33%]
test_verbose_skip_reason.py::test_5 SKIPPED (unconditional skip)                                                                                                                                   [ 41%]
test_verbose_skip_reason.py::test_6 XPASS                                                                                                                                                          [ 50%]
test_verbose_skip_reason.py::test_7 SKIPPED                                                                                                                                                        [ 58%]
test_verbose_skip_reason.py::test_8 SKIPPED (888 is great)                                                                                                                                         [ 66%]
test_verbose_skip_reason.py::test_9 XFAIL                                                                                                                                                          [ 75%]
test_verbose_skip_reason.py::test_10 XFAIL (It's 🕙 o'clock)                                                                                                                                       [ 83%]
test_verbose_skip_reason.py::test_long_skip SKIPPED (cannot do foobar because baz is missing due to I don't know what)                                                                             [ 91%]
test_verbose_skip_reason.py::test_long_xfail XFAIL (cannot do foobar because baz is missing due to I don't know what)                                                                              [100%]

================================================================================ 5 skipped, 5 xfailed, 2 xpassed in 0.02s ================================================================================
======================================================================================== short test summary info =========================================================================================
FAILED testing/test_config.py::TestDebugOptions::test_debug_help - Failed: nomatch: '*Store internal tracing debug information in this log*'
FAILED testing/test_helpconfig.py::test_help - Failed: nomatch: '  -m MARKEXPR           Only run tests matching given mark expression. For'
FAILED testing/test_terminal.py::TestTerminal::test_verbose_skip_reason - Failed: nomatch: 'test_verbose_skip_reason.py::test_1 SKIPPED (123) *'
=================================================================== 3 failed, 3318 passed, 97 skipped, 11 xfailed in 141.18s (0:02:21) ===================================================================
py311-exceptiongroup: exit 1 (141.71 seconds) /home/ubuntu/pytest> pytest pid=11067
.pkg: _exit> python /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/pyproject_api/_backend.py True setuptools.build_meta
  linting: FAIL code 3 (0.26=setup[0.01]+cmd[0.25] seconds)
  py37: SKIP (0.01 seconds)
  py38: SKIP (0.00 seconds)
  py39: SKIP (0.00 seconds)
  py310: SKIP (0.00 seconds)
  py311: FAIL code 1 (153.76=setup[7.49]+cmd[146.28] seconds)
  py312: SKIP (0.00 seconds)
  pypy3: SKIP (0.00 seconds)
  py37-pexpect: SKIP (0.00 seconds)
  py37-xdist: SKIP (0.00 seconds)
  py37-unittestextras: SKIP (0.00 seconds)
  py37-numpy: SKIP (0.00 seconds)
  py37-pluggymain: SKIP (0.00 seconds)
  py37-pylib: SKIP (0.00 seconds)
  doctesting: OK (9.30=setup[8.43]+cmd[0.55,0.32] seconds)
  plugins: OK (33.77=setup[24.85]+cmd[0.78,1.16,0.79,0.81,0.68,0.67,0.72,0.67,0.66,0.66,0.67,0.67] seconds)
  py37-freeze: SKIP (0.00 seconds)
  docs: OK (30.80=setup[9.68]+cmd[0.39,20.73] seconds)
  docs-checklinks: FAIL code 1 (112.88=setup[8.41]+cmd[104.47] seconds)
  py311-exceptiongroup: FAIL code 1 (150.11=setup[8.40]+cmd[141.71] seconds)
  evaluation failed :( (491.02 seconds)
call tox end time Sat Apr 29 16:51:24 UTC 2023 /home/ubuntu/pytest
-- next: attempt install of our new libraries
/home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/setuptools/config/setupcfg.py:515: SetuptoolsDeprecationWarning: The license_file parameter is deprecated, use license_files instead.
  warnings.warn(msg, warning_class)
/home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/setuptools/installer.py:27: SetuptoolsDeprecationWarning: setuptools.installer is deprecated. Requirements should be satisfied by a PEP 517 installer.
  warnings.warn(
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
/home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/setuptools/config/setupcfg.py:515: SetuptoolsDeprecationWarning: The license_file parameter is deprecated, use license_files instead.
  warnings.warn(msg, warning_class)
running install
/home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/setuptools/command/install.py:34: SetuptoolsDeprecationWarning: setup.py install is deprecated. Use build and pip and other standards-based tools.
  warnings.warn(
/home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/setuptools/command/easy_install.py:146: EasyInstallDeprecationWarning: easy_install command is deprecated. Use build and pip and other standards-based tools.
  warnings.warn(
running bdist_egg
running egg_info
writing src/pytest.egg-info/PKG-INFO
writing dependency_links to src/pytest.egg-info/dependency_links.txt
writing entry points to src/pytest.egg-info/entry_points.txt
writing requirements to src/pytest.egg-info/requires.txt
writing top-level names to src/pytest.egg-info/top_level.txt
adding license file 'LICENSE'
writing manifest file 'src/pytest.egg-info/SOURCES.txt'
installing library code to build/bdist.linux-x86_64/egg
running install_lib
running build_py
copying src/_pytest/_version.py -> build/lib/_pytest
creating build/bdist.linux-x86_64/egg
creating build/bdist.linux-x86_64/egg/pytest
copying build/lib/pytest/__main__.py -> build/bdist.linux-x86_64/egg/pytest
copying build/lib/pytest/__init__.py -> build/bdist.linux-x86_64/egg/pytest
copying build/lib/pytest/py.typed -> build/bdist.linux-x86_64/egg/pytest
creating build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/legacypath.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/stash.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/compat.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/pastebin.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/tmpdir.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/unittest.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/fixtures.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/hookspec.py -> build/bdist.linux-x86_64/egg/_pytest
creating build/bdist.linux-x86_64/egg/_pytest/_code
copying build/lib/_pytest/_code/source.py -> build/bdist.linux-x86_64/egg/_pytest/_code
copying build/lib/_pytest/_code/__init__.py -> build/bdist.linux-x86_64/egg/_pytest/_code
copying build/lib/_pytest/_code/code.py -> build/bdist.linux-x86_64/egg/_pytest/_code
copying build/lib/_pytest/junitxml.py -> build/bdist.linux-x86_64/egg/_pytest
creating build/bdist.linux-x86_64/egg/_pytest/mark
copying build/lib/_pytest/mark/expression.py -> build/bdist.linux-x86_64/egg/_pytest/mark
copying build/lib/_pytest/mark/structures.py -> build/bdist.linux-x86_64/egg/_pytest/mark
copying build/lib/_pytest/mark/__init__.py -> build/bdist.linux-x86_64/egg/_pytest/mark
creating build/bdist.linux-x86_64/egg/_pytest/_py
copying build/lib/_pytest/_py/error.py -> build/bdist.linux-x86_64/egg/_pytest/_py
copying build/lib/_pytest/_py/__init__.py -> build/bdist.linux-x86_64/egg/_pytest/_py
copying build/lib/_pytest/_py/path.py -> build/bdist.linux-x86_64/egg/_pytest/_py
copying build/lib/_pytest/debugging.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/faulthandler.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/scope.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/logging.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/_version.py -> build/bdist.linux-x86_64/egg/_pytest
creating build/bdist.linux-x86_64/egg/_pytest/config
copying build/lib/_pytest/config/compat.py -> build/bdist.linux-x86_64/egg/_pytest/config
copying build/lib/_pytest/config/findpaths.py -> build/bdist.linux-x86_64/egg/_pytest/config
copying build/lib/_pytest/config/exceptions.py -> build/bdist.linux-x86_64/egg/_pytest/config
copying build/lib/_pytest/config/__init__.py -> build/bdist.linux-x86_64/egg/_pytest/config
copying build/lib/_pytest/config/argparsing.py -> build/bdist.linux-x86_64/egg/_pytest/config
copying build/lib/_pytest/outcomes.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/threadexception.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/doctest.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/pytester_assertions.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/recwarn.py -> build/bdist.linux-x86_64/egg/_pytest
creating build/bdist.linux-x86_64/egg/_pytest/assertion
copying build/lib/_pytest/assertion/rewrite.py -> build/bdist.linux-x86_64/egg/_pytest/assertion
copying build/lib/_pytest/assertion/truncate.py -> build/bdist.linux-x86_64/egg/_pytest/assertion
copying build/lib/_pytest/assertion/__init__.py -> build/bdist.linux-x86_64/egg/_pytest/assertion
copying build/lib/_pytest/assertion/util.py -> build/bdist.linux-x86_64/egg/_pytest/assertion
copying build/lib/_pytest/unraisableexception.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/main.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/pathlib.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/warnings.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/cacheprovider.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/stepwise.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/__init__.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/python_api.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/_argcomplete.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/helpconfig.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/capture.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/pytester.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/python.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/monkeypatch.py -> build/bdist.linux-x86_64/egg/_pytest
creating build/bdist.linux-x86_64/egg/_pytest/_io
copying build/lib/_pytest/_io/terminalwriter.py -> build/bdist.linux-x86_64/egg/_pytest/_io
copying build/lib/_pytest/_io/saferepr.py -> build/bdist.linux-x86_64/egg/_pytest/_io
copying build/lib/_pytest/_io/__init__.py -> build/bdist.linux-x86_64/egg/_pytest/_io
copying build/lib/_pytest/_io/wcwidth.py -> build/bdist.linux-x86_64/egg/_pytest/_io
copying build/lib/_pytest/python_path.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/setupplan.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/reports.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/runner.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/deprecated.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/timing.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/warning_types.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/skipping.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/setuponly.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/nose.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/nodes.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/freeze_support.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/py.typed -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/_pytest/terminal.py -> build/bdist.linux-x86_64/egg/_pytest
copying build/lib/py.py -> build/bdist.linux-x86_64/egg
byte-compiling build/bdist.linux-x86_64/egg/pytest/__main__.py to __main__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/pytest/__init__.py to __init__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/legacypath.py to legacypath.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/stash.py to stash.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/compat.py to compat.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/pastebin.py to pastebin.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/tmpdir.py to tmpdir.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/unittest.py to unittest.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/fixtures.py to fixtures.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/hookspec.py to hookspec.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_code/source.py to source.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_code/__init__.py to __init__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_code/code.py to code.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/junitxml.py to junitxml.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/mark/expression.py to expression.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/mark/structures.py to structures.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/mark/__init__.py to __init__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_py/error.py to error.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_py/__init__.py to __init__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_py/path.py to path.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/debugging.py to debugging.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/faulthandler.py to faulthandler.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/scope.py to scope.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/logging.py to logging.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_version.py to _version.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/config/compat.py to compat.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/config/findpaths.py to findpaths.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/config/exceptions.py to exceptions.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/config/__init__.py to __init__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/config/argparsing.py to argparsing.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/outcomes.py to outcomes.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/threadexception.py to threadexception.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/doctest.py to doctest.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/pytester_assertions.py to pytester_assertions.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/recwarn.py to recwarn.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/assertion/rewrite.py to rewrite.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/assertion/truncate.py to truncate.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/assertion/__init__.py to __init__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/assertion/util.py to util.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/unraisableexception.py to unraisableexception.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/main.py to main.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/pathlib.py to pathlib.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/warnings.py to warnings.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/cacheprovider.py to cacheprovider.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/stepwise.py to stepwise.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/__init__.py to __init__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/python_api.py to python_api.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_argcomplete.py to _argcomplete.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/helpconfig.py to helpconfig.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/capture.py to capture.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/pytester.py to pytester.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/python.py to python.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/monkeypatch.py to monkeypatch.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_io/terminalwriter.py to terminalwriter.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_io/saferepr.py to saferepr.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_io/__init__.py to __init__.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/_io/wcwidth.py to wcwidth.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/python_path.py to python_path.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/setupplan.py to setupplan.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/reports.py to reports.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/runner.py to runner.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/deprecated.py to deprecated.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/timing.py to timing.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/warning_types.py to warning_types.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/skipping.py to skipping.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/setuponly.py to setuponly.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/nose.py to nose.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/nodes.py to nodes.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/freeze_support.py to freeze_support.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/_pytest/terminal.py to terminal.cpython-311.pyc
byte-compiling build/bdist.linux-x86_64/egg/py.py to py.cpython-311.pyc
creating build/bdist.linux-x86_64/egg/EGG-INFO
copying src/pytest.egg-info/PKG-INFO -> build/bdist.linux-x86_64/egg/EGG-INFO
copying src/pytest.egg-info/SOURCES.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
copying src/pytest.egg-info/dependency_links.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
copying src/pytest.egg-info/entry_points.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
copying src/pytest.egg-info/not-zip-safe -> build/bdist.linux-x86_64/egg/EGG-INFO
copying src/pytest.egg-info/requires.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
copying src/pytest.egg-info/top_level.txt -> build/bdist.linux-x86_64/egg/EGG-INFO
creating 'dist/pytest-7.4.0.dev41+g762bb6156-py3.11.egg' and adding 'build/bdist.linux-x86_64/egg' to it
removing 'build/bdist.linux-x86_64/egg' (and everything under it)
Processing pytest-7.4.0.dev41+g762bb6156-py3.11.egg
removing '/home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/pytest-7.4.0.dev41+g762bb6156-py3.11.egg' (and everything under it)
creating /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/pytest-7.4.0.dev41+g762bb6156-py3.11.egg
Extracting pytest-7.4.0.dev41+g762bb6156-py3.11.egg to /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages
pytest 7.4.0.dev41+g762bb6156 is already the active version in easy-install.pth
Installing py.test script to /home/ubuntu/.virtualenvs/pytestdev/bin
Installing pytest script to /home/ubuntu/.virtualenvs/pytestdev/bin

Installed /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages/pytest-7.4.0.dev41+g762bb6156-py3.11.egg
Processing dependencies for pytest==7.4.0.dev41+g762bb6156
Searching for pluggy==1.0.0
Best match: pluggy 1.0.0
Adding pluggy 1.0.0 to easy-install.pth file

Using /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages
Searching for packaging==23.1
Best match: packaging 23.1
Adding packaging 23.1 to easy-install.pth file

Using /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages
Searching for iniconfig==2.0.0
Best match: iniconfig 2.0.0
Adding iniconfig 2.0.0 to easy-install.pth file

Using /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages
Finished processing dependencies for pytest==7.4.0.dev41+g762bb6156
~/scripts/ubuntu
python-various/pytest-build.sh: line 47:
/usr/lib/python3.9/site-packages/setuptools/installer.py:27: SetuptoolsDeprecationWarning: setuptools.installer is deprecated. Requirements should be satisfied by a PEP 517 installer.
  warnings.warn(
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
usage: setup.py [global_opts] cmd1 [cmd1_opts] [cmd2 [cmd2_opts] ...]
   or: setup.py --help [cmd1 cmd2 ...]
   or: setup.py --help-commands
   or: setup.py cmd --help


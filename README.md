# README - Compiling and Building Various Things

Here I attempt to automate build processes... just because.
(Building from source is a prereq to mucking around in source, kind of, 
and beyond that it just feels good.)

The first section is an update for July 2023 then the preexisting README file.

# Q3 2023 

## Punch list: 

## Details of issues

1. Ubuntu produces a CUI dialog box. Fixed. 
https://stackoverflow.com/questions/73397110/

2. Django build fails on Ubuntu.  
with a lot of
```
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


```

3. Pytest build on Ubuntu is mostly OK, and on Amzn is fine, but this on U: 

```
Using /home/ubuntu/.virtualenvs/pytestdev/lib/python3.11/site-packages
Finished processing dependencies for pytest==8.0.0.dev142+g485c55581
+ popd
~
+ '
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

'
scripts/ubuntu/python-various/pytest-build.sh: line 51: 
```

4. Amazon Linux -- bootstrap

Use my learning from Ubuntu.

# Q1-2 2023

## Directions I could go in
There are many ways I could take this.
0. Terraform!
1. Keep adding new things to build.
2. Puzzles
2. Dig into the most relevant (Python, Python tools, maybe Bazel) and understand the build.
3. Some builds have test failures. Why? Can I fix these, follow up on them, etc.?
	- And in Bazel I don't even understand how the self-build is being tested.
4. Change environments, see what else needs to change.
	- instance types
	- OS (Win, Mac)
	- Azure, GCP
	- local
5. Perf test any of the above, esp. larger instance types.
6. Muck about in source code. Break things. Put in my own strings, my own easter eggs.

## Summary
- cpython: yes but *probably* needs a decent-sized instance, I don't recall.
- pytest seems OK on EC2. It got a few failures on Azure/Ubuntu
- Django passes its wonderful test suite.
- qutebrowser: I've seen it build successfully somewhere, maybe on ohio-03.
- pytorch - back burner. Should use Ananconda and I don't want to set that kind of instance up just yet.


## Python (CPython)
Build worked per scripts. Maybe 20 min. Testing now. Maybe about the same amount of time.

### Pip
Good example of Nox. See 
https://hynek.me/articles/why-i-like-nox/

Tests failed in pytest, which seems a bit surprising, so 

PUZZLE: What is nox doing different to make them pass?

## Python various tools
Just a sample of stuff off top of my head that would be fun to develop on. 
Qutebrowser isn't a high priority for me but I did look into contributing once,
when I found it on a list of welcoming open source projects,
 so I have a fondness for it.



### Pytest
Often the tox suite reports these three failures somewhere along the way:
```text
========================================== short test summary info ===========================================
FAILED testing/test_config.py::TestDebugOptions::test_debug_help - Failed: nomatch: '*Store internal tracing debug information in this log*'
FAILED testing/test_helpconfig.py::test_help - Failed: nomatch: '  -m MARKEXPR           Only run tests matching given mark expression. For'
FAILED testing/test_stepwise.py::test_sw_skip_help - Failed: nomatch: '*Implicitly enables --stepwise.'
===================== 3 failed, 3309 passed, 97 skipped, 11 xfailed in 139.17s (0:02:19) ========
```

However, there is a watched-pot phenomenon where I seem not to catch this when tee-ing to a log file.
One case where I can reproduce is running tox on my local WSL2 from the pytestdev venv.

So far any attempts at `pytest -k conf` have failed, making me even more curious what tox is doing
differently.

Note to self: Here is some explanation of what might be different with a .toml.
Try the python -m build approach and see if it produces similar behaviors.

#### Earlier build warnings

This sounds inauspicious, from pytest I believe.
```
$ python3 ./setup.py --help
/usr/lib/python3.9/site-packages/setuptools/installer.py:27: SetuptoolsDeprecationWarning: setuptools.installer is deprecated. Requirements should be satisfied by a PEP 517 installer.
  warnings.warn(
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
WARNING: The wheel package is not available.
Common commands: (see '--help-commands' for more)
```

However `python3 ./setup.py build` was OK except for those (PUZZLE)

Django gets some deprecation warnings. Can they reasonably be fixed.


## MySQL
- mysql: yes but needs a decent-sized instance.
- bazel: yes but needs a decent-sized instance.
# https://dev.mysql.com/doc/refman/8.0/en/installing-development-tree.html
# https://dev.mysql.com/doc/refman/8.0/en/source-installation-prerequisites.html


If I need something fun to explore, check out these i18n dependencies: 
https://github.com/unicode-org/icu

Or these language compilers - do we need all of them?
google protobuff
extra protobuff

This is an intriguing name:
storage/innobase/CMakeFiles/innobase.dir/row/row0mysql.cc.o


## Bazel
Got it working, sort of, on t2.micro but it died in the most taxing part of the build. 

Took about 20 min to build on m6a.xlarge, with another 10 for command-line completion.

Here is another approach to getting JDK and Bazel. I didn't fully carry it out but it seems like it 
could be finished off pretty quickly if the approach used didn't complete.

```
pushd ~
curl -O https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz
tar zxvf openjdk-11.0.1_linux-x64_bin.tar.gz
sudo mv jdk-11.0.1 /usr/local/
# 
curl -O https://copr.fedorainfracloud.org/coprs/vbatts/bazel/repo/epel-7/vbatts-bazel-epel-7.repo
sudo mv vbatts-bazel-epel-7.repo /etc/yum.repos.d/
sudo yum install bazel4
popd


```

## Azure-specific notes
See above about pytest failing on a few.

Image is whatever the latest version of Ubuntu was suggested. Two were suggested. 

Operating system
Linux (ubuntu 20.04)
Publisher
canonical
Offer
0001-com-ubuntu-server-focal
Plan
20_04-lts-gen2
VM generation
V2
VM architecture
x64
Agent status
Ready
Agent version
2.9.0.4


## Enhancements -- somewhat redundant with "Directions..." above.
Can we just use an EC2 image with gcc? Try:

amzn2-ami-kernel-5.10-hvm-2.0.20230320.0-x86_64-gp2
ami-00a16e018e54305c6 

(in sa-east-1)

I started using this region for fun, and there is a little latency. Try to get this working for
closer regions to compare.

Terraform-automate of course.

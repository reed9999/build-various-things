# README - Compiling and Building Various Things

Here I attempt to automate build processes... just because.
(Building from source is a prereq to mucking around in source, kind of, 
and beyond that it just feels good.)

## Directions this could go in
Adding new apps to build from source is fun, but ultimately I'll learn more if 
I set a hiatus condition and then learn more about what I have.

0. Keep improving at Terraform.
   1. Especially see if there is a good for_each approach.
1. New apps. After these, just put it on hold! 
	- CPython
    - pytest
    - Django
    - Bazel
    - Dagster
    - Ruby
    - Rust
    - Go language
    - Haskell
    - Vim
    - Airflow
    - \[Pytorch - on hold]
2. Pick the most relevant--e.g. Python, Python tools, Dagster, possibly 
   Airflow--and force myself to learn what the build is really doing.
3. Some builds have test failures. Why? Can I fix these, follow up on them, etc.?
	- Pytest has 3 failures if viewed interactively. There is a Github issue;
	  follow up.
	- And in Bazel I don't even understand how the self-build is being tested.
4. Unify scripts for Amazon Linux and Ubuntu. Try a few other distros.
4. Change environments, see what else needs to change.
	- instance types
	- OS (Win, Mac)
	- Azure, GCP
	- local
5. Perf test any of the above, esp. larger instance types.
6. Muck about in source code. Break things. Put in my own strings, my own easter eggs.

### Status

- CPython -- unified -- recent change broke test_peg_generator, apparently
- pytest -- unified
- Django -- unified
- Bazel -- unified I think; built on Ubuntu with some test failures
- Dagster -- unified; 3 test failures on each
- Ruby -- unified; test failures on each
- Rust -- Ubuntu only 
- Go language -- both, not unified
- Haskell -- not working, only attempted on Ubuntu
- Vim -- Ubuntu (and WSL Ubuntu) only; some post-build steps may be needed.
- Airflow
- \[Pytorch - on hold]

Furthermore on Red Hat: CPython (Amazon Linux script); pytest in progress 
(unified)

# Q3 2023 (phase 2)

Because I didn't do much on here between April and late July, 2023, here is my
refresh of the README -- should be merged in with the original stuff. 

## Punch list: 

Cleared out specific issues from here, because 
# Q1-2 2023 (phase 1)


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
 https://dev.mysql.com/doc/refman/8.0/en/installing-development-tree.html
 https://dev.mysql.com/doc/refman/8.0/en/source-installation-prerequisites.html


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


## Troublshooting common issues
### configure: error: no acceptable C compiler found in $PATH
For CPython it was simply `sudo apt-get update` so that build-essential 
could be found and installed.

## Enhancements -- somewhat redundant with "Directions..." above.
Can we just use an EC2 image with gcc? Try:

amzn2-ami-kernel-5.10-hvm-2.0.20230320.0-x86_64-gp2
ami-00a16e018e54305c6 

# Specific builds - complications

## Haskell

I've tried various ways to bring ghc to 9.4 because that is what a message 
said it needs to build itself. I installed ghcup. 

Now I'm going back to https://gitlab.haskell.org/ghc/ghc/-/wikis/building/preparation/linux
ready to try `sudo apt-get build-dep ghc` but: 

```$ sudo apt-get build-dep ghc
Reading package lists... Done
E: You must put some 'deb-src' URIs in your sources.list
```
https://www.tecmint.com/fix-deb-src-uris-in-your-sources-list-error/

```shell
sudo vim /etc/apt/sources.list
# uncomment at least a couple of the deb-src. I did universe and multiverse.

sudo apt-get build-dep ghc

```                                                                                                                   │ 
 │ Newer kernel available                                                                                            │ 
 │                                                                                                                   │ 
 │ The currently running kernel version is 5.19.0-1029-aws which is not the expected kernel version 6.2.0-1010-aws.  │ 
 │                                                                                                                   │ 
 │ Restarting the system to load the new kernel will not be handled automatically, so you should consider            │ 
 │ rebooting.       `
```
# Handy links and ideas, etc.

Preserve colors: 
https://superuser.com/questions/352697/preserve-colors-while-piping-to-tee
https://stackoverflow.com/questions/3515208/can-colorized-output-be-captured-via-shell-redirect
# README - Compiling and Building Various Things
Here I attempt to automate build processes... just because.
(Building from source is a prereq to mucking around in source, kind of, 
and beyond that it just feels good.)

## Directions
There are many ways I could take this.
0. Terraform!
1. Keep adding new things to build.
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

## Python (CPython)
Build worked per scripts. Maybe 20 min. Testing now. Maybe about the same amount of time.

## Python various tools
Just a sample of stuff off top of my head that would be fun to develop on. 
Qutebrowser isn't a high priority for me but I did look into contributing once,
when I found it on a list of welcoming open source projects,
 so I have a fondness for it.

So far I got all the code; some builds work and some don't.

- pytest seems OK.
- Django passes its wonderful test suite.
- qutebrowser not working here; I think I got it on ohio-03.


### Build warnings

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

However `python3 ./setup.py build` was OK except for those so who knows?

Django gets some deprecation warnings.
## Enhancements
Can we just use an EC2 image with gcc? Try:

amzn2-ami-kernel-5.10-hvm-2.0.20230320.0-x86_64-gp2
ami-00a16e018e54305c6 

(in sa-east-1)

I started using this region for fun, and there is a little latency. Try to get this working for
closer regions to compare.

Terraform-automate of course.


## MySQL
# https://dev.mysql.com/doc/refman/8.0/en/installing-development-tree.html
# https://dev.mysql.com/doc/refman/8.0/en/source-installation-prerequisites.html


If I need something fun to explore, check out these i18n dependencies: 
https://github.com/unicode-org/icu

Or these language compilers - do we need all of them?
google protobuff
extra protobuff

This is an intriguing name:
storage/innobase/CMakeFiles/innobase.dir/row/row0mysql.cc.o


# Bazel
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

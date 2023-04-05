# README - Compiling and Building Various Things
Here I attempt to automate build processes... just because.
(Building from source is a prereq to mucking around in source, kind of, 
and beyond that it just feels good.)

## Python (CPython)
Build worked per scripts. Maybe 20 min. Testing now. Maybe about the same amount of time.

## Python various tools
Just a sample of stuff off top of my head that would be fun to develop on. 
Qutebrowser isn't a high priority for me but I did look into contributing once,
when I found it on a list of welcoming open source projects,
 so I have a fondness for it.

So far I got all the code; haven't gotten builds to work because I can't find 
pytest build instructions and `python3 setup.py` fails.

This sounds inauspicious: 
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

python3 ./setup.py build

## Enhancements
Can we just use an EC2 image with gcc? Try:

amzn2-ami-kernel-5.10-hvm-2.0.20230320.0-x86_64-gp2
ami-00a16e018e54305c6 

(in sa-east-1)

I started using this region for fun, and there is a little latency. Try to get this working for
closer regions to compare.

Terraform-automate of course.


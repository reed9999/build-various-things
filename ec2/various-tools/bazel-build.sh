# INCOMPLETE - haven't gotten far really
# See https://bazel.build/install/compile-source#build-bazel-using-bazel
# For now, accept that we will install it to build itself. 
# Later on we can think about bootstrapping.

pushd ~/bazel/

# Approach 1
# TODO reenable this
# curl --location --request GET  https://github.com/bazelbuild/bazel/releases/download/7.0.0-pre.20230330.3/bazel_nojdk-7.0.0-pre.20230330.3-linux-x86_64 -O
mv bazel_nojdk* ~
sudo ln -s ~/bazel_nojdk* /usr/bin/bazel
sudo chmod +x /usr/bin/bazel


# Given the nojdk in the above name, the following might not be needed.
# sudo yum install -y java-11-amazon-corretto-devel


# Approach 2


#     pushd ~
#     curl -O https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz
#     tar zxvf openjdk-11.0.1_linux-x64_bin.tar.gz
#     sudo mv jdk-11.0.1 /usr/local/
# 
#     curl -O https://copr.fedorainfracloud.org/coprs/vbatts/bazel/repo/epel-7/vbatts-bazel-epel-7.repo
#     sudo mv vbatts-bazel-epel-7.repo /etc/yum.repos.d/
#     sudo yum install bazel4
#     popd

# Prereqs - https://bazel.build/install/compile-source#bootstrap-unix-prereq
sudo yum install -y python 
sudo yum install -y zip 
sudo yum install -y unzip
sudo yum install -yf gcc gcc-c++ kernel-devel make


date >> ~/017-bazel-build-output.txt &
nohup bazel build //src:bazel-dev >> ~/017-bazel-build-output.txt &
date >> ~/017-bazel-build-output.txt &

popd






<<HERE
]$ bazel build //src:bazel-dev
INFO: Repository local_config_cc instantiated at:
  /DEFAULT.WORKSPACE.SUFFIX:547:13: in <toplevel>
  /home/ec2-user/.cache/bazel/_bazel_ec2-user/aba9b4e14eacc44b52fef59963300c4c/external/bazel_tools/tools/cpp/cc_configure.bzl:149:16: in cc_configure
Repository rule cc_autoconf defined at:
  /home/ec2-user/.cache/bazel/_bazel_ec2-user/aba9b4e14eacc44b52fef59963300c4c/external/bazel_tools/tools/cpp/cc_configure.bzl:109:30: in <toplevel>
ERROR: An error occurred during the fetch of repository 'local_config_cc':
   Traceback (most recent call last):
        File "/home/ec2-user/.cache/bazel/_bazel_ec2-user/aba9b4e14eacc44b52fef59963300c4c/external/bazel_tools/tools/cpp/cc_configure.bzl", line 91, column 33, in cc_autoconf_impl
                configure_unix_toolchain(repository_ctx, cpu_value, overriden_tools)
        File "/home/ec2-user/.cache/bazel/_bazel_ec2-user/aba9b4e14eacc44b52fef59963300c4c/external/bazel_tools/tools/cpp/unix_cc_configure.bzl", line 349, column 17, in configure_unix_toolchain
                cc = find_cc(repository_ctx, overriden_tools)
        File "/home/ec2-user/.cache/bazel/_bazel_ec2-user/aba9b4e14eacc44b52fef59963300c4c/external/bazel_tools/tools/cpp/unix_cc_configure.bzl", line 314, column 23, in find_cc
                cc = _find_generic(repository_ctx, "gcc", "CC", overriden_tools)
        File "/home/ec2-user/.cache/bazel/_bazel_ec2-user/aba9b4e14eacc44b52fef59963300c4c/external/bazel_tools/tools/cpp/unix_cc_configure.bzl", line 310, column 32, in _find_generic
                auto_configure_fail(msg)
        File "/home/ec2-user/.cache/bazel/_bazel_ec2-user/aba9b4e14eacc44b52fef59963300c4c/external/bazel_tools/tools/cpp/lib_cc_configure.bzl", line 112, column 9, in auto_configure_fail
                fail("\n%sAuto-Configuration Error:%s %s\n" % (red, no_color, msg))
Error in fail:
Auto-Configuration Error: Cannot find gcc or CC; either correct your path or set the CC environment variable
ERROR: /DEFAULT.WORKSPACE.SUFFIX:547:13: fetching cc_autoconf rule //external:local_config_cc: Traceback (most recent call last):
        File "/home/ec2-user/.cache/bazel/_bazel_ec2-user/aba9b4e14eacc44b52fef59963300c4c/external/bazel_tools/tools/cpp/cc_configure.bzl", line 91, column 33, in cc_autoconf_impl
                configure_unix_toolchain(repository_ctx, cpu_value, overriden_tools)
        File "/home/ec2-user/.cache/bazel/_bazel_ec2-user/aba9b4e14eacc44b52fef59963300c4c/external/bazel_tools/tools/cpp/unix_cc_configure.bzl", line 349, column 17, in configure_unix_toolchain
                cc = find_cc(repository_ctx, overriden_tools)
        File "/home/ec2-user/.cache/bazel/_bazel_ec2-user/aba9b4e14eacc44b52fef59963300c4c/external/bazel_tools/tools/cpp/unix_cc_configure.bzl", line 314, column 23, in find_cc
                cc = _find_generic(repository_ctx, "gcc", "CC", overriden_tools)
        File "/home/ec2-user/.cache/bazel/_bazel_ec2-user/aba9b4e14eacc44b52fef59963300c4c/external/bazel_tools/tools/cpp/unix_cc_configure.bzl", line 310, column 32, in _find_generic
                auto_configure_fail(msg)
        File "/home/ec2-user/.cache/bazel/_bazel_ec2-user/aba9b4e14eacc44b52fef59963300c4c/external/bazel_tools/tools/cpp/lib_cc_configure.bzl", line 112, column 9, in auto_configure_fail
                fail("\n%sAuto-Configuration Error:%s %s\n" % (red, no_color, msg))
Error in fail:
Auto-Configuration Error: Cannot find gcc or CC; either correct your path or set the CC environment variable
ERROR: /home/ec2-user/bazel/src/main/java/com/google/devtools/build/lib/bazel/BUILD:179:12: //src/main/java/com/google/devtools/build/lib/bazel:BazelServer_deployjars_internal_rule depends on @local_config_cc//:cc-compiler-k8 in repository @local_config_cc which failed to fetch. no such package '@local_config_cc//':
Auto-Configuration Error: Cannot find gcc or CC; either correct your path or set the CC environment variable
ERROR: Analysis of target '//src:bazel-dev' failed; build aborted:
INFO: Elapsed time: 21.304s
INFO: 0 processes.
ERROR: Build did NOT complete successfully
HERE


# INCOMPLETE - haven't gotten far really
# See https://bazel.build/install/compile-source#build-bazel-using-bazel
# For now, accept that we will install it to build itself. 
# Later on we can think about bootstrapping.

cd ~/bazel/

# There are also some other approaches (incomplete) to getting JDK and bazel that I will document in the README
curl --location --request GET  https://github.com/bazelbuild/bazel/releases/download/7.0.0-pre.20230330.3/bazel_nojdk-7.0.0-pre.20230330.3-linux-x86_64 -O
mv bazel_nojdk* ~
sudo rm /usr/bin/bazel
sudo ln -s ~/bazel_nojdk* /usr/bin/bazel
sudo chmod +x /usr/bin/bazel


# Given the nojdk in the above name, the following might not be needed.
sudo apt-get install openjdk-11-jdk 

# Prereqs - https://bazel.build/install/compile-source#bootstrap-unix-prereq
PACKAGE_MGR=apt
sudo ${PACKAGE_MGR} update
sudo ${PACKAGE_MGR} install -y python 
sudo ${PACKAGE_MGR} install -y zip 
sudo ${PACKAGE_MGR} install -y unzip
# Isn't C++ in gcc anyway?
# sudo ${PACKAGE_MGR} install -y gcc gcc-c++ kernel-devel make
sudo ${PACKAGE_MGR} install -y gcc linux-headers-generic make


OUTPUT_FILE=~/scripts/output/wsl-bazel-build-output.txt
date > $OUTPUT_FILE
nohup bazel build //src:bazel-dev >> $OUTPUT_FILE
date >> $OUTPUT_FILE 

# We can also run the tab completion. On an xlarge it adds about 10 more minutes.
 # bazel build //scripts:bazel-complete.bash


cd ~


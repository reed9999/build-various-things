# See https://bazel.build/install/compile-source#build-bazel-using-bazel
# For now, accept that we will install it to build itself.
# Later on we can think about bootstrapping.

# Even though this isn't primary a python build, we'll need some of this.
source ~/scripts/ubuntu/setup-python.sh
echo "Linux distribution: $BVT_DISTRO"
echo "Selected installer: $BVT_INSTALLER"
echo
echo "***** BEGIN BAZEL BUILD SCRIPT $(date) *****"

pushd ~
  git clone https://github.com/bazelbuild/bazel.git
popd

pushd ~/bazel/

  # There are also some other approaches (incomplete) to getting JDK and bazel that I will document in the README
  curl --location --request GET  https://github.com/bazelbuild/bazel/releases/download/7.0.0-pre.20230330.3/bazel_nojdk-7.0.0-pre.20230330.3-linux-x86_64 -O
  mv bazel_nojdk* ~
  sudo rm /usr/bin/bazel
  sudo ln -s ~/bazel_nojdk* /usr/bin/bazel
  sudo chmod +x /usr/bin/bazel


  if [[ "$BVT_DISTRO" == "amazon-linux" ]]; then
    # I'm not sure if this even makes sense there, or if the default-jdk below is sensible.
    sudo ${BVT_INSTALLER} install -y java-11-amazon-corretto-devel
  elif [[ "$BVT_DISTRO" == "ubuntu" ]]; then
    # Do not install openjdk-19-jre-headless or any other JRE -- it may
    # mess things up by setting JAVA_HOME
    sudo ${BVT_INSTALLER} install -y default-jdk
  fi


  # Approach 2
  # It's unclear what I meant by that comment -- apparently that I was attempting a different
  # approach, so does that mean the script that sat dormant a few months was actually trying
  # multiple things and hence is now redundant?


  # Prereqs - https://bazel.build/install/compile-source#bootstrap-unix-prereq
  # We changed to just use the standard Python install -- don't think this is needed now.
  #sudo ${BVT_INSTALLER} install -y python
  sudo ${BVT_INSTALLER} install -y zip
  sudo ${BVT_INSTALLER} install -y unzip
  sudo ${BVT_INSTALLER} install -y gcc make
  # The packages gcc-c++ and kernel-devel are apparently not installed the same way on Ubuntu?
  sudo ${BVT_INSTALLER} install -y gcc gcc-c++ kernel-devel make



  echo "***** BEGIN BAZEL BUILD $(date) *****"
  bazel build //src:bazel-dev
  echo "***** END BAZEL BUILD $(date) *****"
  echo "***** END BAZEL BUILD SCRIPT $(date) *****"

  # We can also run the tab completion. On an xlarge it adds about 10 more minutes.
   # bazel build //scripts:bazel-complete.bash

popd

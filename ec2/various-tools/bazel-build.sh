# INCOMPLETE - haven't gotten far really
# See https://bazel.build/install/compile-source#build-bazel-using-bazel
# For now, accept that we will install it to build itself. 
# Later on we can think about bootstrapping.

pushd ~/bazel/
curl --location --request GET  https://github.com/bazelbuild/bazel/releases/download/7.0.0-pre.20230330.3/bazel_nojdk-7.0.0-pre.20230330.3-linux-x86_64 -O
# sudo yum install -y java-11-amazon-corretto-headless
sudo yum install -y java-11-amazon-corretto-devel
popd

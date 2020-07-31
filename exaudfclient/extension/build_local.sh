source .env
export EXAUDF_BASEPATH="$PWD/bazel-bin/external"
bash build.sh $*

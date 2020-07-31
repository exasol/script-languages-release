if [ -z "$EXAUDF_BASEPATH" ]
then
      export EXAUDF_BASEPATH=/exaudf/external
fi
bazel build $*

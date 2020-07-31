if [ -z "$EXAUDF_BASEPATH" ]
then
      echo EXAUDF_BASEPATH=/exaudf/external
fi
bazel build $*

#!/bin/bash
set -o errexit
set -o nounset
set -o pipefail

TARGET_DIRECTORY="$1"
TARGET_SRC_DIRECTORY="${TARGET_DIRECTORY}/src"
export EXAUDF_BASEPATH="$TARGET_DIRECTORY"

shift 1
BUILD_PARAMETERS=( "$@" )

pushd extension

mkdir -p "$TARGET_DIRECTORY" "$TARGET_SRC_DIRECTORY"
source /env
bash build.sh --config no-tty "${BUILD_PARAMETERS[@]}" 
cp -r -L bazel-bin/* "$TARGET_DIRECTORY"
rm -r "${TARGET_DIRECTORY}/external/bazel_tools/"
mkdir -p "${TARGET_DIRECTORY}/python/python3/" "${TARGET_DIRECTORY}/javacontainer"
ln -s "${TARGET_DIRECTORY}/external/script_languages/python/python3/pyextdataframe.so" "${TARGET_DIRECTORY}/python/python3/pyextdataframe.so"
ln -s "${TARGET_DIRECTORY}/external/script_languages/javacontainer/libexaudf.jar" "${TARGET_DIRECTORY}/javacontainer/libexaudf.jar"

popd

pushd base

# These source files are required for the building of the protegrity client
cp debug_message.h exaudfclient.cc exaudflib/exaudflib.cc exaudflib/exaudflib.h exaudflib/zmqcontainer.proto "$TARGET_SRC_DIRECTORY" 

# Testing udfclient if it was build correctly
./test_udfclient.sh "${TARGET_DIRECTORY}/exaudfclient" 
./test_udfclient.sh "${TARGET_DIRECTORY}/exaudfclient_py3"

popd

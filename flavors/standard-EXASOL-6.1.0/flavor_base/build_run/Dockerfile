FROM {{language_deps}}

COPY --from={{build_deps}} /usr /usr
COPY --from={{build_deps}} /lib /lib
COPY --from={{build_deps}} /bin /bin
COPY --from={{build_deps}} /opt /opt
COPY --from={{build_deps}} /etc /etc
COPY --from={{build_deps}} /env /env

RUN ldconfig

RUN mkdir /exaudfclient /exaudf /exaudf/src
COPY /exaudfclient /exaudfclient

WORKDIR /exaudfclient/extension
RUN ["/bin/bash", "-c", "source /env && bash build.sh --config no-tty --config optimize --config python --config java --config optimize-r --config fast-binary-both"]
RUN cp -r -L bazel-bin/* /exaudf && rm -r /exaudf/external/bazel_tools/
RUN mkdir -p /exaudf/python/python3/ /exaudf/javacontainer
RUN ln -s /exaudf/external/script_languages/python/python3/pyextdataframe.so /exaudf/python/python3/pyextdataframe.so
RUN ln -s /exaudf/external/script_languages/javacontainer/libexaudf.jar /exaudf/javacontainer/libexaudf.jar


# These source files are required for building internal udf plugins
WORKDIR /exaudfclient/base
RUN cp debug_message.h exaudfclient.cc exaudflib/exaudflib.cc exaudflib/exaudflib.h exaudflib/zmqcontainer.proto /exaudf/src
RUN ./test_udfclient.sh /exaudf/exaudfclient
RUN ./test_udfclient.sh /exaudf/exaudfclient_py3

WORKDIR /exaudf/

RUN rm -r /exaudfclient

COPY --from={{build_deps}} /build_info /build_info

RUN mkdir /conf /buckets

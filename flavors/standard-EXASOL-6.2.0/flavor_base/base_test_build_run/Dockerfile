FROM {{language_deps}}

RUN mkdir /conf /buckets

COPY --from={{base_test_deps}} /usr /usr
COPY --from={{base_test_deps}} /lib /lib
COPY --from={{base_test_deps}} /bin /bin
COPY --from={{base_test_deps}} /opt /opt
COPY --from={{base_test_deps}} /etc /etc
COPY --from={{base_test_deps}} /env /env

RUN ldconfig

RUN mkdir /exaudfclient /exaudf
COPY /exaudfclient /exaudfclient

WORKDIR /exaudfclient/extension
RUN ["/bin/bash", "-c", "source /env && bash build.sh --config no-tty -c dbg --config python --config java --config r --config slow-wrapper-both"]
RUN cp -r -L bazel-bin/* /exaudf
RUN mkdir -p /exaudf/python/python3/ /exaudf/javacontainer
RUN ln -s /exaudf/external/script_languages/python/python3/pyextdataframe.so /exaudf/python/python3/pyextdataframe.so
RUN ln -s /exaudf/external/script_languages/javacontainer/libexaudf.jar /exaudf/javacontainer/libexaudf.jar

# These source files are required for building internal udf plugins
WORKDIR /exaudfclient/base
RUN ./test_udfclient.sh /exaudf/exaudfclient
RUN ./test_udfclient.sh /exaudf/exaudfclient_py3

WORKDIR /
RUN mkdir /exasol_emulator
COPY emulator/ /exasol_emulator
COPY /exaudfclient/base/exaudflib/zmqcontainer.proto /exasol_emulator
RUN cd /exasol_emulator && protoc zmqcontainer.proto --python_out=.

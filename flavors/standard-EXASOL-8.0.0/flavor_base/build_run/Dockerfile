FROM {{language_deps}}

COPY --from={{build_deps}} /usr /usr
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{build_deps}} /lib /lib
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{build_deps}} /bin /bin
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{build_deps}} /opt /opt
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{build_deps}} /etc /etc
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{build_deps}} /env /env
RUN true # workaround for https://github.com/moby/moby/issues/37965


RUN ldconfig

RUN mkdir /exaudfclient /exaudf
COPY /exaudfclient /exaudfclient

WORKDIR /exaudfclient/extension
RUN ["/bin/bash", "-c", "source /env && bash build.sh --config no-tty --config optimize --config python --config java --config optimize-r --config fast-binary-py3"]
RUN cp -r -L bazel-bin/* /exaudf && rm -r /exaudf/external/bazel_tools/
RUN mkdir -p /exaudf/python/python3/ /exaudf/javacontainer
RUN ln -s /exaudf/external/script_languages/python/python3/pyextdataframe.so /exaudf/python/python3/pyextdataframe.so
RUN ln -s /exaudf/external/script_languages/javacontainer/exaudf_deploy.jar /exaudf/javacontainer/libexaudf.jar


# These source files are required for building internal udf plugins
WORKDIR /exaudfclient/base
RUN ./test_udfclient.sh /exaudf/exaudfclient_py3

WORKDIR /exaudf/

RUN rm -r /exaudfclient

COPY --from={{build_deps}} /build_info /build_info
RUN true # workaround for https://github.com/moby/moby/issues/37965


RUN mkdir /conf /buckets

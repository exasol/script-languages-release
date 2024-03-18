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

RUN mkdir /exaudfclient /exaudf /exaudf/src
COPY /exaudfclient /exaudfclient

WORKDIR /exaudfclient/extension
RUN ["/bin/bash", "-c", "source /env && bash build.sh --config no-tty --config optimize --config java --config fast-binary-py3"]
RUN cp -r -L bazel-bin/* /exaudf && rm -r /exaudf/external/bazel_tools/
RUN mkdir -p /exaudf/python/python3/ /exaudf/javacontainer
RUN ln -s /exaudf/external/script_languages/javacontainer/libexaudf.jar /exaudf/javacontainer/libexaudf.jar

WORKDIR /exaudfclient/base
RUN ./test_udfclient.sh /exaudf/exaudfclient_py3

WORKDIR /exaudf/

RUN rm -r /exaudfclient

COPY --from={{build_deps}} /build_info /build_info
RUN true # workaround for https://github.com/moby/moby/issues/37965


RUN mkdir /conf /buckets

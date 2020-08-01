FROM {{language_deps}}

COPY --from={{build_deps}} /usr /usr
COPY --from={{build_deps}} /lib /lib
COPY --from={{build_deps}} /bin /bin
COPY --from={{build_deps}} /opt /opt
COPY --from={{build_deps}} /etc /etc
COPY --from={{build_deps}} /env /env

RUN ldconfig

RUN mkdir /exaudfclient
COPY /exaudfclient /exaudfclient

WORKDIR /exaudfclient
RUN extension/build_in_container.sh "/exaudf" --config no-tty --config optimize --config python --config java --config optimize-r --config fast-binary-both
RUN extension/build_in_container.sh "/exaudf_debug" --config no-tty --config python --config java --config debug-unoptimized --config fast-binary-debug-both
RUN extension/build_in_container.sh "/exaudf_debug_optimized" --config no-tty --config python --config java --config debug-optimized --config fast-binary-debug-optimized-both

RUN rm -r /exaudfclient

WORKDIR /exaudf/

COPY --from={{build_deps}} /build_info /build_info

RUN mkdir /conf /buckets

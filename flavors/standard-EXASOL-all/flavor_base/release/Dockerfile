FROM exasol/script-language-container:exaslpm-1.3.1-ubuntu-22.04
RUN mkdir /conf /buckets

COPY --from={{language_deps}} /usr /usr
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{language_deps}} /lib /lib
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{language_deps}} /bin /bin
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{language_deps}} /opt /opt
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{language_deps}} /etc /etc
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{language_deps}} /build_info /build_info
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{language_deps}} /var /var
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{language_deps}} /scripts /scripts
RUN true # workaround for https://github.com/moby/moby/issues/37965


COPY --from={{flavor_customization}} /usr /usr
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{flavor_customization}} /lib /lib
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{flavor_customization}} /bin /bin
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{flavor_customization}} /opt /opt
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{flavor_customization}} /etc /etc
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{flavor_customization}} /build_info /build_info
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{flavor_customization}} /var /var
RUN true # workaround for https://github.com/moby/moby/issues/37965


RUN ldconfig

COPY --from={{build_run}} /exaudf /exaudf
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{build_run}} /build_info /build_info
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY language_definitions.json /build_info/language_definitions.json
RUN true # workaround for https://github.com/moby/moby/issues/37965


RUN mkdir -p /build_info/actual_installed_packages/release && \
    exaslpm list-all-installed-packages --out-file /build_info/actual_installed_packages/release/packages.yml

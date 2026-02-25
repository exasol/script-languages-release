FROM {{udfclient_deps}}
ENV PIP_BREAK_SYSTEM_PACKAGES=1

COPY language_deps/packages /build_info/packages/language_deps

RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/language_deps/apt_get_packages --with-versions

RUN curl -fsSL -o get-pip.py https://bootstrap.pypa.io/get-pip.py && \
    python3.12 get-pip.py --break-system-packages "pip == 25.2" && \
    rm get-pip.py && \
    rm -rf "$(python3.12 -m pip cache dir)"

COPY language_deps/packages/python3_pip_packages /build_info/packages/language_deps
RUN /scripts/install_scripts/install_via_pip.pl --file /build_info/packages/language_deps/python3_pip_packages --python-binary python3.12 --with-versions --ancestor-pip-package-root-path /build_info/packages

ENV PYTHON3_PREFIX /usr
ENV PYTHON3_VERSION python3.12

RUN update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.12 1 #Needed for Bazel build

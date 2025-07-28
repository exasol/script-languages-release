FROM {{udfclient_deps}}

COPY language_deps/packages /build_info/packages/language_deps

RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/language_deps/apt_get_packages --with-versions

RUN /scripts/install_scripts/install_python3.10_pip.sh "pip == 24.0"

COPY language_deps/packages/python3_pip_packages /build_info/packages/language_deps
RUN /scripts/install_scripts/install_via_pip.pl --file /build_info/packages/language_deps/python3_pip_packages --python-binary python3.10 --with-versions --ancestor-pip-package-root-path /build_info/packages

ENV PYTHON3_PREFIX /usr
ENV PYTHON3_VERSION python3.10
# Determine architecture and write relevant env vars to /env
RUN ARCH=$(dpkg --print-architecture) && \
    if [ "$ARCH" = "amd64" ]; then \
        JAVA_PREFIX="/usr/lib/jvm/java-11-openjdk-amd64"; \
        OPENSSL_LIB="/usr/lib/x86_64-linux-gnu"; \
    elif [ "$ARCH" = "arm64" ]; then \
        JAVA_PREFIX="/usr/lib/jvm/java-11-openjdk-arm64"; \
        OPENSSL_LIB="/usr/lib/aarch64-linux-gnu"; \
    else \
        echo "Unsupported architecture: $ARCH" && exit 1; \
    fi && \
    echo "export JAVA_PREFIX=$JAVA_PREFIX" >> /env && \
    echo "export ARCH=$ARCH" >> /env && \
    echo "export PROTOBUF_LIBRARY_PREFIX=/usr/lib/" >> /env && \
    echo "export PROTOBUF_INCLUDE_PREFIX=/usr/include/" >> /env && \
    echo "export ZMQ_LIBRARY_PREFIX=/usr/lib" >> /env && \
    echo "export ZMQ_INCLUDE_PREFIX=/usr/include" >> /env && \
    echo "export OPENSSL_LIBRARY_PREFIX=$OPENSSL_LIB" >> /env && \
    echo "export OPENSSL_INCLUDE_PREFIX=/usr/include/openssl" >> /env

# Optional: make it available in all shells
RUN cat /env >> /etc/environment
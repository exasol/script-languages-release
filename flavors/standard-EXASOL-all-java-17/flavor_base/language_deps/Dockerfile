FROM {{udfclient_deps}}

COPY language_deps/packages /build_info/packages/language_deps

RUN /scripts/install_scripts/install_via_apt.pl --file /build_info/packages/language_deps/apt_get_packages --with-versions

# Determine architecture and write relevant env vars to /env
RUN ARCH=$(dpkg --print-architecture) && \
    if [ "$ARCH" = "amd64" ]; then \
        JAVA_PREFIX="/usr/lib/jvm/java-17-openjdk-amd64"; \
        OPENSSL_LIB="/usr/lib/x86_64-linux-gnu"; \
    elif [ "$ARCH" = "arm64" ]; then \
        JAVA_PREFIX="/usr/lib/jvm/java-17-openjdk-arm64"; \
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


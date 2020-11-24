FROM {{ language_deps }}

RUN mkdir -p /build_info/packages/flavor_base_deps
COPY flavor_base_deps/packages/apt_get_packages /build_info/packages/flavor_base_deps
COPY flavor_base_deps/compile_libcurl3_with_sftp.sh /tmp/compile_libcurl3_with_sftp.sh
COPY flavor_base_deps/sources.list /etc/apt/sources.list
COPY flavor_base_deps/ubuntu_libssl.patch /tmp/ubuntu_libssl.patch

RUN apt-get -y update && \
    bash -x /tmp/compile_libcurl3_with_sftp.sh && \
    rm /tmp/compile_libcurl3_with_sftp.sh && \
    locale-gen en_US.UTF-8 && \
    update-locale LC_ALL=en_US.UTF-8 && \
    apt-get -y clean && \
    apt-get -y autoremove && \
    ldconfig

RUN apt-get -y update && \
    apt-get -y install --allow-downgrades $(cat /build_info/packages/flavor_base_deps/apt_get_packages) && \
    locale-gen en_US.UTF-8 && \
    update-locale LC_ALL=en_US.UTF-8 && \
    apt-get -y clean && \
    apt-get -y autoremove && \
    ldconfig

COPY flavor_base_deps/packages/cran_packages /build_info/packages/flavor_base_deps

RUN R CMD javareconf
RUN /scripts/install_scripts/install_packages_batch.sh "CRAN" "Rscript -e 'install.packages(c(<<list>>),repos=\"http://cran.r-project.org\",Ncpus=\"2\")'" '"<<package>>"' "," /build_info/packages/flavor_base_deps/cran_packages
#TODO add build args to docker_build, in this case for number of cores
#TODO do we need the r package shiny? Probably not, it is a web app?
#TODO do we need the r package rgl, because it needs an X server

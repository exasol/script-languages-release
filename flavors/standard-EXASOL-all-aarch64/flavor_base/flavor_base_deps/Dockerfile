FROM {{ flavor_base_deps_python }}

COPY --from={{flavor_base_deps_r}} /usr/local/lib/R/site-library /usr/local/lib/R/site-library
RUN true # workaround for https://github.com/moby/moby/issues/37965

COPY --from={{flavor_base_deps_r}} /build_info /build_info

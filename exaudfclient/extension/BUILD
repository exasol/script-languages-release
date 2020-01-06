load("@script_languages//:variables.bzl", "VM_ENABLED_DEFINES")

alias(
    name = "benchmark",
    actual = "@script_languages//:benchmark"
)

alias(
    name = "python",
    actual = "@script_languages//:python"
)

alias(
    name = "java",
    actual = "@script_languages//:java"
)

alias(
    name = "bash",
    actual = "@script_languages//:bash"
)

config_setting(
    name = "r",
    define_values = {"r": "true"},
)


VM_ENABLED_DEPS=select({
        "//:benchmark": ["@script_languages//benchmark_container:benchmark_container"],
        "//conditions:default": []
    }) + select({
        "//:java": ["@script_languages//javacontainer:javacontainer"],
        "//conditions:default": []
    }) + select({
        "//:bash": ["@script_languages//streaming_container:streamingcontainer"],
        "//conditions:default": []
    })

VM_PYTHON2_DEPS=select({
        "//:python": ["@script_languages//python/python2:pythoncontainer"],
        "//conditions:default": []
    }) 

VM_PYTHON3_DEPS=select({
        "//:python": ["@script_languages//python/python3:pythoncontainer"],
        "//conditions:default": []
    }) 

VM_R_DEPS=select({
        ":r": ["//rcontainer:rcontainer"],
        "//conditions:default": []
    })

R_VM_ENABLED_DEFINE=select({
        "//:r": ["ENABLE_R_VM"],
        "//conditions:default": []
    })
VM_ENABLED_DEFINES=VM_ENABLED_DEFINES+R_VM_ENABLED_DEFINE


cc_binary(
    name = "exaudfclient_bin",
    srcs = ["exaudfclient.cc"],
    linkopts = ["-ldl"], # needed for dynamicly loading libexaudflib_complete.so into another linker namespace
    deps = ["@script_languages//exaudflib:header", "@script_languages//:debug_message_h"]+VM_ENABLED_DEPS+VM_PYTHON2_DEPS+VM_R_DEPS+
            ["@script_languages//exaudflib:exaudflib-deps"],
    defines = VM_ENABLED_DEFINES,
    data = ["@script_languages//:libexaudflib_complete.so"]
)

cc_binary(
    name = "exaudfclient_py3_bin",
    srcs = ["exaudfclient.cc"],
    linkopts = ["-ldl"], # needed for dynamicly loading libexaudflib_complete.so into another linker namespace
    deps = ["@script_languages//exaudflib:header", "@script_languages//:debug_message_h"]+VM_ENABLED_DEPS+VM_PYTHON3_DEPS+VM_R_DEPS+
            ["@script_languages//exaudflib:exaudflib-deps"],
    defines = VM_ENABLED_DEFINES,
    data = ["@script_languages//:libexaudflib_complete.so"]
)

# Workarround for the hardcoded paths in exaudfclient for libexaudflib_complete.so and python_ext_dataframe.cc
# - libexaudflib_complete.so and python_ext_dataframe.cc get dynamically loaded, therefore the exaudfclient needs to know their paths
# - Most flexible way to provides these paths would environment variables
# - The exasol database can't provide these paths, because they depend on the container
# - A workarround to provide these paths would be wrapper bash script which set these environment variables
# - For performance reason, we can not wrap the binary into a shell script, as such this is only for local debugging and testing
#   and we hardcode the paths for the production container


SLOW_WRAPPER_BINARY_PY2="""$(location @script_languages//:wrapper_generator_bin) "$(location exaudfclient_bin)" "$(location exaudfclient)" "$(location exaudfclient.template.sh)" """
FAST_BINARY_PY2="""cp "$(location exaudfclient_bin)" "$(location exaudfclient)" """
CREATE_BINARY_PY2_SCRIPT=select({
        "@script_languages//:fast_binary": FAST_BINARY_PY2,
        "@script_languages//:slow_wrapper": SLOW_WRAPPER_BINARY_PY2,
        "//conditions:default": FAST_BINARY_PY2
    })
genrule(
    name = "exaudfclient",
    cmd = CREATE_BINARY_PY2_SCRIPT, 
    outs = ["exaudfclient"],
    srcs = [":exaudfclient_bin", "@script_languages//:libexaudflib_complete.so", "exaudfclient.template.sh","@script_languages//:wrapper_generator_bin"],
    output_to_bindir = True
)

SLOW_WRAPPER_BINARY_PY3="""$(location @script_languages//:wrapper_generator_bin) "$(location exaudfclient_py3_bin)" "$(location exaudfclient_py3)" "$(location exaudfclient.template.sh)" """
FAST_BINARY_PY3="""cp "$(location exaudfclient_py3_bin)" "$(location exaudfclient_py3)" """
CREATE_BINARY_PY3_SCRIPT=select({
        "@script_languages//:fast_binary": FAST_BINARY_PY3,
        "@script_languages//:slow_wrapper": SLOW_WRAPPER_BINARY_PY3,
        "//conditions:default": FAST_BINARY_PY3
    })
genrule(
    name = "exaudfclient_py3",
    cmd = CREATE_BINARY_PY3_SCRIPT,
    outs = ["exaudfclient_py3"],
    srcs = [":exaudfclient_py3_bin", "@script_languages//:libexaudflib_complete.so", "exaudfclient.template.sh", "@script_languages//:wrapper_generator_bin"],
    output_to_bindir = True
)

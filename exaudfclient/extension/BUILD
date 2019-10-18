load("@script_languages//:variables.bzl", "VM_ENABLED_DEFINES")

config_setting(
    name = "benchmark",
    define_values = {"benchmark": "true"},
)

config_setting(
    name = "python",
    define_values = {"python": "true"},
)

config_setting(
    name = "java",
    define_values = {"java": "true"},
)

config_setting(
    name = "bash",
    define_values = {"bash": "true"},
)

config_setting(
    name = "r",
    define_values = {"r": "true"},
)

config_setting(
    name = "fast_binary",
    define_values = {
        "binary_type": "fast_binary",
        },
)

config_setting(
    name = "slow_wrapper",
    define_values = {
        "binary_type": "slow_wrapper",
        },
)

cc_library(
    name = "debug_message_h",
    hdrs = [
        "debug_message.h"
    ],
    alwayslink = True,
)

VM_ENABLED_DEPS=select({
        ":benchmark": ["@script_languages//benchmark_container:benchmark_container"],
        "//conditions:default": []
    }) + select({
        ":java": ["@script_languages//javacontainer:javacontainer"],
        "//conditions:default": []
    }) + select({
        ":bash": ["@script_languages//streaming_container:streamingcontainer"],
        "//conditions:default": []
    })

VM_PYTHON2_DEPS=select({
        ":python": ["@script_languages//python/python2:pythoncontainer"],
        "//conditions:default": []
    }) 

VM_PYTHON3_DEPS=select({
        ":python": ["@script_languages//python/python3:pythoncontainer"],
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

SLOW_WRAPPER_BINARY_PY2="""
  $(location create_binary_wrapper.sh) "$(location exaudfclient_bin)" "$(location exaudfclient)" "$(location exaudfclient.template.sh)"
"""
FAST_BINARY_PY2="""cp "$(location exaudfclient_bin)" "$(location exaudfclient)" """
CREATE_BINARY_PY2_SCRIPT=select({
        "//:fast_binary": FAST_BINARY_PY2,
        "//:slow_wrapper": SLOW_WRAPPER_BINARY_PY2,
        "//conditions:default": FAST_BINARY_PY2
    })

genrule(
    name = "exaudfclient",
    cmd = CREATE_BINARY_PY2_SCRIPT, 
    outs = ["exaudfclient"],
    srcs = [":exaudfclient_bin", "@script_languages//:libexaudflib_complete.so", "exaudfclient.template.sh","create_binary_wrapper.sh"],
    output_to_bindir = True
)

SLOW_WRAPPER_BINARY_PY3="""
  $(location create_binary_wrapper.sh) "$(location exaudfclient_py3_bin)" "$(location exaudfclient_py3)" "$(location exaudfclient.template.sh)"
"""
FAST_BINARY_PY3="""cp "$(location exaudfclient_py3_bin)" "$(location exaudfclient_py3)" """
CREATE_BINARY_PY3_SCRIPT=select({
        "//:fast_binary": FAST_BINARY_PY3,
        "//:slow_wrapper": SLOW_WRAPPER_BINARY_PY3,
        "//conditions:default": FAST_BINARY_PY3
    })
genrule(
    name = "exaudfclient_py3",
    cmd = CREATE_BINARY_PY3_SCRIPT,
    outs = ["exaudfclient_py3"],
    srcs = [":exaudfclient_py3_bin", "@script_languages//:libexaudflib_complete.so", "exaudfclient.template.sh", "create_binary_wrapper.sh"],
    output_to_bindir = True
)

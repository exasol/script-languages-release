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

load("@script_languages//:variables.bzl", "VM_ENABLED_DEFINES")

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
    name = "exaudfclient",
    srcs = ["exaudfclient.cc"],
    linkopts = ["-ldl"], # needed for dynamicly loading libexaudflib_complete.so into another linker namespace
    deps = ["@script_languages//exaudflib:header", "@script_languages//:debug_message_h"]+VM_ENABLED_DEPS+VM_PYTHON2_DEPS+VM_R_DEPS+
            ["@script_languages//exaudflib:exaudflib-deps"],
    defines = VM_ENABLED_DEFINES,
    data = ["@script_languages//:libexaudflib_complete.so"]
)

cc_binary(
    name = "exaudfclient_py3",
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
genrule(
    name = "exaudfclient_py2_bash_wrapper",
    cmd = """
        $(location create_binary_wrapper.sh) "$(location exaudfclient)" "$(location exaudfclient.sh)" "$(location exaudfclient.template.sh)"
    """,
    outs = ["exaudfclient.sh"],
    srcs = [":exaudfclient", "@script_languages//:libexaudflib_complete.so", "exaudfclient.template.sh","create_binary_wrapper.sh"],
    output_to_bindir = True
)

genrule(
    name = "exaudfclient_py3_bash_wrapper",
    cmd = """
        $(location create_binary_wrapper.sh) "$(location exaudfclient_py3)" "$(location exaudfclient_py3.sh)" "$(location exaudfclient.template.sh)"
    """,
    outs = ["exaudfclient_py3.sh"],
    srcs = [":exaudfclient_py3", "@script_languages//:libexaudflib_complete.so", "exaudfclient.template.sh", "create_binary_wrapper.sh"],
    output_to_bindir = True
)

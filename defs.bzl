load("//build/kernel/kleaf:kernel.bzl", "kernel_module")

def rtl8822es_module(name, kernel_build, deps = None):
    kernel_module(
        name = name,
        srcs = ["//vendor/amlogic/realtek-drivers/8822es:rtl8822es_srcs"],
        makefile = ["//vendor/amlogic/realtek-drivers/8822es:Makefile"],
        deps = deps,
        outs = ["8822es.ko"],
        kernel_build = kernel_build,
    )

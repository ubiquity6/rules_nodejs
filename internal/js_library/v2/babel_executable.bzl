load("@build_bazel_rules_nodejs//:defs.bzl", "nodejs_binary")

"""
Create a viable babel executable that contains different dependencies than the default one.

Args:
  babel_deps: dependencies that will be needed for the babelrc.
"""
def babel_executable(name, deps):
  nodejs_binary(
      name = name,
      data = ["@build_bazel_rules_nodejs//internal/js_library/v2:babel.js"] + deps,
      entry_point = "build_bazel_rules_nodejs/internal/js_library/v2/babel.js",
      install_source_map_support = False,
)


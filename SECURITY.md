# Security Policy

This repository contains plain Godot scenes, GDScript, Markdown files, and an
MIT license. It does not ship executables or installers.

Before enabling any Godot addon in an important project, inspect the source and
try it in a blank project first.

For this package, a quick trust check is:

- inspect `addons/shipkit_public_demo_readiness/plugin.cfg`
- inspect `addons/shipkit_public_demo_readiness/plugin.gd`
- inspect `addons/shipkit_public_demo_readiness/scripts/demo_readiness_inspector.gd`
- compare the release ZIP with the published SHA256 and manifest

Report install or source-trust concerns through GitHub issues. Please include
your Godot version, operating system, the package version, and any console
output. Do not include private project files or secrets in an issue.

Supported version:

| Version | Supported |
| --- | --- |
| `v0.1.0` | Yes |

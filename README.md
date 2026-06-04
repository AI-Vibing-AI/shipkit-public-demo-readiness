# ShipKit Public Demo Readiness

Free Godot 4 public-demo readiness checklist and lightweight inspector scene.

Use this when your demo is playable, but you want to catch wrapper and trust
gaps before sending it to public players, press, streamers, festival reviewers,
or external playtesters.

## Need the full demo shell?

This repository is the free checklist and inspector only. If you want the
ready-made Godot 4 pause/settings/input-remap/reset/feedback/store-CTA shell,
the optional full kit is here:

https://shipkitstudio.itch.io/godot-4-next-fest-demo-shell?utm_source=github_readme&utm_medium=owned_repo&utm_campaign=public_demo_readiness

Download the full kit free if you need to inspect fit first. A paid/supporter
download is optional and helps fund install docs, compatibility smoke tests,
and small Godot 4.2-4.6.x fixes.

## What's Included

- `addons/shipkit_public_demo_readiness/docs/PUBLIC_DEMO_READINESS_CHECKLIST.md`
- `addons/shipkit_public_demo_readiness/scenes/demo_readiness_inspector.tscn`
- `addons/shipkit_public_demo_readiness/scripts/demo_readiness_inspector.gd`
- MIT license

## Source Trust

- Source tag: https://github.com/AI-Vibing-AI/shipkit-public-demo-readiness/releases/tag/v0.1.0
- ZIP: https://github.com/AI-Vibing-AI/shipkit-public-demo-readiness/releases/download/v0.1.0/shipkit-public-demo-readiness-v0.1.0.zip
- SHA256: https://github.com/AI-Vibing-AI/shipkit-public-demo-readiness/releases/download/v0.1.0/shipkit-public-demo-readiness-v0.1.0.zip.sha256
- Manifest: https://github.com/AI-Vibing-AI/shipkit-public-demo-readiness/releases/download/v0.1.0/shipkit-public-demo-readiness-v0.1.0-manifest.txt

## License

MIT. See `LICENSE.md`.

## Support

Use GitHub issues after this free asset is published. Include your Godot
version, operating system, whether the addon was copied into an existing
project, and any console output.

The inspector checks for common public-demo wrapper items such as a pause
action, reset hook, feedback URL, store CTA, build stamp, and source package
trust docs. It is intentionally small and plain GDScript so Godot developers
can inspect or adapt it quickly.

## Install

Copy `addons/shipkit_public_demo_readiness` into your Godot 4 project.
Enable the plugin from `Project > Project Settings > Plugins` if you want the
`PublicDemoReadinessInspector` node type to appear in the editor. You can also
instance `res://addons/shipkit_public_demo_readiness/scenes/demo_readiness_inspector.tscn`
directly in a debug or QA scene.

Optional exported paths:

- `pause_menu_path`
- `demo_controller_path`
- `build_stamp_path`

The scene can run without these paths, but the related checks will show TODO
until you wire them to your own project nodes.

## Boundary

This is the free checklist/inspector, not the full demo shell. It does not
include the paid/PWYW shell's pause menu, settings menu, input remapping,
controller labels, reset confirmation UI, feedback button, or store CTA button.

The optional full shell is here:
https://shipkitstudio.itch.io/godot-4-next-fest-demo-shell?utm_source=github_readme&utm_medium=owned_repo&utm_campaign=public_demo_readiness

You do not need the optional full shell to use this free checklist/inspector.

## AI Disclosure

Some docs and code in this package were AI-assisted and then reviewed, edited,
packaged, and tested by ShipKit Studio. The package is plain GDScript, scenes,
and Markdown so you can inspect the full source before using it.

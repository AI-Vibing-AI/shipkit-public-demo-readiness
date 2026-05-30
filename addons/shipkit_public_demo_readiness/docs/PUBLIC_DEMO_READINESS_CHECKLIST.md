# Public Demo Readiness Checklist

Use this before sending a Godot demo to public players, press, streamers, festival reviewers, or external playtesters.

This checklist is intentionally practical. It does not prove your game is good, bug-free, or festival-ready. It helps catch the wrapper and trust failures that make a playable demo feel unfinished.

## Player Entry

- [ ] First playable scene loads from a clean launch without editor-only setup.
- [ ] First input prompt matches the current device family.
- [ ] Player can pause within 5 seconds of gaining control.
- [ ] Player can quit back to the shell/menu without force-closing the game.
- [ ] There is no placeholder debug text, test URL, or internal build note visible to players.

## Pause And Resume

- [ ] Keyboard pause works.
- [ ] Controller pause/start works.
- [ ] Resume returns focus to the game.
- [ ] Pause cannot leave the player stuck in a hidden mouse/cursor state.
- [ ] Pause menu text fits at the smallest supported window size.

## Settings

- [ ] Fullscreen/windowed setting applies immediately.
- [ ] Resolution/window setting survives restart if your demo exposes it.
- [ ] VSync setting applies and persists.
- [ ] Master volume changes immediately and persists.
- [ ] Settings can be changed with keyboard, mouse, and controller if those inputs are supported.

## Input Remapping

- [ ] Keyboard bindings can be changed.
- [ ] Controller bindings display readable labels.
- [ ] Binding conflicts are visible to the player.
- [ ] Previous binding is cleared or moved predictably when a conflict is accepted.
- [ ] Rebound controls persist after restart.
- [ ] Reset-to-default input flow is available.

## Demo Reset And Saves

- [ ] Reset has a confirmation step.
- [ ] Reset clears only demo-owned files.
- [ ] Reset does not delete unrelated player data.
- [ ] Fresh-launch behavior after reset matches a first-time player.
- [ ] If the demo has save slots, slot behavior is documented and tested.

## Feedback And Store Links

- [ ] Feedback URL is set before publishing.
- [ ] Store/wishlist/press URL is set before publishing if used.
- [ ] Buttons are hidden when URLs are blank.
- [ ] Button labels match the actual destination.
- [ ] External links open successfully on the target OS.

## Build Identity

- [ ] Build/version stamp is visible in the demo shell or pause/settings flow.
- [ ] Stamp matches the uploaded package name.
- [ ] Feedback form or bug-report prompt asks for the same build/version value.
- [ ] Changelog or release notes mention known limitations.

## Package Trust

- [ ] Package contains source/project files, not an unexpected installer.
- [ ] README explains what to open first.
- [ ] README explains what not to copy into an existing project.
- [ ] Manifest/checksum is available if distributing outside a trusted store.
- [ ] Support/contact path is visible.
- [ ] Known limits and non-affiliation claims are clear.

## Public Listing

- [ ] First screenshot or GIF shows real runtime behavior.
- [ ] First paragraph says who should use the demo/tool.
- [ ] Price/free/PWYW terms are clear.
- [ ] Compatibility range is clear.
- [ ] The listing does not imply Godot, Valve, Steam, or festival endorsement.
- [ ] The download flow has been tested in a clean browser without creating fake analytics where possible.

## Optional Full Shell Mapping

The optional full ShipKit shell covers these checklist areas:

- Pause and resume.
- Settings persistence.
- Input remapping and conflict handling.
- Demo reset hook.
- Feedback and store URL hooks.
- Build/version stamp.
- README, known limits, support promise, manifest, and checksum.

You still need to test your own gameplay, save files, export presets, platform requirements, Steamworks integration if any, store page, press kit, and festival submission rules.

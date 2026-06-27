# FNF: GPT Engine

**FNF: GPT Engine** is a clean-room Haxe + HaxeFlixel parody engine inspired by the workflow of Friday Night Funkin' mod engines.

> This repository is a joke and a technical experiment made for fun. It is not an official Friday Night Funkin' project, it is not affiliated with Psych Engine, and it does not contain copied code from either project.

## What is included now

- A compilable-style HaxeFlixel project scaffold (`Project.xml`, `haxelib.json`, and `source/`).
- Boot flow, main menu, Story Mode, Freeplay, Options, Credits, and editor shell states.
- Prototype `PlayState` with conductor timing and Lua-style callback dispatch.
- Mod-aware path resolver with `Mod > base game` priority for native targets.
- Save-backed options data, including a Game Boy Mode flag.
- A tiny YouTube player facade for future embedded/platform-specific implementations.
- Base JSON data for tutorial, Weeks 1-6 placeholders, characters, and dialogue. Week 7 is intentionally not included.
- GitHub Pages-ready documentation pages and CI scaffolding.

## Build

Install Haxe, Lime, OpenFL, and HaxeFlixel, then run:

```bash
lime test html5
```

This environment may not have Haxe installed locally, but CI is configured to validate the project with Haxe 4.3.6.

## Project layout

```text
source/          Engine source code
assets/          Base game JSON/assets
mods/            Drop-in mod folders; mod files override base assets
docs/            GitHub Pages-ready documentation
.github/         CI workflow
```

## Manual GitHub upload fallback

If the pull request workflow is unavailable, upload the repository contents from this branch manually to GitHub, then open a PR from the uploaded branch into `main`.

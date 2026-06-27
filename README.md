# FNF: GPT Engine

**FNF: GPT Engine** is a clean-room Haxe + HaxeFlixel experiment inspired by the workflow of Friday Night Funkin' engines.

> This repository is a joke and a technical experiment made for fun. It is not an official Friday Night Funkin' project, it is not affiliated with Psych Engine, and it does not contain copied code from either project.

## Current scope

This branch provides the initial project documentation and repository entry point for the pull request workflow. The engine is intended to grow into a modular codebase with:

- Haxe + HaxeFlixel source code.
- Psych-style JSON content compatibility where practical.
- A `/mods/` folder with `Mod > base game` load priority.
- Lua-style lifecycle callbacks such as `onCreate`, `onUpdate`, `onBeatHit`, and `onEvent`.
- Story Mode, Freeplay, Options, Credits, and editor screens.
- GitHub Pages-ready documentation.

## Manual GitHub upload fallback

If the pull request workflow is unavailable, upload the repository contents from this branch manually to GitHub, then open a PR from the uploaded branch into `main`.

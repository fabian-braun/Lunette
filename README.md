# Lunette

> Spectacle Window Manager Keybindings For Hammerspoon

Lunette is an easily configurable and extendible Hammerspoon package that implements all of the Spectacle keybindings.

## Fork

Forked from https://github.com/scottwhudson/Lunette and stripped down to the bare minimum I need.
All credit goes to the original author :)

## Default Keybindings

Lunette comes with a set of default keybindings. See installation for more on altering and disabling default keybindings.

| CommandName   | (Chord) Activator |
|---------------|:-----------------:|
| `center`      |      (⌥ ⌘) C      |
| `fullScreen`  |      (⌥ ⌘) F      |
| `leftHalf`    |      (⌥ ⌘) ←      |
| `rightHalf`   |      (⌥ ⌘) →      |
| `nextDisplay` |     (⌃ ⌥ ⌘) →     |
| `prevDisplay` |     (⌃ ⌥ ⌘) ←     |
| `nextThird`   |      (⌃ ⌥) →      |
| `prevThird`   |      (⌃ ⌥) ←      |
| `enlarge`     |     (⌃ ⌥ ⇧) →     |
| `shrink`      |     (⌃ ⌥ ⇧) ←     |

## Installation

1. Clone this repo
2. Symlink it as a Spoon

   ```shell
   ln -s ./Lunette/Source/Lunette.spoon ~/.hammerspoon/Spoons/Lunette.Spoon
   ```

3. Use it

    ```lua
    -- ~/.hammerspoon/init.lua
    hs.spoons.use("Lunette", { hotkeys = "default" })
    ```

    Override default hotkey definitions by passing a custom mapping table to `bindHotkeys()`

    ```lua
    -- ~/.hammerspoon/init.lua
    hs.loadSpoon("Lunette")

    customBindings = {
      leftHalf = {
        {{"Q", "W"}, "E"},
        {{"cmd", "alt"}, "left"},
      },
      rightHalf = {
        {{"A", "S"}, "D"},
      },
      undo = false,
      redo = false
    }

    spoon.Lunette:bindHotkeys(customBindings)
    ```

## Changelog

## no more releases, just a git repo

## v0.3.1
Bugfix:
* fix installation error introduced in v0.3 (@jasperzs)

### v0.3
New features:
* exposing the window resizer API outside of Lunette (@jokajak)
* adding SpoonInstaller/Make config (@jokajak)

### v0.2
Minor bugfixes and improvements:
* use integer division instead of `math.floor` (@shayneholmes)
* fix issue with stuck bottom corner calculations (@shayneholmes)
* permit multiple mappings per keybinding (@davidosomething)
* add gitignore
* add release checklist

### v0.1-beta
Initial Release

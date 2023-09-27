# random-colorscheme.nvim

`random-colorscheme.nvim` is a Neovim plugin that sets your colorscheme to a random one from the list of available colorschemes or a list provided by the user.

## Installation

Use your favorite package manager to install this plugin. For example, with [lazy.nvim]('https://github.com/folke/lazy.nvim'):

```lua
{
  'tetzng/random-colorscheme.nvim',
  opts = true,
}
```

## Configuration

```lua
{
  'tetzng/random-colorscheme.nvim',
  lazy = false,
  dependencies = {
    "folke/tokyonight.nvim",
    "rebelot/kanagawa.nvim",
    {
      "catppuccin/nvim",
      name = "catppuccin",
    }, -- Your favorite colorscheme plugins here
  },
  ---@class RandomColorscheme.UserConfig
  opts = {
    colorschemes = {
      "tokyonight-moon",
      "catppuccin-macchiato",
      "kanagawa-dragon",
    }, -- default: all available colors
    set_on_load = true, -- default: true
  },
  keys = {
    { "<leader>cc", function() require("random-colorscheme").set() end, desc = "Set Random Colorscheme" },
  },
}
```

<details>
<summary>Default Settings</summary>

```lua
{
  colorschemes = <all available colorschemes>, ---@type string[]|nil
  set_on_load = true, ---@type boolean
}
```
</details>

## Usage

After installation, the colorscheme will be set to a random one on every Neovim startup if the `set_on_load` config is set to `true` (which is the default behavior).

You can also set a random colorscheme anytime by calling:

```vim
:lua require('random-colorscheme').set()
```

If you wish to provide your own list of colorschemes:

```vim
:lua require('random-colorscheme').set({'default', 'tokyonight-night', 'kanagawa-wave'})
```

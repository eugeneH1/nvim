# Neovim config docs

Reference for Eugene's LazyVim setup. Upstream manuals are linked where useful; these files focus on **what is enabled here** and **your overrides**.

## Index

| Doc | Contents |
|-----|----------|
| [lazyvim-extras.md](lazyvim-extras.md) | Extras in `lazyvim.json` + implicit v8 defaults |
| [mini-surround.md](mini-surround.md) | Surround keybindings and examples |
| [custom-plugins.md](custom-plugins.md) | Files under `lua/plugins/` |
| [keymap-conflicts.md](keymap-conflicts.md) | Known overlapping keymaps |

## Layout

```
~/.config/nvim/
├── init.lua              # Entry; VS Code `df` → Esc
├── lazyvim.json          # Enabled LazyVim extras
├── lua/
│   ├── config/           # lazy.lua, keymaps, options, autocmds
│   └── plugins/          # Plugin overrides (lazy.nvim specs)
└── docs/                 # This directory
```

## Quick links

- [LazyVim](https://lazyvim.github.io/)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [mini.surround](https://github.com/nvim-mini/mini.surround)

# Custom plugin overrides

Files in [`lua/plugins/`](../lua/plugins/) extend or override LazyVim defaults via lazy.nvim.

## Active specs

### `disabled.lua`

| Plugin | Setting |
|--------|---------|
| `akinsho/bufferline.nvim` | `enabled = false` |

Uses LazyVim's default tabline instead of bufferline.

### `snacks.lua`

Overrides [`folke/snacks.nvim`](https://github.com/folke/snacks.nvim):

- **Explorer:** `replace_netrw = true` — Snacks replaces netrw for directory buffers.
- **Buffers picker:** `<leader>,` opens `Snacks.picker.buffers` in normal mode (`stopinsert` on show), with `d` to delete buffer in picker.

### `lazygit.lua`

| Key | Action |
|-----|--------|
| `<leader>lg` | `:LazyGit` |

Plugin: [kdheepak/lazygit.nvim](https://github.com/kdheepak/lazygit.nvim)

### `flutter.lua`

| Setting | Value |
|---------|-------|
| Plugin | `nvim-flutter/flutter-tools.nvim` |
| `lazy` | `false` (loads at startup) |
| `config` | `true` (default setup) |
| Deps | `plenary.nvim` |

### `tokyonight.lua`

Tokyo Night with transparent background:

```lua
transparent = true
styles = { sidebars = "transparent", floats = "transparent" }
```

### `noice.lua`

Disables auto-opening LSP signature help:

```lua
lsp.signature.auto_open.enabled = false
```

### `plenary.lua`

Ensures [plenary.nvim](https://github.com/nvim-lua/plenary.nvim) is available (dependency for other plugins).

## Removed / inactive

### `surround.lua` (deleted)

Previously remapped mini.surround to `<leader>sa` / `<leader>sd`, which conflicted with Snacks. Surround now uses the LazyVim extra defaults only — see [mini-surround.md](mini-surround.md).

### `example.lua`

Disabled (`if true then return {} end`). Template only.

## Config (not plugins)

| File | Role |
|------|------|
| `lua/config/lazy.lua` | Bootstraps lazy.nvim and LazyVim |
| `lua/config/keymaps.lua` | `df` → `<Esc>` in insert/visual |
| `lua/config/options.lua` | Extra `vim.opt` (mostly empty) |
| `lua/config/autocmds.lua` | Custom autocommands (empty) |
| `init.lua` | VS Code: `df` → `<Esc>` in insert |

# Keymap conflicts

Notes on overlapping bindings in this config.

## Resolved: surround vs Snacks picker

**Problem:** A former `lua/plugins/surround.lua` set `add = "<leader>sa"` and `delete = "<leader>sd"`. LazyVim v8 auto-enables `editor.snacks_picker`, which uses the same keys:

| Key | Snacks (wins without fix) | mini.surround (intended) |
|-----|---------------------------|--------------------------|
| `<leader>sa` | Autocmds picker | Add surrounding |
| `<leader>sd` | Diagnostics picker | Delete surrounding |

**Fix:** Removed the surround override. Use LazyVim defaults `gsa` / `gsd` instead. See [mini-surround.md](mini-surround.md).

## `<leader>s` vs `gs` prefix

| Prefix | Group | Examples |
|--------|-------|----------|
| `<leader>s*` | Search (Snacks picker) | `<leader>sg` grep, `<leader>sk` keymaps |
| `gs*` | Surround (mini.surround) | `gsa`, `gsd`, `gsr` |

These are intentionally separate. Do not remap surround add/delete onto `<leader>sa` / `<leader>sd`.

## Other `<leader>` groups (no clash with surround)

| Prefix | Group |
|--------|-------|
| `<leader>f*` | Find files |
| `<leader>g*` | Git |
| `<leader>d*` | DAP debug |
| `<leader>t*` | Tests (neotest) |
| `<leader>h` / `<leader>H` | Harpoon menu / add file |

## Checking mappings

```vim
:map gsa
:map <leader>sa
```

After a config change: `:Lazy reload mini.surround` or restart Neovim.

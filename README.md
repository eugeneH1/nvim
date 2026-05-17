# LazyVim

Eugene Heynike's custom LazyVim config.

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim). See the [installation docs](https://lazyvim.github.io/installation) to get started.

## Surround (mini.surround)

Provided by the `coding.mini-surround` extra. See [docs/mini-surround.md](docs/mini-surround.md) for the full reference.

| Action | Keys | Example |
|--------|------|---------|
| Add | `gsa` + motion + delimiter | `gsaiw"` — quotes around inner word |
| Delete | `gsd` + delimiter | `gsd"` — remove surrounding `"` |
| Replace | `gsr` + from + to | `gsr"'` — change `'` to `"` |
| Find | `gsf` / `gsF` | jump to right / left edge |
| Highlight | `gsh` + delimiter | flash the pair |

**Note:** Do not use `<leader>sa` / `<leader>sd` for surround — those are Snacks picker keys (Autocmds / Diagnostics).

# mini.surround

**Plugin:** [nvim-mini/mini.surround](https://github.com/nvim-mini/mini.surround)  
**Enabled via:** `lazyvim.plugins.extras.coding.mini-surround` in `lazyvim.json`  
**LazyVim docs:** [Surround](https://www.lazyvim.org/extras/coding/mini-surround)

There is no local `lua/plugins/surround.lua` override — defaults from the extra apply.

## Keybindings

LazyVim prefixes mini's `sa`/`sd`/… with `g` so they do not clash with the `<leader>s*` Snacks search group.

| Action | Keys | Modes |
|--------|------|-------|
| Add | `gsa` | Normal, Visual |
| Delete | `gsd` | Normal |
| Replace | `gsr` | Normal |
| Find (right) | `gsf` | Normal |
| Find (left) | `gsF` | Normal |
| Highlight | `gsh` | Normal |
| Update `n_lines` | `gsn` | Normal |

Press `gs` and wait for which-key to see the surround group.

## How it works

mini.surround is **operator-pending**: press the action, then (for add) an optional motion, then a **delimiter character**.

### Delimiters

| Key | Meaning |
|-----|---------|
| `"` `'` | Same character on both sides |
| `)` `]` `}` `>` | Brackets (balanced pair) |
| `f` | Function call — prompts for name on add |
| `t` | HTML/XML tag — prompts for tag name |
| `?` | Interactive — type left part, Enter, right part, Enter |

### Examples

| Goal | Keys |
|------|------|
| Quote inner word | `gsaiw"` |
| Parens around inner word | `gsaiw)` |
| Quote visual selection | select text, then `gsa"` |
| Remove double quotes | `gsd"` |
| Change single to double quotes | `gsr"'` |
| Replace parens with `<motion>` tag | `gsr)t` then type tag name |
| Delete 2nd function surrounding | `2gsdf` |
| Find next function surrounding | `gsnf` |

### Extended search (optional suffix)

Append `n` (next) or `l` (last) before the delimiter on find/delete/replace/highlight actions, e.g. `sdnf` (delete next function call).

## VS Code

The `vscode` extra whitelists `mini.surround`. The same `gs*` bindings work in Neovim inside VS Code.

## Do not use

| Keys | Why |
|------|-----|
| `<leader>sa` | Snacks picker: Autocmds |
| `<leader>sd` | Snacks picker: Diagnostics |

See [keymap-conflicts.md](keymap-conflicts.md).

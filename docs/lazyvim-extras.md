# LazyVim extras

Listed in [`lazyvim.json`](../lazyvim.json). Manage with `:LazyExtras` or edit that file.

Upstream index: [lazyvim.org/extras](https://www.lazyvim.org/extras)

## Explicit extras

| Extra | Purpose | Notable keys / notes |
|-------|---------|----------------------|
| `coding.mini-surround` | Add/delete/replace surrounding pairs | `gsa`, `gsd`, `gsr`, … — [mini-surround.md](mini-surround.md) |
| `dap.core` | Debug Adapter Protocol | `<leader>db` breakpoint, `<leader>dc` continue, `<leader>di/o` step, `<leader>du` DAP UI |
| `editor.harpoon2` | Quick file marks | `<leader>H` add file, `<leader>h` quick menu |
| `lang.json` | JSON LSP, formatting | JSON schemas via schemastore |
| `lang.markdown` | Markdown tooling | Preview, treesitter, etc. |
| `lang.rust` | Rust analyzer, rustfmt, crates | Rust-specific LSP and tools |
| `lang.tailwind` | Tailwind CSS LSP | Works with `util.mini-hipatterns` for color swatches |
| `lang.typescript` | TS/JS LSP, eslint, prettier | Includes tsserver, optional vtsls |
| `test.core` | neotest runners | `<leader>tt` file, `<leader>tr` nearest, `<leader>ts` summary |
| `util.dot` | Dotfiles / shell in config repos | `bashls`, shellcheck, extra treesitter grammars |
| `util.mini-hipatterns` | Highlight `#hex` and Tailwind colors in buffer | No extra keys; colors show inline |
| `vscode` | Slim plugin set for Neovim in VS Code | Disables most plugins; keeps mini.surround, snacks, treesitter, etc. |

## Implicit defaults (install_version 8)

Not in `lazyvim.json` but enabled automatically for new v8 installs:

| Extra | Purpose | Notable keys |
|-------|---------|--------------|
| `editor.snacks_picker` | Default picker (replaces Telescope) | `<leader><space>` files, `<leader>/` grep, `<leader>sa` autocmds, `<leader>sd` diagnostics, `<leader>s*` search |
| `editor.snacks_explorer` | File explorer (replaces neo-tree) | Snacks explorer; [`snacks.lua`](../lua/plugins/snacks.lua) sets `replace_netrw = true` |

Picker backend is Snacks when `vim.g.lazyvim_picker` resolves to `"snacks"` (default on v8).

## Language extras summary

| Extra | Main benefit |
|-------|----------------|
| `lang.json` | JSON language server and formatting |
| `lang.markdown` | Markdown editing and preview support |
| `lang.rust` | Full Rust dev stack |
| `lang.tailwind` | `tailwindcss` LSP for class strings |
| `lang.typescript` | TypeScript/JavaScript LSP and linters |

Each extra pulls mason tools, LSP config, and sometimes treesitter grammars — see upstream extra page for details.

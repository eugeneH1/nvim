-- ~/.config/nvim/init.lua

-- Always load LazyVim so it can process your plugins and the VSCode Extra
require("config.lazy")

if vim.g.vscode then
  -- Add overrides that you ONLY want in VS Code here
  -- Example: your 'df' to 'esc' mapping
  vim.keymap.set("i", "df", "<Esc>", { silent = true })
end

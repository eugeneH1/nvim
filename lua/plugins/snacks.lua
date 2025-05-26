return {
  "folke/snacks.nvim",
  ---@type snacks.Config
  opts = {
    explorer = {
      replace_netrw = true,
    },
  },
  keys = {
    {
      "<leader>,",
      function()
        Snacks.picker.buffers({
          -- I always want my buffers picker to start in normal mode
          on_show = function()
            vim.cmd.stopinsert()
          end,
          finder = "buffers",
          format = "buffer",
          hidden = false,
          unloaded = true,
          current = true,
          sort_lastused = true,
          win = {
            input = {
              keys = {
                ["d"] = "bufdelete",
              },
            },
            list = { keys = { ["d"] = "bufdelete" } },
          },
          -- In case you want to override the layout for this keymap
          -- layout = "ivy",
          picker = {
            debug = true,
          },
        })
      end,
      desc = "Buffers",
    },
  },
}

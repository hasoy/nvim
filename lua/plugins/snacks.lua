return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      actions = {
        smart_enter = function(picker)
          if #picker:selected() > 0 then
            picker:action("qflist")
          else
            picker:action("confirm")
          end
        end,
      },
      win = {
        input = {
          keys = {
            ["<M-q>"] = { "qflist", mode = { "i", "n" } },
            ["<CR>"] = { "smart_enter", mode = { "i", "n" } },
          },
        },
        list = {
          keys = {
            ["<M-q>"] = { "qflist", mode = { "i", "n" } },
            ["<CR>"] = { "smart_enter", mode = { "n" } },
          },
        },
      },
    },
  },
}

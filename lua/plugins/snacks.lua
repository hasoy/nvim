return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      win = {
        input = {
          keys = {
            ["<M-q>"] = { "qflist", mode = { "i", "n" } },
            ["<CR>"] = { "qflist", mode = { "i", "n" } },
          },
        },
        list = {
          keys = {
            ["<M-q>"] = { "qflist", mode = { "i", "n" } },
            ["<CR>"] = { "qflist", mode = { "n" } },
          },
        },
      },
    },
  },
}

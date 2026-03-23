return {
  "fedepujol/move.nvim",
  opts = {},
  keys = {
    { "<A-Up>", "<cmd>MoveLine(-1)<CR>", mode = "n" },
    { "<A-Down>", "<cmd>MoveLine(1)<CR>", mode = "n" },
    { "<A-Up>", "<cmd>MoveBlock(-1)<CR>", mode = "v" },
    { "<A-Down>", "<cmd>MoveBlock(1)<CR>", mode = "v" },
  },
}

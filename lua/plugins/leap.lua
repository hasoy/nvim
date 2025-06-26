return {
  "ggandor/leap.nvim",
  config = function()
    require("leap").add_default_mappings()
    vim.keymap.del("n", "sr")
    vim.keymap.del("n", "sd")
    vim.keymap.set({ "n", "x", "o" }, "s", function()
      require("leap").leap({ target_windows = { vim.fn.win_getid() } })
    end, { desc = "Leap forward to" })
  end,
}

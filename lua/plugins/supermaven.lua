return {
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({
        keymaps = {
          accept_suggestion = "<C-h>",
          clear_suggestion = "<C-]>",
          accept_word = "<Tab-Space>",
        },
        ignore_filetypes = { cpp = true },
        color = {
          suggestion_color = "#7B1FA2",
          cterm = 244,
        },
        disable_inline_completion = false, -- disables inline completion for use with cmp
        disable_keymaps = false, -- disables built in keymaps for more manual control
      })
    end,
  },
}

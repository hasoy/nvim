return {
  "folke/snacks.nvim",
  keys = {
    { "<leader><space>", function() Snacks.picker.smart({ root = false }) end, desc = "Find Files (cwd)" },
    { "<leader>ff", function() Snacks.picker.files({ root = false }) end, desc = "Find Files (cwd)" },
    { "<leader>fF", function() Snacks.picker.files() end, desc = "Find Files (Root Dir)" },
    { "<leader>/", function() Snacks.picker.grep({ root = false }) end, desc = "Grep (cwd)" },
    { "<leader>sg", function() Snacks.picker.grep({ root = false }) end, desc = "Grep (cwd)" },
    { "<leader>sG", function() Snacks.picker.grep() end, desc = "Grep (Root Dir)" },
  },
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

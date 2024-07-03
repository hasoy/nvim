-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

vim.keymap.set(
  "n",
  "<leader><leader>",
  require("telescope.builtin").find_files,
  { noremap = true, silent = true, desc = "Find files" }
)

local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end
vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })
vim.keymap.set(
  "n",
  "<leader>j",
  "mx$a<Esc><cmd>join<cr>gi<Esc>lD`xp<cmd>delm x<cr>",
  { noremap = true, silent = true, desc = "Suck in line below" }
)
vim.keymap.set("n", "<leader>xn", diagnostic_goto(true), { noremap = true, silent = true, desc = "Next diagnostic" })
vim.keymap.set(
  "n",
  "<leader>xp",
  diagnostic_goto(false),
  { noremap = true, silent = true, desc = "Previous diagnostic" }
)

-- Move Lines
local moveline = require("moveline")
vim.keymap.set("n", "<A-Up>", moveline.up)
vim.keymap.set("n", "<A-j>", moveline.down)
vim.keymap.set("n", "<A-Down>", moveline.down)
vim.keymap.set("v", "<A-k>", moveline.block_up)
vim.keymap.set("v", "<A-Up>", moveline.block_up)
vim.keymap.set("v", "<A-Down>", moveline.block_down)
vim.keymap.set("v", "<A-j>", moveline.block_down)

-- in insert mode jump over words using ctrl + arrow keys
vim.keymap.set("i", "<C-Backspace>", "<cmd><ESC>dibi<cr>", { noremap = true, silent = true, desc = "Delete word" })
vim.keymap.set("i", "<C-Del>", "<cmd><ESC>diwi<cr>", { noremap = true, silent = true, desc = "Jump over word" })

vim.keymap.set({ "n", "o", "x" }, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
vim.keymap.set({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
vim.keymap.set({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

--Esc
vim.keymap.set("i", "jj", "<ESC>", { noremap = true, silent = true, desc = "<ESC>" })
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { noremap = true, silent = true, desc = "Save file" })

-- Move Lines
vim.keymap.set("n", "<A-Down>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<A-Up>", "<cmd>m .-2<cr>==", { desc = "Move up" })
vim.keymap.set("i", "<A-Down>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down" })
vim.keymap.set("i", "<A-Up>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up" })
vim.keymap.set("v", "<A-Down>", ":m '>+1<cr>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "<A-Up>", ":m '<-2<cr>gv=gv", { desc = "Move up" })
-- local moveline = require("moveline")
-- vim.keymap.set("n", "<A-k>", moveline.up)
-- vim.keymap.set("n", "<A-Up>", moveline.up)
-- vim.keymap.set("n", "<A-j>", moveline.down)
-- vim.keymap.set("n", "<A-Down>", moveline.down)
-- vim.keymap.set("v", "<A-k>", moveline.block_up)
-- vim.keymap.set("v", "<A-Up>", moveline.block_up)
-- vim.keymap.set("v", "<A-Down>", moveline.block_down)
-- vim.keymap.set("v", "<A-j>", move.block_down)

-- in insert mode jump over words using ctrl + arrow keys
vim.keymap.set("i", "<C-Backspace>", "<ESC>dibi", { noremap = true, silent = true, desc = "Delete word" })
-- in insert mode delete word using ctrl + backspace
vim.keymap.set("i", "<C-Del>", "<ESC>diwi", { noremap = true, silent = true, desc = "Jump over word" })

vim.keymap.set({ "n", "o", "x" }, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
vim.keymap.set({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
vim.keymap.set({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })

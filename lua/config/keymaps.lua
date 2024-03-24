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

--Keymap that selects all text using ctrl + a
vim.keymap.set("n", "<C-a>", "ggVG", { desc = "Select All" })
vim.keymap.set("n", "<leader><Right>", "<cmd>bnext<cr>", { noremap = true, silent = true, desc = "Buffer right" })
vim.keymap.set("n", "<leader><Left>", "<cmd>bprevious<cr>", { noremap = true, silent = true, desc = "Buffer left" })

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
-- vim.keymap.set("v", "<A-j>", moveline.block_down)

vim.keymap.set("n", "<C-/>", "gcc", { noremap = true, silent = true, desc = "Comment" })
-- in insert mode jump over words using ctrl + arrow keys
vim.keymap.set("i", "<C-Backspace>", "<ESC>dbi", { noremap = true, silent = true, desc = "Delete word" })
-- in insert mode delete word using ctrl + backspace
vim.keymap.set("i", "<C-Right>", "<ESC>wi", { noremap = true, silent = true, desc = "Jump over word" })

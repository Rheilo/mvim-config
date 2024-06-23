local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Verkürzen des Funktionsaufrufs 
-- Für weiter Informationen nutze die Hilfe mit ":help lua" und dann weiter suchen mit "/vim.keymap.set"
local keymap = vim.keymap.set

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",


-- -------------
-- NORMAL - MODE
-- -------------
keymap("n", "<leader>e", ":Lexplore 20<cr>", opts)
-- Navigate buffers
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)
-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
-- -------------
-- INSERT - MODE
-- -------------
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
-- -------------
-- VISUAL - MODE
-- -------------

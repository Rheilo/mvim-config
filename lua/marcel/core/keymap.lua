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
-- Leichter zwischen Fenster bewegen
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
keymap("x", "<C-l>", "<C-w>l", opts)
-- Fenster Management
keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" } )
keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" } )
keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" } )
keymap("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current window" } )

keymap("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new Tab" } )
keymap("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" } )
keymap("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" } )
keymap("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" } ) 
keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open curren buffer in new tab" } )

-- Navigate buffers
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)
-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)
-- Folge Links und zurück gehen
keymap("n", "<C-i>", "<C-]>", opts)
keymap("n", "<C-o>", "<C-o>", opts)
-- -------------
-- INSERT - MODE
-- -------------
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)
keymap("i", "<A-7>", "{", opts)
keymap("i", "<A-0>", "}", opts)
keymap("i", "<A-8>", "[", opts)
keymap("i", "<A-9>", "]", opts)
-- -------------
-- VISUAL - MODE
-- -------------

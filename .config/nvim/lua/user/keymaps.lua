local opts = { noremap = true, silent = true }
local term_opts =  { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.localmapleader = " "

-- MODES
-- normal-mode = "n"
-- insert-mode = "i"
-- visual-mode = "v"
-- visual-block-mode = "x"
-- term-mode = "t"
-- command-mode = "c"

-- NORMAL
-- better window navigation
keymap("n", "<C-h>", "<C-w-h>", opts)
keymap("n", "<C-j>", "<C-w-j>", opts)
keymap("n", "<C-k>", "<C-w-k>", opts)
keymap("n", "<C-l>", "<C-w-l>", opts)

keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- move lines up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- navigate buffers
keymap("n", "<leader>n", ":bn<CR>", opts)
keymap("n", "<leader>p", ":bp<CR>", opts)
keymap("n", "<leader>d", ":bd<CR>", opts)

-- INSERT
-- escaping insert mode
keymap("i", "jk", "<ESC>", opts)

-- VISUAL
-- stay in indent mode
keymap("v", ">", ">gv", opts)
keymap("v", "<", "<gv", opts)

-- move text up and down
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "p", '"_dP"', opts)

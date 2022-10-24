vim.g.mapleader = " "

local keymap = vim.keymap

-- MODES
-- n = normal mode
-- i = insert mode
-- v = visual mode

-- NORMAL MODE
keymap.set("n", "<leader>nh", ":nohl<CR>") -- remove search highlights

-- splitting windows
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- managing tabs
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- window navigation
-- keymap.set("n", "<C-h>", "<C-w-h>") -- move to left window
-- keymap.set("n", "<C-j>", "<C-w-j>") -- move below window
-- keymap.set("n", "<C-k>", "<C-w-k>") -- move above window
-- keymap.set("n", "<C-l>", "<C-w-l>") -- move to right window

-- move lines up and down
keymap.set("n", "<A-j>", ":m .+1<CR>==")
keymap.set("n", "<A-k>", ":m .-2<CR>==")

-- navigate buffers
keymap.set("n", "<leader>bn", ":bn<CR>") -- navigate next buffer
keymap.set("n", "<leader>bp", ":bp<CR>") -- navigate previous buffer
keymap.set("n", "<leader>bd", ":bd<CR>") -- delete current buffer


-- INSERT MODE
keymap.set("i", "jk", "<ESC>") -- escape from insert mode


-- VISUAL MODE
keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv")
keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv")

-- PLUGIN KEYMAPS

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- open nvim-tree explorer
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
keymap.set("n", "<leader>fs", ":Telescope live_grep<CR>")
keymap.set("n", "<leader>fc", ":Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")

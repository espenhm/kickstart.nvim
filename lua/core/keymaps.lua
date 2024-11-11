local map = require("helpers.keys").map
local noremap = require("helpers.keys").no_remap

-- Blazingly fast way out of insert mode
--map("i", "jj", "<esc>")

-- Diagnostic keymaps
map('n', '<leader>dm', vim.diagnostic.open_float, "Show diagnostics under cursor")

-- Easier access to beginning and end of lines
map("n", "-", "$", "Go to end of line")

-- Better window navigation
--map("n", "<C-h>", "<C-w><C-h>", "Navigate windows to the left")
--map("n", "<C-j>", "<C-w><C-j>", "Navigate windows down")
--map("n", "<C-k>", "<C-w><C-k>", "Navigate windows up")
--map("n", "<C-l>", "<C-w><C-l>", "Navigate windows to the right")

-- Move with shift-arrows
map("n", "<S-Left>", "<C-w><S-h>", "Move window to the left")
map("n", "<S-Down>", "<C-w><S-j>", "Move window down")
map("n", "<S-Up>", "<C-w><S-k>", "Move window up")
map("n", "<S-Right>", "<C-w><S-l>", "Move window to the right")

-- Resize with arrows
map("n", "<C-Up>", ":resize +2<CR>")
map("n", "<C-Down>", ":resize -2<CR>")
map("n", "<C-Left>", ":vertical resize +2<CR>")
map("n", "<C-Right>", ":vertical resize -2<CR>")

-- Deleting buffers
local buffers = require("helpers.buffers")
map("n", "<leader>db", buffers.delete_this, "Current buffer")
map("n", "<leader>do", buffers.delete_others, "Other buffers")
map("n", "<leader>da", buffers.delete_all, "All buffers")

-- Making sure option+delete works
map("i", "<Esc><BS>", "<C-w>")
map("n", "<Esc><BS>", "db")

-- Navigate buffers
map("n", "<S-l>", ":bnext<CR>")
map("n", "<S-h>", ":bprevious<CR>")

-- Clear after search
map("n", "<Esc>", "<cmd>nohl<cr>", "Clear highlights")

-- Neotree
map("n", "<C-e>",":Neotree toggle<Cr>", "Toggle file explorer")
map("n", "<leader>nr",":Neotree reveal<Cr>", "Reveal file in neotree")

-- Prettier
map("n", "<leader>cf", ":Prettier<Cr>", "Code format")

--Stuff
--vim.lsp.buf.signature_help()


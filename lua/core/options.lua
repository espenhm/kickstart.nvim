local opts = {
    shiftwidth = 2,
    tabstop = 2,
    expandtab = true,
    wrap = false,
    termguicolors = true,
    number = true,
    relativenumber = true,
    scrolloff = 10,
    updatetime = 250,
    timeoutlen = 300,
    signcolumn = "yes",
    ignorecase = true,
    smartcase = true,
    undofile = true,
    hlsearch = true,
    clipboard ="unnamedplus"
}

-- Set options from table
for opt, val in pairs(opts) do
    vim.o[opt] = val
end

-- Set other options
local colorscheme = require("helpers.colorscheme")
vim.cmd.colorscheme(colorscheme)

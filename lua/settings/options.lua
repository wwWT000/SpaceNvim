local opt = vim.opt
local o = vim.o 
-- opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false

opt.cursorline = true

opt.mouse:append("a")

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.ignorecase = true
opt.smartcase = true

opt.termguicolors = true
opt.signcolumn = "yes"

o.showmode = false

if vim.g.neovide then
    vim.o.guifont = "JetBrainsMono Nerd Font:h15" -- text below applies for VimScript
    vim.g.neovide_transparency = 0.8
end

--vim.o.statusline = "%{%v:lua.require'nvim-navic'.get_location()%}"

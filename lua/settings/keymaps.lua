vim.g.mapleader = " "
local keymap = vim.keymap
keymap.set("n", "<leader>t", ":ToggleTerm<CR>")
keymap.set("n", "<leader>s", ":Telescope<CR>")
keymap.set("n", "<leader>h", ":BufferLineCyclePrev<CR>")
keymap.set("n", "<leader>l", ":BufferLineCycleNext<CR>")
--keymap.set("n", "<leader>c", ":e $MYVIMRC | :cd %:p:h | split . | wincmd k | pwd<CR>")
--vim.keymap.set('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })


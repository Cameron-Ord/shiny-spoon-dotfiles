vim.o.termguicolors = true
vim.o.number = true

vim.cmd('colorscheme catppuccin_mocha')

vim.api.nvim_set_keymap('n', '<C-k>', '<Cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })

require'lspconfig'.pyright.setup{}
require'lspconfig'.clangd.setup{}

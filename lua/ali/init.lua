-- Set tab width to 2 spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2

-- bi-directional clipboard integration
vim.opt.clipboard = "unnamedplus"

-- Show line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- disable line wrap
vim.wo.wrap = false

-- Show whitespace
vim.o.list = true
vim.o.listchars = 'tab:» ,lead:∙,trail:∙'

vim.g.have_nerd_font = true

vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

-- keymaps
vim.keymap.set('n', '<C-a>', '<ESC>^')
vim.keymap.set('i', '<C-a>', '<ESC>I')
vim.keymap.set('n', '<C-e>', '<ESC>$')
vim.keymap.set('i', '<C-e>', '<ESC>A')

--vim.keymap.set('n', '<C-j>', '<Esc>o')
--vim.keymap.set('n', '<C-k>', '<Esc>O')
--vim.keymap.set('i', '<C-j>', '<Esc>o')
--vim.keymap.set('i', '<C-k>', '<Esc>O')

vim.keymap.set('i', '<M-f>', '<Esc><Space>Wi')
vim.keymap.set('i', '<M-b>', '<Esc>Bi')
vim.keymap.set('i', '<M-d>', '<Esc>cW')

-- any jump configuration (vim plugin that uses global variables)
vim.g.any_jump_ignored_files = {'*.tmp', '*.temp', '*.sql', '*.md', '*.html', '*.xml'}

-- hide mode, since we will show it in the status bar
vim.opt.showmode = false

-- language servers
--require('lspconfig').phpactor.setup({})
--require('lspconfig').lua_ls.setup({})


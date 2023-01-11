---------------------------------------------------------------
-- => Vista
---------------------------------------------------------------
vim.cmd [[let g:vista_executive_for = { 'c' : 'nvim_lsp' }]]

vim.keymap.set('n', '<Leader>vf', '<cmd>Vista finder<cr>', {})
vim.keymap.set('n', '<Leader>vt', '<cmd>Vista!!<cr>', {})

vim.g.vista_sidebar_position = 'vertical topleft'


---------------------------------------------------------------
-- => Change directory commands
---------------------------------------------------------------
vim.cmd [[command! DEVK     cd ~/firmware/ecu/devkit/projects]]
vim.cmd [[command! C        cd /mnt/c]]
vim.cmd [[command! USER     cd /mnt/c/Users/snakamura]]
vim.cmd [[command! DOC      cd /mnt/c/Users/snakamura/OneDrive\ -\ Rivian\ Automotive,\ LLC/Documents]]
vim.cmd [[command! BUILD    cd ~/firmware/build]]
vim.cmd [[command! SBC      cd ~/sandbox/C]]
vim.cmd [[command! SBPY     cd ~/sandbox/Python]]
vim.cmd [[command! SBCPP    cd ~/sandbox/CPP]]

vim.keymap.set('n', "'p", ':cd ~/firmware/ecu/propulsion/projects<cr>', {})
vim.keymap.set('n', "'d", ':cd ~/firmware/ecu/propulsion/projects/r1x_dcc<cr>', {})
vim.keymap.set('n', "'a", ':cd ~/firmware/ecu/propulsion/projects/dpim/ascent_dpim<cr>', {})
vim.keymap.set('n', "'s", ':cd ~/firmware/ecu/propulsion/projects/spim<cr>', {})
vim.keymap.set('n', "'v", ':cd ~/firmware/ecu/propulsion/projects/r1x_vdm<cr>', {})
vim.keymap.set('n', "'r", ':cd ~/firmware<cr>', {})
vim.keymap.set('n', "'p", ':cd ~/firmware/platform<cr>', {})
vim.keymap.set('n', "'i", ':cd ~/firmware/interfaces<cr>', {})
vim.keymap.set('n', "'t", ':cd ~/firmware/tools<cr>', {})
vim.keymap.set('n', "'b", ':cd ~/firmware/build<cr>', {})

---------------------------------------------------------------
-- => Custom commands
---------------------------------------------------------------
vim.cmd [[command! CRP call setreg('+', expand('%'))]]
vim.cmd [[command! CAP call setreg('+', expand('%:p'))]]
vim.cmd [[command! CFP call setreg('+', expand("%:t"))]]

-- New tab / close tab remap
-- vim.keymap.set('n', '<Tab><Tab>', '<cmd>tabnew<cr>', {})
-- vim.keymap.set('n', '<Leader><Tab><Tab>', '<cmd>close<cr>', {})
-- vim.keymap.set('n', '<leader>1', '1gt<cr>', {})
-- vim.keymap.set('n', '<leader>2', '2gt<cr>', {})
-- vim.keymap.set('n', '<leader>3', '3gt<cr>', {})
-- vim.keymap.set('n', '<leader>4', '4gt<cr>', {})
-- vim.keymap.set('n', '<leader>5', '5gt<cr>', {})
-- vim.keymap.set('n', '<leader>6', '6gt<cr>', {})
-- vim.keymap.set('n', '<leader>7', '7gt<cr>', {})
-- vim.keymap.set('n', '<leader>8', '8gt<cr>', {})
-- vim.keymap.set('n', '<leader>9', '9gt<cr>', {})
-- vim.keymap.set('n', '<leader>0', '<cmd>tablast<cr>', {})

---------------------------------------------------------------
-- => Custom commands
---------------------------------------------------------------
-- Put <enter> to work too! Otherwise <enter> moves to the next line, which we can
-- already do by pressing the <j> key, which is a waste of keys!
-- Be useful <enter> key!:
vim.cmd [[nnoremap <silent> <cr> :let searchTerm = '\v<'.expand("<cword>").'>' <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr> b]]

-- highlight the visual selection after pressing enter.
vim.cmd [[xnoremap <silent> <cr> "*y:silent! let searchTerm = '\V'.substitute(escape(@*, '\/'), "\n", '\\n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>]]

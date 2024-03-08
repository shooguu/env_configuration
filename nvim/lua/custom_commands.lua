---------------------------------------------------------------
-- => Change directory commands
---------------------------------------------------------------
vim.keymap.set('n', "'p", ':cd ~/firmware/ecu/propulsion/projects<cr>', {})
vim.keymap.set('n', "'ca", ':cd ~/firmware/swc/behavior/inverter<cr>', {})
vim.keymap.set('n', "'cp", ':cd ~/firmware/ecu/propulsion/projects/inverter_common<cr>', {})
vim.keymap.set('n', "'d", ':cd ~/firmware/ecu/propulsion/projects/r1x_dcc<cr>', {})
vim.keymap.set('n', "'a", ':cd ~/firmware/ecu/propulsion/projects/dpim/ascent_dpim<cr>', {})
vim.keymap.set('n', "'s", ':cd ~/firmware/ecu/propulsion/projects/spim/spim<cr>', {})
vim.keymap.set('n', "'m", ':cd ~/firmware/ecu/propulsion/projects/spim/msp_spim<cr>', {})
vim.keymap.set('n', "'v", ':cd ~/firmware/ecu/propulsion/projects/r1x_vdm<cr>', {})
vim.keymap.set('n', "'r", ':cd ~/firmware<cr>', {})
vim.keymap.set('n', "'p", ':cd ~/firmware/platform<cr>', {})
vim.keymap.set('n', "'i", ':cd ~/firmware/interfaces<cr>', {})
vim.keymap.set('n', "'t", ':cd ~/firmware/tools<cr>', {})
vim.keymap.set('n', "'b", ':cd ~/firmware/build<cr>', {})

---------------------------------------------------------------
-- => Custom commands
---------------------------------------------------------------
vim.cmd("command! CRP call setreg('+', expand('%'))")
vim.cmd("command! CAP call setreg('+', expand('%:p'))")
vim.cmd("command! CFN call setreg('+', expand('%:t'))")

---------------------------------------------------------------
-- => Custom commands
---------------------------------------------------------------
-- Put <enter> to work too! Otherwise <enter> moves to the next line, which we can
-- already do by pressing the <j> key, which is a waste of keys!
-- Be useful <enter> key!:
vim.cmd [[nnoremap <silent> <cr> :let searchTerm = '\v<'.expand("<cword>").'>' <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr> b]]

-- highlight the visual selection after pressing enter.
--vim.cmd [[xnoremap <silent> <cr> "*y:silent! let searchTerm = '\V'.substitute(escape(@*, '\/'), "\n", '\\n', "g") <bar> let @/ = searchTerm <bar> echo '/'.@/ <bar> call histadd("search", searchTerm) <bar> set hls<cr>]]

---------------------------------------------------------------
-- => Telescope
---------------------------------------------------------------
vim.api.nvim_create_user_command('FF', "lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({layout_config = {width = 0.7, height = 0.4}}))", {})
vim.api.nvim_create_user_command('FG', "lua require'telescope.builtin'.live_grep(require('telescope.themes').get_dropdown({layout_config = {width = 0.7, height = 0.4}}))", {})
vim.api.nvim_create_user_command('FS', "lua require'telescope.builtin'.grep_string(require('telescope.themes').get_dropdown({layout_config = {width = 0.7, height = 0.4}}))", {})
vim.api.nvim_create_user_command('FB', "lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({layout_config = {width = 0.7, height = 0.4}}))", {})
vim.api.nvim_create_user_command('FH', "lua require'telescope.builtin'.help_tags(require('telescope.themes').get_dropdown({layout_config = {width = 0.7, height = 0.4}}))", {})
vim.api.nvim_create_user_command('FR', "lua require'telescope.builtin'.lsp_references(require('telescope.themes').get_dropdown({layout_config = {width = 0.7, height = 0.4}}))", {})
vim.api.nvim_create_user_command('FX', "Telescope file_browser", {})

---- Telescope plugins
require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')

---------------------------------------------------------------
-- => Telescope
---------------------------------------------------------------
vim.api.nvim_create_user_command('FF', 'Telescope find_files', {})
vim.api.nvim_create_user_command('FG', 'Telescope live_grep', {})
vim.api.nvim_create_user_command('FS', 'Telescope grep_string', {})
vim.api.nvim_create_user_command('FB', 'Telescope buffers', {})
vim.api.nvim_create_user_command('CD', 'Telescope cder', {})

require('telescope').setup{
    extensions = {
        cder = {
            previewer_command =
                'exa '..
                '-a '..
                '--color=always '..
                '-T '..
                '--level=3 '..
                '--icons '..
                '--git-ignore '..
                '--long '..
                '--no-permissions '..
                '--no-user '..
                '--no-filesize '..
                '--git '..
                '--ignore-glob=.git',
            dir_command = { 'fd', '--type=d', '.', os.getenv("PWD") },
        },
    },
    pickers = {
        find_files = {
            no_ignore = true
        }
    },
    defaults = {
        --path_display={"smart"} 
        path_display = { truncate = 2 }
    },
}

---- Telescope plugins
require('telescope').load_extension('fzf')
require('telescope').load_extension('file_browser')
require('telescope').load_extension('cder')


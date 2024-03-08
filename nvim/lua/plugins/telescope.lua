return
{
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            -- Key Mappings
            vim.api.nvim_create_user_command('FF', 'Telescope find_files', {})
            vim.api.nvim_create_user_command('FG', 'Telescope live_grep', {})
            vim.api.nvim_create_user_command('FS', 'Telescope grep_string', {})
            vim.api.nvim_create_user_command('FB', 'Telescope buffers', {})

            require('telescope').setup {
            pickers = {
                find_files = {
                no_ignore = true
                }
            },
            defaults = {
                path_display = { truncate = 2 }
            },
            }
        end,
    },
    { 
        'nvim-telescope/telescope-fzf-native.nvim',
    	build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
        config = function()
            require('telescope').load_extension('fzf')
        end,
    },
    {
        'nvim-telescope/telescope-file-browser.nvim',
        config = function()
            require('telescope').load_extension('file_browser')
        end,
    },
}

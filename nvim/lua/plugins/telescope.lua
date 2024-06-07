return
{
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "find files" },
            { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "find files" },
            { "<leader>fs", "<cmd>Telescope grep_string<cr>", desc = "find files" },
            { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "find files" },
        },
        config = function()
            require('telescope').setup {
                pickers = {
                    find_files = {
                        no_ignore = true
                    }
                },
                defaults = {
                    path_display = {
                        truncate = 2
                    }
                },
            }
        end,
    },
    { 
        'nvim-telescope/telescope-fzf-native.nvim',
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "find files" },
            { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "find files" },
            { "<leader>fs", "<cmd>Telescope grep_string<cr>", desc = "find files" },
            { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "find files" },
        },
    	build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
        config = function()
            require('telescope').load_extension('fzf')
        end,
    },
    {
        'nvim-telescope/telescope-file-browser.nvim',
        keys = {
            { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "find files" },
            { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "find files" },
            { "<leader>fs", "<cmd>Telescope grep_string<cr>", desc = "find files" },
            { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "find files" },
        },
        config = function()
            require('telescope').load_extension('file_browser')
        end,
    },
}

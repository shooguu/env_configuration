return
{
   {
        -- Nightfox theme
        'EdenEast/nightfox.nvim',
        lazy = false,
        config = function()
            require('nightfox').setup {
                options = {
                transparent = true
                }
            }
            vim.cmd('colorscheme nightfox')
        end,
    },
    {
        -- Lualine
        'nvim-lualine/lualine.nvim',
        lazy = false,
        config = function()
            require('lualine').setup {
                options = {
                theme = 'nightfox'
                }
            }
        end,
    },
}

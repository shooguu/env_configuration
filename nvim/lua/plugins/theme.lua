return
{
   {
        -- Nightfox theme
        'EdenEast/nightfox.nvim',
        priority = 1000,
        config = function()
            require('nightfox').setup {
                options = {
                    transparent = true,
                },
                groups = {
                    nightfox = {
                        WinSeparator =  {
                            fg = "#71839b",
                        }
                    }
                },
            }
            vim.cmd('colorscheme nightfox')
        end,
    },
    {
        -- Lualine
        'nvim-lualine/lualine.nvim',
        config = function()
            require('lualine').setup {
                options = {
                    theme = 'material'
                }
            }
        end,
    },
}

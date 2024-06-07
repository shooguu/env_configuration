return
{
    {
    	'romgrk/barbar.nvim',
        event = "VeryLazy",
    	dependencies = {
          'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    	},
    	init = function() 
            vim.g.barbar_auto_setup = false 
    	end,
        opts = {
            noremap = true,
            silent = true,
    	},
    },
}

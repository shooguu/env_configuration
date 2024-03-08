return
{
    {
    	"nvim-treesitter/nvim-treesitter",
	lazy = false,
    	config = function()
            require("nvim-treesitter.configs").setup {
            	ensure_installed = { "c", "lua", "cpp", "python", "vimdoc" },
            	-- Install parsers synchronously
            	sync_install = false,
            	highlight = {
                    enable = true,
                    additional_vim_regex_highlighting = false,
            	},
            }
    	end,
    }
}

return
{
    {
    	"nvim-treesitter/nvim-treesitter",
        --event = "VeryLazy",
        priority = 1000,
    	config = function()
            require("nvim-treesitter.configs").setup {
            	ensure_installed = { "c", "lua", "cpp", "python", "vimdoc" },
            	-- Install parsers synchronously
                build = ":TSUpdate",
            }
    	end,
    }
}

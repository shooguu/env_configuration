return
{
    {
        "ibhagwan/fzf-lua",
        -- optional for icon support
        dependencies = { "nvim-tree/nvim-web-devicons" },
        init = function()
            -- calling `setup` is optional for customization
            require("fzf-lua").setup({
                files = {
                    formatter = "path.filename_first"
                }
            })
        end,
        keys = {
            { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find files" },
            { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Grep string" },
            { "<leader>fs", "<cmd>FzfLua grep_cword<cr>", desc = "Find string" },
            { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Buffers" },
      }
    }
}

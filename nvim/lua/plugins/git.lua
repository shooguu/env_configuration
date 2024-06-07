return
{
    {
        "lewis6991/gitsigns.nvim",
        lazy = false,
        keys = {
            { "<leader>gb", "<cmd>Gitsigns blame_line<cr>", desc = "Git Blame" },
        },
        config = function()
            require('gitsigns').setup()
        end
    },
}

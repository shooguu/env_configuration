return
{
    {
        "backdround/global-note.nvim",
        keys = {
            { "<leader>n", "<cmd>GlobalNote<cr>", desc = "GlobalNote" },
        },
        config = function()
            require("global-note").setup()
        end,
    },
}

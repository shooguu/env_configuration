return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    keys = {
        { "<leader>to", "<cmd>Neotree left<cr>", desc = "open neotree" },
        { "<leader>tc", "<cmd>Neotree close<cr>", desc = "open neotree" },
        { "<leader>tf", "<cmd>Neotree float<cr>", desc = "open neotree float" },
        { "<leader>tg", "<cmd>Neotree git_status<cr>", desc = "git status" },
        { "<leader>tb", "<cmd>Neotree buffers<cr>", desc = "git status" },
        { "<leader>td", ":Neotree dir=", desc = "change directory" },
    },
}

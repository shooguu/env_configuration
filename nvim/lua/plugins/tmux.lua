return {
    {
        'christoomey/vim-tmux-navigator',
        keys = {
            { "<C-h>", "<cmd>TmuxNavigateLeft<cr>", desc = "window left" },
            { "<C-l>", "<cmd>TmuxNavigateRight<cr>", desc = "window right" },
            { "<C-j>", "<cmd>TmuxNavigateDown<cr>", desc = "window down" },
            { "<C-k>", "<cmd>TmuxNavigateUp<cr>", desc = "window up" },
        },
    }
}

-----------------------------------------------------------------
---- => Language Server Protocol
-----------------------------------------------------------------
return
{
    {
        "williamboman/mason.nvim",
        event = "CmdlineEnter",
        config = function()
            require("mason").setup()
        end,
    },
    {
        'williamboman/mason-lspconfig.nvim',
        event = "CmdlineEnter",
        config = function()
            require("mason-lspconfig").setup()
        end,
    },
    {
        'neovim/nvim-lspconfig',
        priority = 1000,
        config = function()
            -- Set up lspconfig.
            require("lspconfig").clangd.setup({
                cmd = {
                        "clangd",
                        "--clang-tidy",
                        "--background-index",
                        --"--cross-file-rename",

                        --[[
                        "clangd",
                        "--header-insertion=never",
                        "--all-scopes-completion=false",
                        "--completion-style=bundled",
                        "--cross-file-rename",
                        "--enable-config",
                        "--pch-storage=disk",
                        "--header-insertion-decorators",
                        ]]--
                },
                capabilities = require('cmp_nvim_lsp').default_capabilities(),
                on_attach = function(client, bufnr)
                        -- Mappings.
                        -- See `:help vim.lsp.*` for documentation on any of the below functions
                        local bufopts = { noremap=true, silent=true, buffer=bufnr }
                        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
                        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
                        vim.keymap.set('n', 'gh', vim.lsp.buf.hover, bufopts)
                        vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts)
                    end
            })
            -- Disable diagnostics
            vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end
        end,
    },
    {
    },
    {
        "hrsh7th/nvim-cmp",
        priority = 1000,
        dependencies = {
            "hrsh7th/vim-vsnip",
            "hrsh7th/cmp-vsnip",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/nvim-cmp",
        },
        config = function()
            -- Set up nvim-cmp.
            local cmp = require'cmp'

            cmp.setup({
                snippet = {
                    -- REQUIRED - you must specify a snippet engine
                    expand = function(args)
                        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ['<Tab>'] = cmp.mapping.confirm({behavior = cmp.ConfirmBehavior.Insert,select = true}),
                }),
                sources = cmp.config.sources({
                    {
                        name = 'nvim_lsp' 
                    },
                })
            })

            -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
            cmp.setup.cmdline(':', {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    {
                        name = 'path'
                    }
                },
                {
                    {
                        name = 'cmdline'
                    }
                })
            })
        end,
    },
}


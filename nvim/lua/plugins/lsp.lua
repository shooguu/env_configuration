-----------------------------------------------------------------
---- => Language Server Protocol
-----------------------------------------------------------------
require("nvim-lsp-installer").setup {}

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
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
        -- { name = 'luasnip' }, -- For luasnip users.
        -- { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
    }, {{ name = 'buffer' },})
})


-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
        { name = 'buffer' },
    })
})

-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
        { name = 'buffer' }
    }
})

-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
        { name = 'path' }
    }, {
        { name = 'cmdline' }
    })
})

local on_attach = function(client, bufnr)
    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gd', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gD', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', '<C-h>', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts)
end

local cmd = {
        "clangd",
 		"--header-insertion=never",
 		"--all-scopes-completion=false",
 		"--completion-style=bundled",
 		"--cross-file-rename",
 		"--enable-config",
 		"--pch-storage=disk",
 		"--header-insertion-decorators",
 }

-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").clangd.setup({
    cmd = cmd,
    capabilities = capabilities,
    on_attach = on_attach,
})

-- Disable diagnostics
vim.lsp.handlers["textDocument/publishDiagnostics"] = function() end

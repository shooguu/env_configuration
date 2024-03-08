---------------------------------------------------------------
-- => Plugins
---------------------------------------------------------------
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Fuzzy Finder
    use('junegunn/fzf', {['do'] = vim.fn['fzf#install']})
    use 'junegunn/fzf.vim'

    -- LSP / Tree
    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'
    use 'williamboman/nvim-lsp-installer'

    -- CMP
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'

    -- For vsnip users.
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'

    -- Ripgrep
    use 'BurntSushi/ripgrep'

    -- Other themes
    use 'nvim-lualine/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'romgrk/barbar.nvim'

    -- Color Scheme
    use 'EdenEast/nightfox.nvim'

    -- Git
    use 'mhinz/vim-signify'

    -- Misc
    -- use 'ntpeters/vim-better-whitespace'
    -- use 'dstein64/vim-win'
    use 'danymat/neogen'
    use 'Jorengarenar/miniSnip'

    -- Plenary
    use 'nvim-lua/plenary.nvim'

    -- Telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        requires = {
            {'nvim-lua/plenary.nvim'}
        }
    }

    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    }

    use 'nvim-telescope/telescope-file-browser.nvim'
    use 'liuchengxu/vista.vim'

    -- Lightspeed
    -- use 'ggandor/lightspeed.nvim'

    -- diffview
    use 'sindrets/diffview.nvim'

    -- git blame
    use 'f-person/git-blame.nvim'

    -- Markdown viewer
    -- install without yarn or npm
    use({
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
    })

    -- language packs for vim
    use 'sheerun/vim-polyglot'

    -- notes
    use 'backdround/global-note.nvim'

    -- detour (with keymap configuration)
    use({
        'carbon-steel/detour.nvim',
        config = function ()
            vim.keymap.set('n', '<c-w>.', ":Detour<cr>")
            vim.keymap.set('n', '<c-w><enter>', ":DetourCurrentWindow<cr>")
        end
    })

    -- directory change telescope
    use 'zane-/cder.nvim'

    -- markdown
    -- use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

end)

---------------------------------------------------------------
-- => Theme and colors
---------------------------------------------------------------
---------------- NIGHTFOX ------------------
-- Palettes are the base color defines of a colorscheme.
-- You can override these palettes for each colorscheme defined by nightfox.

require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'nightfox'
    -- ... your lualine config
  }
}

require("nightfox").setup {
    options = {
        transparent = true
    },
}

vim.api.nvim_command [[colorscheme nightfox]]

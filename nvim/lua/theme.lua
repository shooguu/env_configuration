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

local palettes = {
  -- Everything defined under `all` will be applied to each style.
  nightfox = {
    -- A specific style's value will be used over the `all`'s value
  }
}
require("nightfox").setup({ palettes = palettes})
vim.api.nvim_command [[colorscheme nightfox]]

---------------- TOKYONIGHT ------------------
-- require('lualine').setup {
--   options = {
--     -- ... your lualine config
--     theme = 'tokyonight'
--     -- ... your lualine config
--   }
-- }
--
-- require("tokyonight").setup({
--   -- your configuration comes here
--   -- or leave it empty to use the default settings
--   style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
--   transparent = true, -- Enable this to disable setting the background color
-- })
--
-- vim.cmd[[colorscheme tokyonight]]


---------------- OceanicNext ------------------
-- vim.cmd [[colorscheme OceanicNext]]

---------------- Sherbert ------------------
-- vim.cmd [[colorscheme sherbet]]


---------------- Minimal ------------------
-- require('lualine').setup {
--   options = {
--     -- ... your lualine config
--     theme = 'nightfox'
--     -- ... your lualine config
--   }
-- }

-- vim.cmd[[colorscheme minimal]] -- for minimal

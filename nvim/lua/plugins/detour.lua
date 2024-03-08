return
{
    {
        'carbon-steel/detour.nvim',
        config = function ()
            vim.keymap.set('n', '<c-w>.', ":Detour<cr>")
            vim.keymap.set('n', '<c-w><enter>', ":DetourCurrentWindow<cr>")
        end
    },
}

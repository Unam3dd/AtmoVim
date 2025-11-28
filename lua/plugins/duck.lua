return {
    'tamton-aquib/duck.nvim',
    config = function()
        vim.keymap.set('n', '<leader>dd', function() require("duck").hatch("🦆", 1) end, {})
    end
}

return {
    "ray-x/lsp_signature.nvim",
    event = "VeryLazy", -- ou "InsertEnter" si tu veux que ça se charge dès l'insert mode
    config = function()
        require("lsp_signature").setup({
            bind = true,                -- affiche automatiquement la signature
            hint_enable = false,         -- active les hints dans la ligne de signature
            floating_window = true,     -- fenêtre flottante pour la signature
            floating_window_above_cur_line = true, -- affiche au-dessus de la ligne courante
            fix_pos = false,
            wrap = true,
            always_trigger = true,
            floating_window_off_x = 130,
            floating_window_off_y = 0,
            max_height = 12,
            max_width = 80,
            handler_opts = {
                border = "rounded"      -- bordure arrondie
            },
        })
    end
}


return {
    'tamton-aquib/duck.nvim',
    config = function()
        -- Mapping pour créer un canard manuellement
        vim.keymap.set('n', '<leader>dd', function() require("duck").hatch("🦆", 1) end, {})

        -- Créer un canard automatiquement au démarrage
        vim.api.nvim_create_autocmd("VimEnter", {
            callback = function()
                vim.schedule(function()
                    -- Calculer le centre de l'écran
                    local height = vim.api.nvim_win_get_height(0)
                    local center_row = math.floor(height / 2)

                    -- Vérifier le nombre de lignes dans le buffer
                    local buf_lines = vim.api.nvim_buf_line_count(0)

                    -- Ajuster la position si nécessaire
                    if center_row > buf_lines then
                        center_row = math.max(1, buf_lines)
                    end

                    -- Déplacer le curseur au centre (colonne 0 est sûre)
                    vim.api.nvim_win_set_cursor(0, {center_row, 0})

                    -- Créer les canards au centre
                    require("duck").hatch("🦆", 1)
                end)
            end,
        })
    end
}

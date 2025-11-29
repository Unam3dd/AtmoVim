return {
    'tamton-aquib/duck.nvim',
    config = function()
        -- Animation de décollage de fusée avec fumée
        local function rocket_launch()
            -- Compte à rebours
            local countdown = {"3...", "2...", "1...", "Ready to takeoff!", "🚀 Rocket power!", "LAUNCH! 🔥"}
            local countdown_index = 1
            
            local countdown_timer = vim.loop.new_timer()
            countdown_timer:start(0, 400, vim.schedule_wrap(function()
                if countdown_index <= #countdown then
                    vim.g.rocket_status = countdown[countdown_index]
                    countdown_index = countdown_index + 1
                else
                    countdown_timer:stop()
                    countdown_timer:close()
                    vim.defer_fn(function()
                        vim.g.rocket_status = nil
                    end, 2000)
                end
            end))
            
            -- Attendre la fin du compte à rebours avant de lancer
            vim.defer_fn(function()
                local width = vim.api.nvim_win_get_width(0)
                local height = vim.api.nvim_win_get_height(0)
                local rocket_col = math.floor(width / 2)
                local rocket_row = height - 3

                -- Créer un buffer pour la fusée
                local rocket_buf = vim.api.nvim_create_buf(false, true)
                vim.api.nvim_buf_set_lines(rocket_buf, 0, -1, false, {"🚀"})

            -- Créer la fenêtre de la fusée
            local rocket_win_opts = {
                relative = 'editor',
                width = 2,
                height = 1,
                row = rocket_row,
                col = rocket_col,
                style = 'minimal',
                focusable = false,
                zindex = 100,
            }
            local rocket_win = vim.api.nvim_open_win(rocket_buf, false, rocket_win_opts)

            -- Liste pour stocker les fenêtres de fumée
            local smoke_windows = {}

            -- Animation : décoller progressivement
            local current_row = rocket_row
            local frame_count = 0
            local timer = vim.loop.new_timer()
            
            timer:start(0, 50, vim.schedule_wrap(function()
                current_row = current_row - 1
                frame_count = frame_count + 1
                
                -- Créer des flammes au début, puis de la fumée
                if current_row > 0 and current_row < height and vim.api.nvim_win_is_valid(rocket_win) then
                    local smoke_buf = vim.api.nvim_create_buf(false, true)
                    -- Flammes pendant les 8 premières frames, puis fumée
                    local emoji = frame_count <= 8 and "🔥" or "💨"
                    vim.api.nvim_buf_set_lines(smoke_buf, 0, -1, false, {emoji})
                    
                    local smoke_win = vim.api.nvim_open_win(smoke_buf, false, {
                        relative = 'editor',
                        width = 2,
                        height = 1,
                        row = current_row + 1,
                        col = rocket_col,
                        style = 'minimal',
                        focusable = false,
                        zindex = 99,
                    })
                    
                    table.insert(smoke_windows, {win = smoke_win, buf = smoke_buf})
                    
                    -- Supprimer la fumée après un court délai
                    vim.defer_fn(function()
                        if vim.api.nvim_win_is_valid(smoke_win) then
                            vim.api.nvim_win_close(smoke_win, true)
                        end
                        if vim.api.nvim_buf_is_valid(smoke_buf) then
                            vim.api.nvim_buf_delete(smoke_buf, {force = true})
                        end
                    end, 300)
                end
                
                if current_row < 0 or not vim.api.nvim_win_is_valid(rocket_win) then
                    timer:stop()
                    timer:close()
                    
                    -- Nettoyer la fusée
                    if vim.api.nvim_win_is_valid(rocket_win) then
                        vim.api.nvim_win_close(rocket_win, true)
                    end
                    if vim.api.nvim_buf_is_valid(rocket_buf) then
                        vim.api.nvim_buf_delete(rocket_buf, {force = true})
                    end
                    
                    -- Nettoyer toutes les fenêtres de fumée restantes
                    for _, smoke in ipairs(smoke_windows) do
                        if vim.api.nvim_win_is_valid(smoke.win) then
                            vim.api.nvim_win_close(smoke.win, true)
                        end
                        if vim.api.nvim_buf_is_valid(smoke.buf) then
                            vim.api.nvim_buf_delete(smoke.buf, {force = true})
                        end
                    end
                else
                    vim.api.nvim_win_set_config(rocket_win, {
                        relative = 'editor',
                        width = 2,
                        height = 1,
                        row = current_row,
                        col = rocket_col,
                    })
                end
            end))
            end, 2400) -- Attendre la fin du compte à rebours (6 x 400ms)
        end

        -- Messages aléatoires amusants
        local random_messages = {
            -- Takeoff & Migos references
            "Don't nothing straightenin, but straightenin 🎯",
            "You need to understanding the situation to go get straightenin 🧠",
            "Straightenin the code 📏",
            "Straightenin !!!!! 🔥",
            "TAKEOFF! 🚀✨",
            "Mama! 👩",
            "Skrrt skrrt! 🏎️💨",
            "Brrr! ❄️",
            "Offset! Quavo! Takeoff! 🎤",
            "RIP Takeoff 🕊️ Legend never die",
            "Versace Versace Versace 👔",
            "Rain drop, drop top 💧",
            "Bad and Boujee in the terminal 💎",
            "I'm the one like Phil Collins 🥁",
            "Culture! 🎭",
            "T-Shirt weather ☀️",
            "Slippery! 🧊",
            "MotorSport vibes 🏁",
            "Stir Fry in the code 🍜",
            "Walk It Talk It 🚶",
            "Narcos lifestyle 💰",
            "Get Right Witcha 🎯",
            "Fight Night! 🥊",
            "Hannah Montana flow 🎸",
            "Too Hotty! 🔥",
            "Pure Water only 💧✨",
            "Avalanche! ⛷️",
            "Straightenin the code 📏",
            "Cookie beat 🍪",
            "Cookie !!!! 🍪",
            
            -- Code & Tech
            "Keep calm and code on 💻",
            "Coffee break in 5... 4... 3... ☕",
            "You're doing great! Keep going! 🚀",
            "Bugs fixed: 42, Bugs created: 43 🐛",
            "Real programmers count from 0 🔢",
            "There's no place like 127.0.0.1 🏠",
            "Git commit -m 'Fixed stuff' 🔧",
            "While (true) { code(); } 🔄",
            "sudo make me a sandwich 🥪",
            "404: Motivation not found 😅",
            "It works on my machine 🤷",
            "Code never lies, comments sometimes do 📝",
            "Hello World! 🌍",
    
        }
        
        -- Fonction pour afficher un message aléatoire
        local function show_random_message()
            if not vim.g.rocket_status then -- Ne pas interférer avec les messages de fusée
                local random_index = math.random(1, #random_messages)
                vim.g.random_message = random_messages[random_index]
                
                -- Effacer après 30 secondes
                vim.defer_fn(function()
                    vim.g.random_message = nil
                end, 30000)
            end
        end

        -- Mapping pour lancer la fusée
        vim.keymap.set('n', '<leader>dd', rocket_launch, { desc = "Lancer la fusée" })
        
        -- Mapping pour créer une fusée qui bouge (duck classique)
        --vim.keymap.set('n', '<leader>dr', function() require("duck").hatch("🚀", 1) end, { desc = "Fusée aléatoire" })

        -- Animation de décollage au démarrage
        vim.api.nvim_create_autocmd("VimEnter", {
            callback = function()
                vim.defer_fn(rocket_launch, 500)
                
                -- Lancer une fusée toutes les 5 minutes
                local rocket_timer = vim.loop.new_timer()
                rocket_timer:start(300000, 300000, vim.schedule_wrap(function()
                    rocket_launch()
                end))
                
                -- Afficher un message aléatoire toutes les 60 secondes
                local message_timer = vim.loop.new_timer()
                message_timer:start(60000, 60000, vim.schedule_wrap(function()
                    show_random_message()
                end))
            end,
        })
    end
}

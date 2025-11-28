return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = function()
        local npairs = require("nvim-autopairs")
        
        npairs.setup({
            check_ts = true, -- Vérifier treesitter
            ts_config = {
                lua = { "string", "source" },
                javascript = { "string", "template_string" },
                c = { "string", "comment" },
                cpp = { "string", "comment" },
            },
            disable_filetype = { "TelescopePrompt", "spectre_panel" },
            fast_wrap = {
                map = '<M-e>',
                chars = { '{', '[', '(', '"', "'" },
                pattern = [=[[%'%"%>%]%)%}%,]]=],
                end_key = '$',
                keys = 'qwertyuiopzxcvbnmasdfghjkl',
                check_comma = true,
                highlight = 'Search',
                highlight_grey = 'Comment'
            },
        })
        
        -- Intégration avec nvim-cmp (si disponible)
        local cmp_autopairs_ok, cmp_autopairs = pcall(require, "nvim-autopairs.completion.cmp")
        local cmp_ok, cmp = pcall(require, "cmp")
        
        if cmp_autopairs_ok and cmp_ok then
            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done({
                map_char = { tex = "", sh = "" }
            }))
        end
    end
}

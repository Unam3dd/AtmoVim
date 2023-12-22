vim.opt.termguicolors = true
local bufferline = require('bufferline')

bufferline.setup {
    options = {
        mode = "tabs",
        themable = true,
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        diagnostics = "coc",
        diagnostics_update_in_insert = false,
        
        diagnostics_indicator = function (count, level, diagnostics_dict, context)
            return "("..count..")"
        end,
        
        color_icons = true,

        get_element_icon = function (element)
            local icon, hl = require('nvim-web-devicons').get_icon_by_filetype(element.filetype, { default = false })
            return icon, hl
        end,
        show_buffer_icons = false,
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = true
    }
}

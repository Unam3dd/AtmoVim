-- If you want icons for diagnostic errors, you'll need to define them somewhere:
vim.fn.sign_define("DiagnosticSignError", {text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn", {text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo", {text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint", {text = "󰌵", texthl = "DiagnosticSignHint"})

require('neo-tree').setup({
    close_if_last_window = false,
    popup_border_style = "rounded",
    enable_git_status = true,
    enable_diagnostics = true,
    enable_normal_mode_for_inputs = false,
    open_files_do_not_replace_types = { "terminal" },
    sort_case_insensitive = false,
    default_component_configs = {
        container = {
            enable_character_fade = true
        },
        indent = {
            indent_size = 2,
            padding = 1,
            with_markers = true,
            indent_markers = "|",
            last_indent_marker = "└",
            highlight = "NeoTreeIndentMarker",
            with_expanders = nil,
            expander_collapsed = "",
            expander_expanded = "",
            expander_highlight = "NeoTreeExpander"
        },
        icon = {
             folder_closed = "",
            folder_open = "",
            folder_empty = "󰜌",
            -- The next two settings are only a fallback, if you use nvim-web-devicons and configure default icons there
            -- then these will never be used.
            default = "*",
            highlight = "NeoTreeFileIcon"
        },
        modified = {
            symbol = "[+]",
            highlight = "NeoTreeModified",
          },
          ame = {
            trailing_slash = false,
            use_git_status_colors = true,
            highlight = "NeoTreeFileName",
          },
          git_status = {
            symbols = {
              added     = "✚",
              modified  = ",",
              deleted   = "✖",
              renamed   = "󰁕",
              -- Status type
              untracked = "",
              ignored   = "",
              unstaged  = "󰄱",
              staged    = "",
              conflict  = "",
            }
          },
          file_size = {
              enabled = true,
              required_width = 64,
          },
          type = {
              enabled = true,
              required_width = 122,
          },
          last_modified = {
              enabled = true,
              required_width = 88,
          },
          created = {
              enabled = true,
              required_width = 110,
          },
          symlink_target = {
              enabled = false
          },
      },
      commands = {},
      window = {
          position = "left",
          width = 40,
          mapping_options = {
              noremap = true,
              silent = true,
              nowait = true,
          },
          mappings = {
              ["<C-n>"] = {
                  "toggle_node",
                  nowait = false
              },
              ["<2-LeftMouse>"] = "open",
              ["<cr>"] = "open",
              ["<esc>"] = "cancel",
              ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
              ["l"] = "focus_preview",
              ["S"] = "open_split",
              ["s"] = "open_vsplit",
              ["t"] = "open_tabnew",
              ["w"] = "open_with_window_picker",
              ["C"] = "close_node",
              ["z"] = "close_all_nodes",
              ["a"] = { 
              "add",
              config = {
                show_path = "none" -- "none", "relative", "absolute"
              }
            },
            ["A"] = "add_directory",
            ["d"] = "delete",
            ["r"] = "rename",
            ["y"] = "copy_to_clipboard",
            ["x"] = "cut_to_clipboard",
            ["p"] = "paste_from_clipboard",
            ["c"] = "copy",
            ["m"] = "move",
            ["q"] = "close_window",
            ["R"] = "refresh",
            ["?"] = "show_help",
            ["<"] = "prev_source",
            [">"] = "next_source",
            ["i"] = "show_file_details",
        }
      },
      nesting_rules = {},
      filesystem = {
          filtered_items = {
              visible = false,
              hide_dotfiles = false,
              hide_gitignored = false,
              hide_hidden = false,
              use_libuv_file_watcher = true,
          }
      }
    })

vim.api.nvim_set_keymap('n', '<C-n>', ':Neotree reveal<cr>', { noremap = true, silent = true})

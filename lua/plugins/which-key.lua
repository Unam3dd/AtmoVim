return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    preset = "modern",
    icons = {
      breadcrumb = "»",
      separator = "➜",
      group = "+",
    },
    win = {
      border = "rounded",
    },
  },
  config = function(_, opts)
    local wk = require("which-key")
    wk.setup(opts)

    -- Telescope mappings
    wk.add({
      { "<leader>f", group = "Files" },
      { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find files" },
      { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Live grep" },
      { "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "Buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Help" },
      { "<leader>fr", "<cmd>Telescope oldfiles<CR>", desc = "Recent files" },
      { "<leader>fc", "<cmd>Telescope colorscheme<CR>", desc = "Colorschemes" },
      { "<leader>fk", "<cmd>Telescope keymaps<CR>", desc = "Keymaps" },
    })

    -- Git mappings
    wk.add({
      { "<leader>g", group = "Git" },
      --{ "<leader>gs", "<cmd>Gitsigns stage_hunk<CR>", desc = "Stage hunk" },
      --{ "<leader>gu", "<cmd>Gitsigns undo_stage_hunk<CR>", desc = "Unstage hunk" },
      --{ "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", desc = "Reset hunk" },
      --{ "<leader>gR", "<cmd>Gitsigns reset_buffer<CR>", desc = "Reset buffer" },
      --{ "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", desc = "Preview hunk" },
      --{ "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>", desc = "Toggle blame" },
      --{ "<leader>gd", "<cmd>Gitsigns diffthis<CR>", desc = "Diff this" },
    })

    -- LSP mappings
    wk.add({
      { "<leader>l", group = "LSP" },
      { "<leader>ld", "<cmd>TroubleToggle workspace_diagnostics<CR>", desc = "Workspace diagnostics" },
      { "<leader>lr", "<cmd>LspRestart<CR>", desc = "Restart LSP" },
      { "<leader>li", "<cmd>LspInfo<CR>", desc = "LSP info" },
    })

    -- Window mappings
    wk.add({
      { "<leader>w", group = "Windows" },
      { "<leader>wh", "<C-w>h", desc = "Window left" },
      { "<leader>wj", "<C-w>j", desc = "Window down" },
      { "<leader>wk", "<C-w>k", desc = "Window up" },
      { "<leader>wl", "<C-w>l", desc = "Window right" },
      { "<leader>wv", "<C-w>v", desc = "Split vertical" },
      { "<leader>ws", "<C-w>s", desc = "Split horizontal" },
      { "<leader>wc", "<C-w>c", desc = "Close window" },
      { "<leader>wo", "<C-w>o", desc = "Close others" },
      { "<leader>w=", "<C-w>=", desc = "Equalize" },
    })

    -- Terminal mappings
    wk.add({
      { "<leader>t", group = "Terminal" },
      { "<leader>tt", "<cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
      { "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", desc = "Float terminal" },
      { "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", desc = "Horizontal terminal" },
      { "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", desc = "Vertical terminal" },
    })

    -- Explorer mappings
    wk.add({
      { "<leader>e", group = "Explorer" },
      { "<leader>ee", "<cmd>Neotree toggle<CR>", desc = "Toggle Neo-tree" },
      { "<leader>ef", "<cmd>Neotree focus<CR>", desc = "Focus Neo-tree" },
      { "<leader>ec", "<cmd>Neotree close<CR>", desc = "Close Neo-tree" },
    })

    -- Trouble/Diagnostics group
    wk.add({
      { "<leader>x", group = "Trouble/Diagnostics" },
    })

    -- Plugin mappings
    wk.add({
      { "<leader>p", group = "Plugins" },
      { "<leader>pi", "<cmd>Lazy install<CR>", desc = "Install plugins" },
      { "<leader>pu", "<cmd>Lazy update<CR>", desc = "Update plugins" },
      { "<leader>ps", "<cmd>Lazy sync<CR>", desc = "Sync plugins" },
      { "<leader>pc", "<cmd>Lazy clean<CR>", desc = "Clean plugins" },
      { "<leader>pl", "<cmd>Lazy log<CR>", desc = "Plugin log" },
    })

	wk.add({
		{ "<leader>z", group = "Copilot"}
	})

    -- Show buffer local keymaps
    wk.add({
      { "<leader>?", function() require("which-key").show({ global = false }) end, desc = "Buffer Local Keymaps" },
    })
  end,
}

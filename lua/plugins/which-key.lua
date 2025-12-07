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
      { "<leader>f", name = "Files", icon = "📁" },
      { "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "🔍 Find files" },
      { "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "🔎 Live grep" },
      { "<leader>fb", "<cmd>Telescope buffers<CR>", desc = "📄 Buffers" },
      { "<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "❓ Help" },
      { "<leader>fr", "<cmd>Telescope oldfiles<CR>", desc = "📜 Recent files" },
      { "<leader>fc", "<cmd>Telescope colorscheme<CR>", desc = "🎨 Colorschemes" },
      { "<leader>fk", "<cmd>Telescope keymaps<CR>", desc = "⌨️  Keymaps" },
    })

    -- LSP mappings
    wk.add({
      { "<leader>l", name = "LSP", icon = "🔧" },
      { "<leader>ld", "<cmd>TroubleToggle workspace_diagnostics<CR>", desc = "⚠️  Workspace diagnostics" },
      { "<leader>lr", "<cmd>LspRestart<CR>", desc = "🔄 Restart LSP" },
      { "<leader>li", "<cmd>LspInfo<CR>", desc = "ℹ️  LSP info" },
    })

    -- Window mappings
    wk.add({
      { "<leader>w", name = "Windows", icon = "🪟" },
      { "<leader>wh", "<C-w>h", desc = "⬅️  Window left" },
      { "<leader>wj", "<C-w>j", desc = "⬇️  Window down" },
      { "<leader>wk", "<C-w>k", desc = "⬆️  Window up" },
      { "<leader>wl", "<C-w>l", desc = "➡️  Window right" },
      { "<leader>wv", "<C-w>v", desc = "📊 Split vertical" },
      { "<leader>ws", "<C-w>s", desc = "📈 Split horizontal" },
      { "<leader>wc", "<C-w>c", desc = "❌ Close window" },
      { "<leader>wo", "<C-w>o", desc = "🔒 Close others" },
      { "<leader>w=", "<C-w>=", desc = "⚖️  Equalize" },
    })

    -- Terminal mappings
    wk.add({
      { "<leader>t", name = "Terminal", icon = "💻" },
      { "<leader>tt", "<cmd>ToggleTerm<CR>", desc = "🔄 Toggle terminal" },
      { "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", desc = "🎈 Float terminal" },
      { "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", desc = "📊 Horizontal terminal" },
      { "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", desc = "📈 Vertical terminal" },
    })

    -- Explorer mappings
    wk.add({
      { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "📂 Neotree Toggle" },
    })

    -- Buffer mappings
    wk.add({
      { "<leader>b", name = "Buffers", icon = "📄" },
      { "<leader>bd", "<cmd>bdelete<CR>", desc = "🗑️  Delete buffer" },
      { "<leader>bo", "<cmd>BufferLineCloseOthers<CR>", desc = "🔒 Close other buffers" },
    })

    -- Code mappings
    wk.add({
      { "<leader>c", name = "Code", icon = "💻" },
      { "<leader>ca", function() vim.lsp.buf.code_action() end, desc = "⚡ Code actions" },
      { "<leader>cs", "<cmd>Trouble symbols toggle focus=false<CR>", desc = "🔍 Symbols (Trouble)" },
      { "<leader>cl", "<cmd>Trouble lsp toggle focus=false win.position=right<CR>", desc = "📚 LSP Definitions/References" },
    })

    -- Duck mappings
    wk.add({
      { "<leader>d", name = "Duck", icon = "🚀" },
    })

    -- Trouble/Diagnostics group
    wk.add({
      { "<leader>x", name = "Trouble/Diagnostics", icon = "⚠️" },
      { "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "🔍 Diagnostics (Trouble)" },
      { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "📄 Buffer Diagnostics" },
      { "<leader>xL", "<cmd>Trouble loclist toggle<CR>", desc = "📍 Location List" },
      { "<leader>xQ", "<cmd>Trouble qflist toggle<CR>", desc = "📋 Quickfix List" },
    })

    -- Plugin mappings
    wk.add({
      { "<leader>p", name = "Plugins", icon = "🔌" },
      { "<leader>pi", "<cmd>Lazy install<CR>", desc = "⬇️  Install plugins" },
      { "<leader>pu", "<cmd>Lazy update<CR>", desc = "⬆️  Update plugins" },
      { "<leader>ps", "<cmd>Lazy sync<CR>", desc = "🔄 Sync plugins" },
      { "<leader>pc", "<cmd>Lazy clean<CR>", desc = "🧹 Clean plugins" },
      { "<leader>pl", "<cmd>Lazy log<CR>", desc = "📋 Plugin log" },
    })

	wk.add({
		{ "<leader>z", name = "Copilot", icon = "🤖"},
		{ "<leader>zc", "<cmd>CopilotChat<CR>", desc = "💬 Chat with Copilot"}
	})

	-- Themes
	wk.add({
		{"<C-T>", ":Themery<CR>", desc = "🎨 Toggle Themery", silent = true, noremap = true },
	})

    -- Show buffer local keymaps
    wk.add({
      { "<leader>?", function() require("which-key").show({ global = false }) end, desc = "📋 Buffer Local Keymaps" },
    })
  end,
}

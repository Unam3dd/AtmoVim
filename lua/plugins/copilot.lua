return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" },
    },
    build = "make tiktoken",
    opts = {
			window = { layout = "float" },
	},
	keys = {
			{ "<leader>zc", ":CopilotChat<CR>", mode = "n", desc = "Chat with Copilot"},
			{ "<leader>ze", ":CopilotChatExplain<CR>", mode = "v", desc = "Explain code"},
			{ "<leader>zr", ":CopilotChatReview<CR>", mode = "v", desc = "Review code"},
			{ "<leader>zf", ":CopilotChatFix<CR>", mode = "v", desc = "Fix code Issues"},
			{ "<leader>zo", ":CopilotChatOptimize<CR>", mode = "v", desc = "Optimize Code"},
			{ "<leader>zd", ":CopilotChatDocs<CR>", mode = "v", desc = "Generate Docs"},
			{ "<leader>zt", ":CopilotChatTests<CR>", mode = "v", desc = "Generate Tests"},
			{ "<leader>zm", ":CopilotChatCommit<CR>", mode = "n", desc = "Generate Commit Message"},
			{ "<leader>zs", ":CopilotChatCommit<CR>", mode = "v", desc = "Generate Commit for Selection"},
	},
  },
}

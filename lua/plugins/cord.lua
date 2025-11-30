return {
  "vyfor/cord.nvim",
  event = "VeryLazy",
  config = function()
    require("cord").setup({
			theme = "dark",
	})
  end,
  dependencies = { "nvim-lua/plenary.nvim" }
}

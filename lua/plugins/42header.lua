return {
  "Diogo-ss/42-header.nvim",
  cmd = { "Stdheader" },
  keys = { "<F1>" },
  opts = {
    default_map = true, -- Default mapping <F1> in normal mode.
    auto_update = true, -- Update header when saving.
    user = "stales", -- Your user.
    mail = "stales@student.42angouleme.fr", -- Your mail.
    -- add other options.
  },
  config = function(_, opts)
    require("42header").setup(opts)
  end,
}

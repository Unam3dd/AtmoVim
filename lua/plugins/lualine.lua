return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    event = "VeryLazy",
    opts = {
      options = {
        theme = "auto",
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        globalstatus = true,
      },
      sections = {
        lualine_a = { "hostname", { "datetime", style = "%H:%M:%S" }, "mode" },
        lualine_b = { "branch", "diff", "diagnostics" },
        lualine_c = { "filename", "filesize" },
        lualine_x = { "encoding", "filetype", "fileformat" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
    },
  },
}


return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    -- Fonction pour supprimer un buffer de manière sûre
    local function safe_delete_buffer()
      local bufnr = vim.api.nvim_get_current_buf()
      local filetype = vim.api.nvim_buf_get_option(bufnr, "filetype")
      if filetype == "neo-tree" then
        return
      end
      local buffer_to_delete = bufnr
      vim.cmd("bnext")
      local new_buf = vim.api.nvim_get_current_buf()
      if new_buf == buffer_to_delete then
        vim.cmd("enew")
      end
      vim.cmd("bdelete! " .. buffer_to_delete)
    end
    
    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "neo-tree",
            text = "File Explorer",
            text_align = "center",
            separator = true,
          },
        },
      },
    })
    
    -- Raccourcis clavier utilisant la même fonction
    vim.keymap.set("n", "<leader>bd", safe_delete_buffer, { desc = "Delete current buffer (safe)" })
    -- Alternative: Alt+D (généralement mieux supporté que Ctrl+Shift dans les terminaux)
    vim.keymap.set("n", "<A-d>", safe_delete_buffer, { desc = "Delete current buffer (safe)" })
  end,
  keys = {
    { "<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
    { "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Previous buffer" },
    { "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", desc = "Close other buffers" },
  },
}


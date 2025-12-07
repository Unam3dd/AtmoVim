return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    -- Fonction pour supprimer un buffer de manière sûre
    -- Accepte un numéro de buffer en paramètre (optionnel)
    local function safe_delete_buffer(bufnr)
      bufnr = bufnr or vim.api.nvim_get_current_buf()
      local filetype = vim.api.nvim_buf_get_option(bufnr, "filetype")
      if filetype == "neo-tree" then
        return
      end
      local buffer_to_delete = bufnr
      local current_buf = vim.api.nvim_get_current_buf()
      
      -- Si on supprime le buffer courant, switch d'abord
      if current_buf == buffer_to_delete then
        vim.cmd("bnext")
        local new_buf = vim.api.nvim_get_current_buf()
        if new_buf == buffer_to_delete then
          vim.cmd("enew")
        end
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
        -- Personnaliser le comportement du clic sur la croix de fermeture
        close_command = function(bufnr)
          safe_delete_buffer(bufnr)
        end,
      },
    })
    
    -- Raccourcis clavier utilisant la même fonction
    vim.keymap.set("n", "<leader>bd", function() safe_delete_buffer() end, { desc = "Delete current buffer (safe)" })
    -- Alternative: Alt+D (généralement mieux supporté que Ctrl+Shift dans les terminaux)
    vim.keymap.set("n", "<A-d>", function() safe_delete_buffer() end, { desc = "Delete current buffer (safe)" })
  end,
  keys = {
    { "<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
    { "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Previous buffer" },
    { "<leader>bo", "<cmd>BufferLineCloseOthers<cr>", desc = "Close other buffers" },
  },
}


-- Configuration moderne pour nvim-cmp (style VSCode)
local cmp = require("cmp")
local luasnip = require("luasnip")

-- Charger les snippets friendly-snippets
require("luasnip.loaders.from_vscode").lazy_load()

-- Charger vos snippets personnalisés
local success, result = pcall(function()
  return dofile(vim.fn.stdpath("config") .. "/snippets/c.lua")
end)

if success then
  luasnip.add_snippets("c", result)
end

-- Configuration simple et propre des diagnostics
vim.diagnostic.config({
  virtual_text = {
    enabled = true,
    source = "if_many",
    prefix = "●",
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.HINT] = " ",
      [vim.diagnostic.severity.INFO] = " ",
    },
  },
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
})

cmp.setup({
  completion = {
    completeopt = "menu,menuone,noselect", -- Ne pas sélectionner automatiquement
  },
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  window = {
    completion = cmp.config.window.bordered({
      border = "rounded",
      winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
      col_offset = -3,
      side_padding = 0,
    }),
    documentation = cmp.config.window.bordered({
      border = "rounded",
      winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None",
    }),
  },
  mapping = cmp.mapping.preset.insert({
    -- Navigation dans la documentation
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    
    -- Contrôles de base
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<CR>"] = cmp.mapping(function(fallback)
      if cmp.visible() and cmp.get_active_entry() then
        cmp.confirm({ select = false })
        -- Forcer le retour en mode insertion
        vim.schedule(function()
          if vim.fn.mode() ~= 'i' then
            vim.cmd('startinsert')
          end
        end)
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<C-y>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.confirm({ select = true })
        -- Forcer le retour en mode insertion
        vim.schedule(function()
          if vim.fn.mode() ~= 'i' then
            vim.cmd('startinsert')
          end
        end)
      else
        fallback()
      end
    end, { "i", "s" }),
    
    -- Navigation avec Tab (améliorée)
    ["<Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { "i", "s" }),
    
    -- Navigation avec Shift+Tab
    ["<S-Tab>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { "i", "s" }),
    
    -- Navigation avec flèches (alternative)
    ["<Down>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end, { "i", "s" }),
    
    ["<Up>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end, { "i", "s" }),
  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp", priority = 1000 },
    { name = "luasnip", priority = 750 },
    { name = "buffer", priority = 500 },
    { name = "path", priority = 250 },
    { name = "cmdline", priority = 100 },
  }),
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      -- Kind icons
      local kind_icons = {
        Text = "󰉿",
        Method = "󰆧",
        Function = "󰊕",
        Constructor = "󰆧",
        Field = "󰜢",
        Variable = "󰀫",
        Class = "󰠱",
        Interface = "󰜢",
        Module = "󰏗",
        Property = "󰜢",
        Unit = "󰑭",
        Value = "󰎠",
        Enum = "󰒻",
        Keyword = "󰌋",
        Snippet = "󰃐",
        Color = "󰏘",
        File = "󰈙",
        Reference = "󰈇",
        Folder = "󰉋",
        EnumMember = "󰒻",
        Constant = "󰏿",
        Struct = "󰙅",
        Event = "󰎔",
        Operator = "󰆕",
        TypeParameter = "󰊄",
      }
      
      vim_item.kind = string.format("%s", kind_icons[vim_item.kind] or "")
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        luasnip = "[Snippet]",
        buffer = "[Buffer]",
        path = "[Path]",
        cmdline = "[Cmd]",
      })[entry.source.name]
      
      return vim_item
    end,
  },
  experimental = {
    ghost_text = false, -- Désactiver le texte fantôme pour éviter l'insertion automatique
  },
})

-- Configuration pour la ligne de commande
cmp.setup.cmdline({ "/", "?" }, {
  mapping = cmp.mapping.preset.cmdline(),
  sources = {
    { name = "buffer" },
  },
})

cmp.setup.cmdline(":", {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({
    { name = "path" },
  }, {
    { name = "cmdline" },
  }),
}) 
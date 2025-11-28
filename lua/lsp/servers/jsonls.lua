-- Configuration pour jsonls (JSON Language Server)

return {
  settings = {
    json = {
      schemas = function()
        local schemastore_ok, schemastore = pcall(require, "schemastore")
        if schemastore_ok then
          return schemastore.json.schemas()
        else
          return {}
        end
      end,
      validate = { enable = true },
    },
  },
}

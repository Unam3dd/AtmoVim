-- Configuration pour jsonls (JSON Language Server)

-- Charger les schemas immédiatement (pas en fonction)
local schemastore_ok, schemastore = pcall(require, "schemastore")
local schemas = schemastore_ok and schemastore.json.schemas() or {}

return {
  settings = {
    json = {
      schemas = schemas,
      validate = { enable = true },
    },
  },
}

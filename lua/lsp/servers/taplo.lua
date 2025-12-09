-- Configuration pour taplo (TOML Language Server)
return {
  settings = {
    evenBetterToml = {
      schema = {
        enabled = true,
        associations = {
          [".*Cargo\\.toml"] = "taplo://Cargo.toml",
        },
      },
    },
  },
}

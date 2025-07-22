-- Customize Mason

---@type LazySpec
return {
  -- use mason-tool-installer for automatically installing Mason packages
  {
    "mason-org/mason.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      providers = { "mason.providers.client" },
      registries = { "github:mason-org/mason-registry@2025-07-15-select-betty" },
    },
  },
  {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    -- overrides `require("mason-tool-installer").setup(...)`
    opts = {
      -- Make sure to use the names found in `:Mason`
      ensure_installed = {
        -- install language servers
        "lua-language-server",

        -- install formatters
        "stylua",

        -- install debuggers
        "debugpy",

        -- install any other package
        "tree-sitter-cli",
      },
    },
  },
}

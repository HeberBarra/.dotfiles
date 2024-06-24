return {
  "williamboman/mason.nvim",
  dependencies = "williamboman/mason-lspconfig.nvim",
  cmd = { "Mason", "MasonInstall", "MasonUpdate" },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      ensure_installed = {
				"arm-lsp",
        "bashls",
        "clangd",
        "cssls",
        "cssmodules_ls",
        "fsautocomplete",
        "html",
        "jdtls",
        "ltex",
        "lua_ls",
        "omnisharp",
        "pyright",
        "rust_analyzer",
        "sqlls",
      },
      automatic_installation = true,
    })
  end,
}

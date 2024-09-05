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
        "bashls",
        "clangd",
        "cssls",
        "cssmodules_ls",
        "fsautocomplete",
        "html",
        "jdtls",
        "lua_ls",
        "pyright",
        "rust_analyzer",
        "sqls",
        "texlab",
      },
      automatic_installation = true,
    })
  end,
}

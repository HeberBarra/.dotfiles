local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = { "bashls", "cssls", "cssmodules_ls", "fsautocomplete","html", "jdtls", "ltex", "pyright", "sqlls", "tsserver"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities
  }
end

lspconfig.clangd.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
}

lspconfig.omnisharp.setup {
  cmd = {"dotnet", "/home/heber/.local/share/nvim/mason/packages/omnisharp/libexec/OmniSharp.dll"},
  enable_editorconfig_support = true,
  enable_ms_build_load_projects_on_demand = false,
  enable_roslyn_analyzers = false,
  enable_import_completion = true,
  sdk_include_prereleases = true
}


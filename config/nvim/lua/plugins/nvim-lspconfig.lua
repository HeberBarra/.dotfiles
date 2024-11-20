return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    { "antosha417/nvim-lsp-file-operations", config = true },
  },
  config = function()
    local lspconfig = require("lspconfig")
    local cmp_nvim_lsp = require("cmp_nvim_lsp")
    local keymap = vim.keymap
    local opts = { noremap = true, silent = true }
    local on_attach = function(_, bufnr)
      opts.buffer = bufnr
      opts.desc = "Show LSP references"
      keymap.set("n", "<leader>gR", "<cmd>Telescope lsp_references<CR>", opts)
      opts.desc = "Go to declaration"
      keymap.set("n", "<leader>gD", vim.lsp.buf.declaration, opts)
      opts.desc = "See available code actions"
      keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
      opts.desc = "Smart rename"
      keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      opts.desc = "Show documentation"
      keymap.set("n", "K", vim.lsp.buf.hover, opts)
    end

    local capabilities = cmp_nvim_lsp.default_capabilities()
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }

    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    local servers = {
      "asm_lsp",
      "bashls",
      "csharp_ls",
      "cssls",
      "cssmodules_ls",
      "fsautocomplete",
      "html",
      "jdtls",
      "phpactor",
      "pyright",
      "sqls",
      "texlab",
      "ts_ls",
    }

    for _, server in ipairs(servers) do
      lspconfig[server].setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })
    end

    lspconfig["clangd"].setup({
      on_attach = function(client, bufnr)
        client.server_capabilities.signatureHelpProvider = false
        on_attach(client, bufnr)
      end,
      capabilities = capabilities,
    })

    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = {
              vim.fn.expand("$VIMRUNTIME/lua"),
              vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
              vim.fn.stdpath("data") .. "/lazy/ui/nvchad_types",
              vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
            },
            maxPreload = 100000,
            preloadFileSize = 10000,
          },
        },
      },
    })

    lspconfig["rust_analyzer"].setup({
      capabilities = capabilities,
      on_attach = on_attach,
      filetypes = { "rust" },
      root_dir = require("lspconfig/util").root_pattern("Cargo.toml"),
      settings = {
        ["rust_analyzer"] = {
          cargo = {
            allFeatures = true,
          },
        },
      },
    })
  end,
}

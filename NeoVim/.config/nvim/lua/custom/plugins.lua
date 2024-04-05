local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
     ensure_installed = { "vim", "lua", "html", "css", "javascript", "typescript", "tsx", "json", "yaml", "csv", "python", "dockerfile", "c", "c_sharp", "cpp", "gitignore", "java", "bash", "sql", "xml", "latex", "kotlin"},
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = { "bash-language-server", "clangd","css-lsp", "cssmodules-language-server","html-lsp", "jdlts", "ltex-ls","lua-language-server", "omnisharp", "prettier", "pyright", "sqlls","stylua" },
    },
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = {"TroubleToggle"},
    config = function ()
      require("custom.configs.trouble")
    end
  },
  {
    "mistricky/codesnap.nvim",
    build = "make",
    lazy = "true",
    cmd = "CodeSnap",
    config = function ()
      require("custom.configs.codesnap")
    end
  }
}

return plugins

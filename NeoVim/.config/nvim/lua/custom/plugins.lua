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
    opts = {
      position = "bottom",
      height = 15,
      width = 30,
      icons = true,
      mode = "workspace_diagnostics",
      severity = nil,
      fold_open = "🗁",
      fold_closed = "🖿",
      group = true,
      padding = true,
      cycle_results = true,
      action_keys = {
        close = "q",
        cancel = "<esc>",
        refresh = "<c-r>",
        open_split = { "<c-x>" },
        open_vsplit = { "<c-v>" },
        toggle_mode = "m",
        toggle_preview = "p",
        switch_severity = "s",
        previous = "k",
        next = "j"
      },
      multiline = true,
      ident_lines = true,
      signs = {
        error = "",
        warning = "",
        hint = "",
        information = "",
        other = "",
      }
    }
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

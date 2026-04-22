return {
  "stevearc/conform.nvim",
  opts = {},
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        cs = { "csharpier" },
        javascrpt = { "prettier" },
        lua = { "stylua" },
        python = { "ruff_format" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
      },

      format_on_save = {
        timeout_ms = 1000,
        lsp_fallback = true,
      },
    })
  end,
}

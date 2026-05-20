return {
  "stevearc/conform.nvim",
  opts = {},
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        bib = {},
        cs = { "csharpier" },
        javascrpt = { "prettier" },
        lua = { "stylua" },
        python = { "ruff_format" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },
      },

      format_on_save = function(bufnr)
        if vim.bo[bufnr].filetype == "bib" then
          return { timeout_ms = 1000, lsp_fallback = false }
        end

        return { timeout_ms = 1000, lsp_fallback = true }
      end,
    })
  end,
}

return {
  "stevearc/conform.nvim",
  opts = {},
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        cs = { "csharpier" },
        javascrpt = { "biome" },
        lua = { "stylua" },
        mysql = { "sql-formatter" },
        python = { "autopep8" },
        typescript = { "biome" },
      },

      format_on_save = {
        timeout_ms = 500,
      },
    })
  end,
}

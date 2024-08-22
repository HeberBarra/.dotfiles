return {
  "stevearc/conform.nvim",
  opts = {},
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        c = { "clang-format" },
        cpp = { "clang-format" },
        cs = { "csharpier" },
        javascrpt = { "biome" },
        lua = { "stylua" },
        sql = { "sql-formatter" },
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

return {
  "stevearc/conform.nvim",
  opts = {},
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        lua = { "stylua" },
        sql = { "sql-formatter" },
        mysql = { "sql-formatter" },
        python = { "autopep8" },
      },

      format_on_save = {
        timeout_ms = 500,
      },
    })
  end,
}

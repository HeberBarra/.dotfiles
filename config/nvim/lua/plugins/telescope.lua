return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  cmd = "Telescope",
  config = function()
    local telescope = require("telescope")

    telescope.setup({
      defaults = {},
      pickers = {},
      extensions = {
        media = {
          backend = "ueberzug",
          flags = {
            ueberzug = {
              move = true,
            },
          },
          cache_path = vim.fn.stdpath("cache") .. "/media",
        },
        switch = {
          matchers = {
            {
              name = "go test",
              from = "(.*).go$",
              to = "%1_test.go",
            },
            {
              name = "go impl",
              from = "(.*)_test.go$",
              to = "%1.go",
            },
            {
              name = "plugin config",
              from = "/lua/plugins.lua$",
              to = "/lua/plugin-config/*.lua",
              search = "/lua/plugin-config",
            },
            {
              name = "plugin list",
              from = "/lua/plugin%-config/.*.lua$",
              to = "/lua/plugins.lua",
            },
            {
              name = "rust test",
              from = "/src/(.*).rs$",
              to = "/tests/*.rs",
            },
          },
          picker = {
            seperator = "⇒",
            layout_strategy = "horizontal",
            layout_config = {
              width = 0.5,
              height = 0.4,
              preview_width = 0.6,
            },
            preview = true,
          },
        },
      },
    })

    telescope.load_extension("fzf")
    telescope.load_extension("switch")
  end,
}

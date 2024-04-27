local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require("custom.configs.treesitter"),
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
    opts = require("custom.configs.mason"),
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    cmd = { "TroubleToggle" },
    config = function ()
      require("custom.configs.trouble")
    end
  },
  {
    "mistricky/codesnap.nvim",
    build = "make",
    lazy = true,
    cmd = "CodeSnap",
    config = function ()
      require("custom.configs.codesnap")
    end
  },
  {
    "adelarsq/neofsharp.vim",
    ft = {"fsharp"},
    lazy = true
  }
}

return plugins

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
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify"
    },
    config = function ()
      require("custom.configs.noice")
    end
  },
  {
    "MeanderingProgrammer/markdown.nvim",
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    cmd = { "RenderMarkdownToggle" },
    ft = "markdown",
    config = function ()
      require("render-markdown").setup({})
    end
  }
}

return plugins

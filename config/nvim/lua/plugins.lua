local plugins = {
  {
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000
	},
  {
    "mistricky/codesnap.nvim",
    build = "make",
    lazy = true,
    cmd = "CodeSnap",
    config = function ()
      require("configs.codesnap")
    end
  },
  {
    "stevearc/dressing.nvim",
    event = "VeryLazy"
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "User FilePost",
    cmd = "Gitsigns",
    config = function ()
      require("configs.gitsigns")
    end
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
      require("configs.lualine")
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
  },
  {
    "williamboman/mason.nvim",
    dependencies = "williamboman/mason-lspconfig.nvim",
    cmd = { "Mason", "MasonInstall", "MasonUpdate" },
    config = require("configs.mason")
  },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify"
    },
    config = function ()
      require("configs.noice")
    end
  },
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/nvim-cmp"
		},
		config = require("configs.autopairs")
	},
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-path",
      "rafamadriz/friendly-snippets",
			{
				"L3MON4D3/LuaSnip",
				-- follow latest release.
				version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
				-- install jsregexp (optional!).
				build = "make install_jsregexp",
			}
    },
    config = require("configs.nvim-cmp")
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      { "antosha417/nvim-lsp-file-operations", config = true }
    },
    config = require("configs.lspconfig")
  },
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons"
		},
		config = require("configs.nvim-tree")
	},
  {
    "nvim-treesitter/nvim-treesitter",
    event = { "BufReadPost", "BufNewFile" },
    cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
    build = ":TSUpdate",
    opts = function()
      return require("configs.treesitter")
    end,
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { 
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-tree/nvim-web-devicons"
    },
    cmd = "Telescope",
    opts = require("configs.telescope")
  },
  {
    "sshelll/telescope-switch.nvim",
    dependencies = { 'nvim-telescope/telescope.nvim' },
    lazy = true,
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
      require("configs.trouble")
    end
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
		opts = {}
  }
}

return plugins

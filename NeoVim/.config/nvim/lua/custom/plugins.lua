local plugins = {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
        ensure_installed = { "vim", "lua", "html", "css", "javascript", "typescript", "tsx", "json", "yaml", "csv", "python", "dockerfile", "c", "c_sharp", "cpp", "gitignore", "java", "bash"
            },
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
            ensure_installed = { "bash-language-server", "clangd", "csharp-language-server","css-lsp", "cssmodules-language-server","html-lsp", "jdlts", "lua-language-server", "prettier", "pyright","stylua" },
        },
    }
}

return plugins

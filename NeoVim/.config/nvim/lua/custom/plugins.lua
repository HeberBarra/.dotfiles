local plugins = {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
        ensure_installed = { "vim", "lua", "html", "css", "javascript", "typescript", "tsx", "json", "yaml", "csv", "python", "dockerfile", "c", "c_sharp", "cpp", "gitignore", "java", "bash", "sql"
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
<<<<<<< HEAD
            ensure_installed = { "bash-language-server", "clangd", "csharp-language-server","css-lsp", "cssmodules-language-server","html-lsp", "jdlts", "lua-language-server", "prettier", "pyright", "sqlls","stylua" },
=======
            ensure_installed = { "bash-language-server", "clangd", "csharp-language-server","css-lsp", "cssmodules-language-server","html-lsp", "jdtls", "lua-language-server", "prettier", "pyright","stylua" },
>>>>>>> 665a96fbf600f9642ac209c7998e186f8f38f101
        },
    }
}

return plugins

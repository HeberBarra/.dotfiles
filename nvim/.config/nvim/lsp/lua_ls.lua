vim.lsp.config("lua_ls", {
  on_init = function(client)
    if client.workspace_folders then
      local path = client.workspace_folders[1].name

      if
        path ~= vim.fn.stdpath("config")
        and (vim.uv.fs_stat(path .. "./.luarc.json") or vim.uv.fs_stat(path .. ".luarc.jsonc"))
      then
        return
      end
    end

    client.config.settings.lua = vim.tbl_deep_extend("force", client.config.settings.Lua, {
      runtime = {
        version = "LuaJIT",
        path = {
          "lua/?.lua",
          "lua/?/init.lua",
        },
      },
      workspace = {
        checkThirdParty = false,
        library = {
          vim.fn.expand("$VIMRUNTIME/lua"),
          vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
          vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
          vim.env.VIMRUNTIME,
        },
      },
    })
  end,
  settings = {
    Lua = {},
  },
})

return {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  rootmarkers = {
    ".git",
    ".emmyrc.json",
    ".luarc.json",
    ".luarc.jsonc",
    ".stylua.toml",
    "stylua.toml",
    "selene.toml",
    "selene.yml",
  },
  settings = {
    Lua = {
      codeLens = { enable = true },
      diagnostics = {
        globals = { "vim" },
      },
      hint = { enable = true, semicolon = "Disable" },
    },
  },
}

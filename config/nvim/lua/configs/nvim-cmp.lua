return function ()
  local cmp = require("cmp")
	local luasnip = require("luasnip")

	require("luasnip.loaders.from_vscode").lazy_load()

  cmp.setup({
    completion = {
      completeopt = "menu,menuone,preview,noselect",
    },
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end
		},
    mapping = cmp.mapping.preset.insert({
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<CR>"] = cmp.mapping.confirm({ select = false })
    }),
    sources = cmp.config.sources({
      { name = "nvim_lsp" },
			{ name = "luasnip" },
      { name = "buffer" },
      { name = "path" }
    })
  })
end
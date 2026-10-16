return {
  "nvim-mini/mini.hipatterns",
  version = "*",
  config = function()
    local hipatterns = require("mini.hipatterns")
    hipatterns.setup({
      fixme = { pattern = "FIXME", group = "MiniHipatternsFixme" },
      highlighters = {
        hex_color = hipatterns.gen_highlighter.hex_color(),
      },
      todo = { pattern = "TODO", group = "MiniHipatternsTodo" },
    })
  end,
}

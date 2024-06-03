local present, telescope = pcall(require, "telescope")

if not present then
  return
end

telescope.setup {
  defaults = {},
  pickers = {},
  extensions = {
    switch = {
      matchers = {
        {
          name = "go test",
          from = "(.*).go$",
          to = "%1_test.go"
        },
        {
          name = "go impl",
          from = "(.*)_test.go$",
          to = "%1.go"
        },
        {
          name = "plugin config",
          from = "/lua/plugins.lua$",
          to = "/lua/plugin-config/*.lua",         
          search = "/lua/plugin-config"            
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
      }
    }
  }
}

telescope.load_extension("fzf")
telescope.load_extension("switch")
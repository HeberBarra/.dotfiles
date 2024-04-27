local present, trouble = pcall(require, "trouble")

if not present then
  return
end

trouble.setup({
  position = "bottom",
  height = 15,
  width = 30,
  icons = true,
  mode = "workspace_diagnostics",
  severity = nil,
  fold_open = "🗁",
  fold_closed = "🖿",
  group = true,
  padding = true,
  cycle_results = true,
  action_keys = {
    close = "q",
    cancel = "<esc>",
    refresh = "<c-r>",
    open_split = { "<c-x>" },
    open_vsplit = { "<c-v>" },
    toggle_mode = "m",
    toggle_preview = "p",
    switch_severity = "s",
    previous = "k",
    next = "j"
  },
  multiline = true,
  ident_lines = true,
  signs = {
    error = "",
    warning = "",
    hint = "",
    information = "",
    other = "",
  }
})


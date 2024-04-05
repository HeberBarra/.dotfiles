local present, codesnap = pcall(require, "codesnap")

if not present then
  return
end

codesnap.setup({
  bg_theme = "grape",
  has_breadcrumbs = true,
  code_font_family = "JetBrainsMono Nerd Font Mono"
})

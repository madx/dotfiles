vim.g.sonokai_style = "andromeda"
vim.g.sonokai_better_performance = 1
vim.g.sonokai_enable_italic = 0
vim.g.sonokai_disable_italic_comment = 0
vim.g.sonokai_transparent_background = 1

-- -- Small customizations to Sonokai
vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("custom_highlights_sonokai", {}),
  pattern = "sonokai",
  callback = function()
    local config = vim.fn["sonokai#get_configuration"]()
    local palette = vim.fn["sonokai#get_palette"](config.style, config.colors_override)
    local set_hl = vim.fn["sonokai#highlight"]

    set_hl("VertSplit", palette.bg0, palette.none)
    set_hl("LineNr", palette.bg4, palette.none)
    set_hl("CursorLineNr", palette.grey_dim, palette.none)
  end,
})

return {
  -- add gruvbox
  { "sainnhe/sonokai", lazy = false, priority = 1000 },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "sonokai",
    },
  },
}

return {
  "nvim-lualine/lualine.nvim",
  opts = {
    sections = {
      lualine_a = { "mode" },
      lualine_b = {
        {
          "filename",
          path = 1,
        },
      },
      lualine_c = {},
      lualine_x = {},
      lualine_y = { "diff", "diagnostics", '%{&modified?"🟡":""}' },
      lualine_z = { "location" },
    },
  },
}

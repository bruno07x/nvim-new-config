return {
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require("lualine").setup({
        dependencies = { "nvim-tree/nvim-web-devicons" },
        options = {
          section_separators = "",
          component_separators = "|",
          icons_enabled = true,
        },
        -- +-------------------------------------------------+
        --   | A | B | C                             X | Y | Z |
        --   +-------------------------------------------------+
        -- sections = {
        --   lualine_a = { "mode" },
        --   lualine_b = { "branch", "diff", "diagnostics" },
        --   lualine_c = { "filename" },
        --   lualine_x = { "encoding", "fileformat", "filetype" },
        --   lualine_y = { "searchcount" },
        --   lualine_z = { "location" },
        -- },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = { "filename" },
          lualine_x = {
            -- 1. This shows the keys you are typing (requires 'showcmd' to be on)
            {
              function()
                return require("noice").api.status.command.get()
              end,
              cond = function()
                return package.loaded["noice"] and require("noice").api.status.command.has()
              end,
              color = { fg = "#ff9e64" }, -- Optional: gives it a nice orange glow
            },
            -- 2. This shows when you are recording a macro (very useful!)
            {
              function()
                return require("noice").api.status.mode.get()
              end,
              cond = function()
                return package.loaded["noice"] and require("noice").api.status.mode.has()
              end,
              color = { fg = "#ff9e64" },
            },
            "encoding",
            "fileformat",
            "filetype",
          },
          lualine_y = { "searchcount" },
          lualine_z = { "location" },
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "location" },
          lualine_y = {},
          lualine_z = {},
        },
      })
    end,
  },
}

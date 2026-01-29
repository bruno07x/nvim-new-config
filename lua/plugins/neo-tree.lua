return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_hidden = false,
        hide_by_name = {},
        never_show = {},
      },
    },
  },
  config = function()
    buffers = { follow_current_file = { enabled = true } }
    require("neo-tree").setup({
      close_if_last_window = true,
      filesystem = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true,
        },
      },
      git_status = {
        symbols = {
          -- Change type
          added = "🟢", -- or "✚", but this is redundant info if you use git_status_colors on the name
          modified = "🔵", -- or "", but this is redundant info if you use git_status_colors on the name
          deleted = "❌", -- this can only be used in the git_status source
          renamed = "🔵", -- this can only be used in the git_status source
          -- Status type
          untracked = "🟡",
          ignored = "🟤",
          unstaged = "🟡",
          staged = "🟣",
          conflict = "🔴",
        },
      },
      event_handlers = {
        {
          event = "file_open_requested",
          handler = function()
            -- auto close
            -- vim.cmd("Neotree close")
            -- OR
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
    })
    vim.keymap.set("n", "<S-b>", ":Neotree reveal<CR>")
  end,
}

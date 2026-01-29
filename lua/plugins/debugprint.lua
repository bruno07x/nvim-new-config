return {
  "andrewferrier/debugprint.nvim",
  opts = {
    keymaps = {
      normal = {
        variable_below = "<leader>bb",
        variable_below_alwaysprompt = "<leader>ba",
        move_to_debugline = "<leader>bm",
        delete_debug_prints = "<leader>bd",
        plain_below = "<leader>bt",
      },
    },
    print_tag = "DEBUGPRINT➡️",
  },
  dependencies = {
    "nvim-mini/mini.nvim", -- Needed for :ToggleCommentDebugPrints (not needed for NeoVim 0.10+)
  },
}

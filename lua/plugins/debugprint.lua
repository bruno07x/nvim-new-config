return {
    "andrewferrier/debugprint.nvim",
    opts = {
        keymaps = {
            normal = {
                variable_below = "<leader>db",
                variable_below_alwaysprompt = "<leader>da",
                move_to_debugline = "<leader>dm",
                delete_debug_prints = "<leader>dd",
                plain_below = "<leader>dt",
            },
        },
        print_tag = "DEBUGPRINT➡️",
    },
    dependencies = {
        "nvim-mini/mini.nvim", -- Needed for :ToggleCommentDebugPrints (not needed for NeoVim 0.10+)
    },
    lazy = false,
    priority = 1000,
}

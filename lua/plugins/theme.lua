return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        style = "day",
        on_colors = function(colors)
            colors.bg = "#D5D6DB"
            colors.fg = "#343B58"
            colors.black = "#0F0F14"
            colors.blue = "#34548A"
            colors.cyan = "#0F4B6E"
            colors.green = "#33635C"
            colors.magenta = "#5A4A78"
            colors.red = "#8C4351"
            colors.yellow = "#8F5815"
        end,
    },
}

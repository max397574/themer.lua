local util = require("themer.utils.util")

local colors = {
    none = "NONE",
    bg = "#0e171c", -- nvim bg
    highlight = "#152127",
    highlight_overlay = "#152127",
    highlight_inactive = "#152127",
    fg = "#abb2bf", -- fg color (text)
    bg_float = "#3b4261",
    inactive = "#393b44",
    red = "#c94f6d",
    green = "#97c374",
    yellow = "#dbc074",
    blue = "#61afef",
    magenta = "#c678dd",
    white = "#dfdfe0",
    orange = "#F4A261",
    subtle = "#526175",
}

-- Some extra colors which require some util functions
colors.bg_alt = util.darken(colors.bg, 0.75, "#000000")
return colors

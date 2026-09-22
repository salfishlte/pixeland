hl.config({
    input = {
        kb_layout   = "us,ru",
        kb_options  = "grp:alt_shift_toggle",
    },
})

hl.monitor({
    output   = "HDMI-A-1",
    mode     = "1920x1080@120",
    position = "0x0",
    scale    = 1,
})

hl.on("hyprland.start", function()
    hl.exec_cmd("awww-daemon")
    hl.exec_cmd("hypridle --config ~/.config/hypr/other/hypridle.conf")
    hl.exec_cmd("waybar")
    hl.exec_cmd("dunst")
end)

hl.config({
    general = {
        border_size = 0,
    },
    decoration = {
        rounding = 9,
    },
})

hl.config({
    animations = {
        enabled = true,
    },
})

hl.curve("myBezier", { type = "bezier", points = { {0.05, 0.9}, {0.1, 1.05} } })

hl.animation({ leaf = "windows",     enabled = true, speed = 4, bezier = "myBezier" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 4, bezier = "default", style = "popin 80%" })
hl.animation({ leaf = "border",      enabled = true, speed = 7, bezier = "default" })
hl.animation({ leaf = "borderangle", enabled = true, speed = 5, bezier = "default" })
hl.animation({ leaf = "fade",        enabled = true, speed = 4, bezier = "default" })
hl.animation({ leaf = "workspaces",  enabled = true, speed = 3, bezier = "default" })

require("other/keybinds")
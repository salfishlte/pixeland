local mainMod = "SUPER"
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind("SUPER + P", hl.dsp.window.float({ action = "toggle" }))-
hl.bind("SUPER + mouse:273", hl.dsp.window.resize())

hl.bind("SUPER + W", hl.dsp.exec_cmd("flatpak run com.google.Chrome"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("nautilus"))
hl.bind("SUPER + R", hl.dsp.exec_cmd("rofi -show drun"))
hl.bind("SUPER + T", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + S", hl.dsp.exec_cmd("grim -g \"$(slurp)\" - | wl-copy"))
hl.bind("SUPER + L", hl.dsp.exec_cmd("hyprlock"))

for i = 1, 5 do
    hl.bind("SUPER + " .. i, hl.dsp.focus({ workspace = i }))
end

-- if your keyboard have volume wheel - uncomment this (tested on ajazz ak820)
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 1%+"), { repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 1%-"), { repeating = true })
<img width="2880" height="854" alt="" src="https://github.com/user-attachments/assets/440d1d37-8287-4553-bd70-3a7330c866d8" />
<hr style="width: 300px; height: 2px; background-color: #f0882d; border: none; margin: 15px 0;">

> [!WARNING]
> dots data may be unstable for your build. if you have any errors, problems, or instability with dots, please report them in the issues. thank you!

<hr style="width: 300px; height: 2px; background-color: #f0882d; border: none; margin: 15px 0;">

## pixeland
pixeland - this is a small project created for **myself and for others.** these hyprland dots are reminiscent of pixel art, or something along those lines.
in the future, this project will be updated and improved, and new features will be added.

<!--
### software
| component | tool | 
| :--- | :--- |
| **wm** | hyprland |
| **terminal** | kitty |
| **bar** | waybar |
| **launcher** | rofi |
| **notifications** | dunst |
| **colors** | matugen |
| **theme** | gtk-4.0 |
-->

## screenshots
<img width="1919" height="1079" alt="ezgif com-gif-maker" src="https://github.com/user-attachments/assets/e55764a6-2ee3-4785-a56b-b3baf806dd4e" />

## install
> after installation, there will be no wallpapers, and you need to select them yourself via win + r and going to the wallpapers menu

unfortunately, there is no automatic dots installer yet :(, I plan to make one in the future.
but there is no installer yet - you can install it manually if you are not too lazy. below is a short and clear tutorial

### clone repo & install dependencies
first of all, you need to clone the repository in order to use the installer
```
> git clone https://github.com/salfishlte/pixeland.git
> cd pixeland
```
secondly, install all of dependencies for this dots
```
> sudo pacman -S awww dunst nautilus gtk4 hyprland hyprlock hypridle kitty matugen rofi waybar ttf-jetbrains-mono-nerd ttf-firacode-nerd ttf-hack-nerd
```

### apply configs
now, you need to run the installer to install dots
```
> cp -r dunst gtk-4.0 hypr kitty matugen rofi waybar ~/.config/
> mkdir -p ~/Pictures/wallpapers
> cp -r wallpapers/. ~/Pictures/wallpapers
```
after all of this, you need allow some sh scripts
```
> chmod +x ~/.config/hypr/scripts/wallpaper-picker.sh
```

## to-do
- switch from dunst to swaync
- add auto-install
- switch from bash > fish
- new rofi
- add some func for waybar
  
## credits
- waybar inspiration: https://github.com/yugg755i/dotfiles
- salfishlte: for creating this <3

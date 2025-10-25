#!/bin/bash

# 定义选项（直接用文字，更简洁）
choices="关机\n重启\n休眠\n锁屏\n注销"

# 用 rofi 显示菜单
selected=$(echo -e "$choices" | rofi -dmenu -p "电源操作" -lines 5 -width 200)

# 根据选择执行命令
case $selected in
  关机) systemctl poweroff ;;
  重启) systemctl reboot ;;
  休眠) systemctl suspend ;;
  锁屏) swaylock -i ~/Pictures/wallpapers/wallhaven-1kxp9g.jpg ;;  # 换成你的锁屏命令（如 hyprlock）
  注销) niri msg action quit ;;  # Hyprland 注销，Sway 用 swaymsg exit
  *) exit 0 ;;
esac


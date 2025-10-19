#!/bin/sh

# 定义电源操作选项
options="
󰐥 关机
󰑙 重启
󰿅 注销
󰷛 锁屏
"

# 用 fuzzel 显示菜单，获取用户选择
choice=$(echo -e "$options" | fuzzel --dmenu --prompt "电源操作")

# 根据选择执行对应命令
case "$choice" in
    "󰐥 关机")
        systemctl poweroff
        ;;
    "󰑙 重启")
        systemctl reboot
        ;;
    "󰿅 注销")
        # 注销当前会话（适用于 Wayland 环境）
        niri msg action quit
        ;;
    "󰷛 锁屏")
        # 替换为你的锁屏工具（如 swaylock、slock 等）
        swaylock -i ~/Pictures/wallpapers/wallhaven-1kxp9g.jpg # 黑色背景锁屏
        ;;
esac


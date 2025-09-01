#!/usr/bin/env bash
# 作者：韩会会-QDFZZ.
# 功能：清理 install.sh 对 Ubuntu 24.04 系统所做的 ROS Noetic 安装相关修改（APT层面）
set -e
echo "正在清理 ROS Noetic 安装脚本对系统做的修改..."
# 删除添加的 source 相关文件
sudo rm -f /etc/apt/sources.list.d/focal.list
sudo rm -f /etc/apt/sources.list.d/ros-latest.list
sudo rm -f /etc/apt/sources.list.d/ros-for-jammy-ubuntu-noble-noble.sources
# 删除 keyring 和 apt-key 添加的 key
sudo rm -f /usr/share/keyrings/ros-archive-keyring.gpg
sudo rm -f /usr/share/keyrings/ros-noetic-keyring.gpg
# 删除 focal pin 优先级
sudo rm -f /etc/apt/preferences.d/focal-pin
# 清理 apt-key 添加的 key（这步是全局清理，不一定非必要）
if apt-key list | grep -q "ROS Builder"; then
    sudo apt-key del "$(apt-key list | grep -B 1 "ROS Builder" | head -n 1 | awk '{print $2}')"
fi
# 清理 .bashrc 中 ROS 的 source 行（只删 ROS Noetic 的）
sed -i '/source \/opt\/ros\/noetic\/setup.bash/d' ~/.bashrc
# 清理缓存
sudo apt clean
sudo apt update
echo "清理完成，你的系统已恢复至未安装ROS Noetic的状态（APT层面）"


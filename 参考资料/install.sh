#!/usr/bin/bash
# 作者：韩会会-QDFZZ.
# 功能：一个在Ubuntu 24.04.2 LTS 上强制安装 ROS noetic的安装脚本

# 安装ros-noetic-desktop-ful的必要仓库，生成/etc/apt/sources.list.d/ros-for-jammy-ubuntu-noble-noble.sources
sudo add-apt-repository ppa:ros-for-jammy/noble -y

# 添加软件源
echo "deb [signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros/ubuntu focal main" | sudo tee /etc/apt/sources.list.d/ros-latest.list		# 安装ros-noetic-navigation等ROS软件包必备
echo "deb http://archive.ubuntu.com/ubuntu focal main universe" | sudo tee /etc/apt/sources.list.d/focal.list		# 安装ROS Noetic依赖包必备

# 添加密钥文件
sudo apt install curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg		# 必备
# sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key | sudo gpg --dearmor -o /usr/share/keyrings/ros-noetic-keyring.gpg	# 可要可不要
# curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -	# 已过时。可要可不要

# 添加Focal源优先级设置
echo "Package: *
Pin: release n=focal
Pin-Priority: 100" | sudo tee /etc/apt/preferences.d/focal-pin

# 安装ros-noetci-desktop-full（完整桌面版）
sudo apt update
sudo apt install ros-noetic-desktop-full -y
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc # 将这句source追加到~/.bashrc文件末尾
source ~/.bashrc


# ROS便携系统制作

## 制作 Ubuntu 20.04 便携系统U盘。

在 Windows 下准备便携系统U盘（USB 3.0及以上）和 Ubuntu 安装盘。

注：如果安装系统在本地硬盘制作双系统，而非制作便携系统U盘，通过磁盘管理器分割出安装Ubuntu系统的空间后，无需执行步骤14。

1. Win键 + X键，在弹出的菜单中选择“磁盘管理”打开磁盘管理器，右键便携系统U盘分区点击“删除卷”，会看到U盘分区变为黑色：

![fig1.png](fig/fig1.png)

2. 右键便携系统U盘分区，点击“新建简单卷”，分出 30000MB 作为正常U盘使用：

![fig2.png](fig/fig2.png)

3. 默认值点击“下一页”：

![fig3.png](fig/fig3.png)

4. 文件系统可选 NTFS，点击“下一页”：

![fig4.png](fig/fig4.png)

5. 分区完成，剩余空间作为便携系统空间：

![fig5.png](fig/fig5.png)

6. Ubuntu 官网下载 Ubuntu 20.04 系统 .iso 镜像，使用 Rufus 工具制作 Ubuntu 安装盘。

选择要使用的U盘，选择下载好的系统镜像：

![fig6.png](fig/fig6.png)

7. 选择“以ISO镜像 模式写入”，后续都选“是”完成 Ubuntu 安装盘制作：

![fig7.png](fig/fig7.png)

8. 现在开始安装 Ubuntu 系统到便携系统U盘。

首先需要将电脑关机，将电脑硬盘物理断开连接，否则安装完毕后引导项有问题。

插入便携系统U盘和Ubuntu 安装盘，开机选择“Install Ubuntu”：

![fig10.png](fig/fig10.png)

9. 选择英语布局键盘，除非用其他语言键盘：

![fig11.png](fig/fig11.png)

10. 选择不联网：

![fig12.png](fig/fig12.png)

11. 选择“Normal Installation”：

![fig13.png](fig/fig13.png)

12. 选择“Something else”：

![fig14.png](fig/fig14.png)

13. 找到留给便携系统U盘的空间，可以通过“Size”进行核对，点击“+”号：

![fig15.png](fig/fig15.png)

14. 分出 1000MB 给 “EFI System Partition”，选择“Logical”以及“Beginning of this space”：

![fig16.png](fig/fig16.png)

15. 选中剩余空间点“+”号，分给根目录“/”，选择“Primary”、“Beginning of this space”以及“Ext4 journaling file system”：

![fig17.png](fig/fig17.png)

16. “Device for boot loader installation”选择“efi”对应的“Device”：

![fig18.png](fig/fig18.png)

17. 点击“Install Now”：

![fig19.png](fig/fig19.png)

18. 时区点中国区域：

![fig20.png](fig/fig20.png)

19. 设置用户名和密码：

![fig21.png](fig/fig21.png)

20. 安装完成后 BIOS 中选择便携系统U盘（硬盘安装选择Ubuntu系统）为优先启动项即可进入系统。但无法识别原系统，修复启动项在新的 Terminal 中：

```
sudo update-grub
```
 
## 系统配置及安装 ROS Noetic

1. 软件源替换为中科大源，在新的 Terminal 中：

```
sudo gedit /etc/apt/sources.list
```

将打开的文本框中内容替换为：

```
deb https://mirrors.ustc.edu.cn/ubuntu/ focal main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal-updates main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal-backports main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ focal-security main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal-security main restricted universe multiverse
deb https://mirrors.ustc.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ focal-proposed main restricted universe multiverse
```

在 Terminal 中：

```
sudo apt update
```

2. 安装 ROS 参考官网教程：

http://wiki.ros.org/cn/noetic/Installation/Ubuntu
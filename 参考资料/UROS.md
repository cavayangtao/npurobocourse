# ROS U盘便携系统

## 制作 Ubuntu 20.04 便携系统U盘

在 Windows 下准备两个U盘作为：便携系统U盘（USB 3.0及以上，空间128G及以上）和 Ubuntu 安装盘。

注：如果安装系统在本地硬盘制作双系统，而非制作便携系统U盘，通过磁盘管理器分割出安装Ubuntu系统的空间（磁盘管理->从现有磁盘选择压缩卷分割空间->对分割出的磁盘空间选择删除卷），此后无需执行步骤1、2、3、4、5、8、15、17。

1. Win键 + X键，在弹出的菜单中选择“磁盘管理”打开磁盘管理器，右键便携系统U盘分区点击“删除卷”，会看到U盘分区变为黑色：

![fig1.png](fig/fig1.png)

2. 右键便携系统U盘分区，点击“新建简单卷”，分出 30000MB 作为正常U盘存储空间使用：

![fig2.jpg](fig/fig2.jpg)

3. 默认值点击“下一页”：

![fig3.jpg](fig/fig3.jpg)

4. 文件系统可选 NTFS，点击“下一页”：

![fig4.jpg](fig/fig4.jpg)

5. 分区完成，剩余空间作为便携系统空间：

![fig5.png](fig/fig5.png)

6. Ubuntu 官网下载 Ubuntu 20.04 系统 .iso 镜像，使用 Rufus 工具制作 Ubuntu 安装盘。

选择要使用的U盘，选择下载好的系统镜像：

![fig6.jpg](fig/fig6.jpg)

7. 选择“以ISO镜像 模式写入”，后续都选“是”完成 Ubuntu 安装盘制作：

![fig7.jpg](fig/fig7.jpg)

8. 现在开始安装 Ubuntu 系统到便携系统U盘。

首先需要将电脑关机，将电脑硬盘物理断开连接，否则安装完毕后引导项有问题。

9. 插入便携系统U盘和 Ubuntu 安装盘，开机选择“Install Ubuntu”。

若在本地硬盘安装双系统，需在 BIOS 设置从 Ubuntu 安装盘启动。

![fig10.jpg](fig/fig10.jpg)

10. 选择英语布局键盘，除非用其他语言键盘：

![fig11.jpg](fig/fig11.jpg)

11. 选择不联网：

![fig12.jpg](fig/fig12.jpg)

12. 选择“Normal Installation”：

![fig13.jpg](fig/fig13.jpg)

13. 选择“Something else”：

![fig14.jpg](fig/fig14.jpg)

14. 找到留给便携系统U盘的空间，可以通过“Size”进行核对，点击“+”号：

![fig15.jpg](fig/fig15.jpg)

15. 分出 1000MB 给 “EFI System Partition”，选择“Logical”以及“Beginning of this space”：

![fig16.jpg](fig/fig16.jpg)

16. 选中剩余空间点“+”号，分给根目录“/”，选择“Primary”、“Beginning of this space”以及“Ext4 journaling file system”：

![fig17.jpg](fig/fig17.jpg)

17. “Device for boot loader installation”选择“efi”对应的“Device”：

![fig18.jpg](fig/fig18.jpg)

18. 点击“Install Now”：

![fig19.jpg](fig/fig19.jpg)

19. 时区点中国区域：

![fig20.jpg](fig/fig20.jpg)

20. 设置用户名和密码：

![fig21.jpg](fig/fig21.jpg)

20. 安装完成后 BIOS 中选择便携系统U盘（本地硬盘安装选择 Ubuntu 系统）为优先启动项即可进入系统。但开机引导项可能无法识别原系统，修复引导项项在新的 Terminal 中：

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

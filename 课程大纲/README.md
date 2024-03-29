# 智能无人系统综合设计 I 课程大纲

一、课程基本信息

1．课程编码：U38L81001

2．课程名称（中/英文）：智能无人系统综合设计（I）/ Comprehensive Design of Intelligent Unmanned System（I）

3．课程学时/学分：48/3

4．先修课程：线性代数

5．开课单位：无人系统技术研究院

6．开课学期：秋

7．课程类别：学科拓展类课程

8．面向大类/专业：航空航天类，海洋工程类，智能制造类，信息类

9．课程简介：课程采取任务牵引，围绕设定或自选题目，以学生团队合作的方式，开展方案设计和试验验证，提高学生的实践和协作能力。

二、课程背景

“智能无人系统科学与技术”是在新形势下，紧密围绕无人系统信息化、体系化、智能化的发展趋势，基于我校航空航天航海特色，吸收信息、控制、材料等优势学科设立的新兴交叉学科。

![background.jpg](../fig/background.jpg)

《智能无人系统综合设计》是基于“智能无人系统科学与技术”学科建设的综合性核心课程。课程旨在帮助学生理解并掌握智能无人系统综合设计的相关概念、典型流程、关键技术及其实现方法，为后续开展相关学科竞赛和科研工作奠定理论基础、提升动手能力。

![overview.jpg](../fig/overview.jpg)

课程设置紧密围绕智能无人自主方向的人才培养需求，包括环境感知、自主决策、集群协同等几个关键技术的教学及实验内容，使学生能够在动手实践中掌握智能无人系统的设计方法和系统集成。

![module.jpg](../fig/module.jpg)

三、课程内容

课程的第一阶段侧重于理论学习和课堂实验，培养学生建立相关知识体系，掌握关键技术的实现。

![schedule.jpg](../fig/schedule.jpg)

智能无人系统概述（2课时）：介绍要完成的课程任务，并从该任务中拆解出知识点，让学生在课程开始时对各环节有一个总体的把握，知道未来学习的每一部分知识的实际用途。介绍无人系统的内涵及特征、发展趋势、关键技术，以及智能无人系统科学与技术学科。

典型传感器的功能和特点（2课时）：介绍智能无人系统硬件平台，常见传感器的分类和用途。以自动驾驶为例介绍典型传感器如相机、毫米波雷达、激光雷达的功能和特点。以激光雷达为例介绍其在环境感知各任务模块中的应用。

机器人操作系统（2课时）：介绍机器人操作系统（ROS）的发展背景，包括其在无人系统中的作用、基本通信机制、各工具箱功能、发展历史及社区生态、相关学术组织和学科竞赛。介绍Ubuntu操作系统、ROS的安装及学习路径、ROS的核心概念。

图像处理和模式识别（2课时）：讲解图像处理基础，包括直方图、线性滤波、非线性滤波等。讲解图像特征点及特征描述子的含义、典型图像特征点及其描述子。以视觉跟踪为例介绍机器学习相关基本概念，并讲解人脸检测传统方法的基本流程，以及机器视觉进展。

机器人操作系统实验（4课时）：以tutlesim小乌龟为例，通过实验实践加深学生对ROS中节点、话题、消息等基本概念的理解，熟悉各类命令及工具箱的使用。创建功能包实现对小乌龟的控制，实现rosbag的录制及播放。

无人机人脸追踪实验（4课时）：熟悉Robomaster TT无人机的配网、ROS驱动话题、视频流查看、LED字符显示、键盘遥控等基本操作。从头实现无人机人脸跟踪功能包。

无人机二维码追踪实验（4课时）：将人脸追踪功能包扩展至QR code二维码追踪，并探讨其中存在的问题。学习tf变换基础知识，通过代码样例熟悉tf变换广播和监听的基本实现。利用tf变换实现apriltag二维码追踪。

智能自主理论基础与路径规划（4课时）：讲解智能自主理论基础、典型路径规划算法、先进路径规划算法、路径跟踪算法。通过实验演示加深学生对典型路径规划算法包括A* 算法、贪婪算法、Dijkstra算法的理解。

智能优化理论基础与任务分配（4课时）：讲解智能优化算法理论基础，包括遗传算法和蚁群算法。并通过实验演示，展示蚁群算法在路径规划和任务分配上的应用。

无人车基础控制实验（4课时）：熟悉Tianbot Mini无人车的配网、驱动、遥控，在rviz中查看激光雷达和里程计信息。编写功能包，点亮无人车LED灯。看看之前实现的小乌龟ROS控制节点如何应用到无人车上。

无人车建图导航实验（4课时）：了解建图导航基本功能包以及move_base/amcl导航定位框架。使用无人车利用gmapping功能包进行建图，学习调节相关参数。利用amcl结合move_base功能包进行定位导航。

综合实验（8课时）：完成课程设定的任务，根据各步骤完成情况进行综合实验评分。

专家报告：邀请行业知名专家，及受学生喜爱的技术大拿进行课程系列名家讲堂活动。

四、考核要求

课程实验以2-3人为小组进行，最终成绩按照：平时成绩 30% + 综合实验 40% + 课程报告 30%。

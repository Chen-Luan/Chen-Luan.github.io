# 视频

本页提供了一系列视频资源，旨在介绍 Unity 6 中的输入系统（Input System）。建议按文章中的顺序观看视频，因为许多高级知识依赖于基础的知识。

输入系统支持多种不同的工作流，每种工作流都有其独特的优势。这些视频将带你了解最常用的工作流，并提供实用指导，以帮助你立即开始使用输入系统。

## Unity 输入系统简介

**描述**：这是系列视频中的第一部分（共 7 部分），演示了如何开始使用 Unity 的输入系统并介绍其核心概念。涵盖以下知识：

* 学习如何在 Unity 项目中安装输入系统。
* 理解输入动作（Input Actions）的概念。
* 学习如何使用输入动作编辑器（Input Actions Editor）将输入动作绑定到各种输入源，如键盘按键、手柄按钮和鼠标轴。
* 探索如何定义触发输入动作时的交互（Interactions）（例如：按下、按住或释放）。
* 学习处理器（Processors）如何在原始输入数据被使用前对其进行修改或转换（例如：归一化、反转或限制数值范围）。

**链接**：[观看视频 1/7 :octicons-link-external-16:](https://www.youtube.com/watch?v=TiTKAseu17A)

??? info "译注：我写了个内嵌视频，不用谢 ;)"

    <iframe 
        src="https://www.youtube-nocookie.com/embed/TiTKAseu17A" 
        title="Unity6 中的输入系统（1/7）：输入动作编辑器" 
        style="width: 100%; aspect-ratio: 16/9; border: 0;" 
        allow="autoplay; encrypted-media; picture-in-picture" 
        allowfullscreen
        loading="lazy">
    </iframe>

## 编写输入系统脚本

**描述**：本系列的第二部分介绍了如何通过输入系统编写脚本来控制第三人称角色：

* 学习如何编写代码，通过输入系统资产（Input System asset）控制第三人称角色的移动和跳跃，并同时支持手柄和键鼠输入。
* 添加一个简单的暂停菜单。
* 学习如何动态切换动作表（Action Maps）以处理不同的输入上下文。

**链接**：[观看视频 2/7 :octicons-link-external-16:](https://www.youtube.com/watch?v=Cd2Erk_bsRY)（YouTube）

??? info "译注：在此播放嵌入视频。"

    <iframe 
        src="https://www.youtube-nocookie.com/embed/Cd2Erk_bsRY" 
        title="Unity6 中的输入系统（2/7）：编写输入系统脚本" 
        style="width: 100%; aspect-ratio: 16/9; border: 0;" 
        allow="autoplay; encrypted-media; picture-in-picture" 
        allowfullscreen
        loading="lazy">
    </iframe>

## 移动端控制

**描述**：本系列的第三部分演示了如何使用 Unity 的输入系统为游戏添加移动端触摸控制：

* 使用屏幕摇杆（On-Screen Stick）和屏幕按钮（On-Screen Button）组件为移动设备设置屏幕控件。
* 启用基于触摸的输入，用于第三人称角色的移动。

**链接**：[观看视频 3/7 :octicons-link-external-16:](https://www.youtube.com/watch?v=aI-r7ILNDug)（YouTube）

??? info "译注：在此播放嵌入视频。"

    <iframe 
        src="https://www.youtube-nocookie.com/embed/aI-r7ILNDug" 
        title="Unity6 中的输入系统（3/7）：在移动端控制输入系统" 
        style="width: 100%; aspect-ratio: 16/9; border: 0;" 
        allow="autoplay; encrypted-media; picture-in-picture" 
        allowfullscreen
        loading="lazy">
    </iframe>

## UI Toolkit 与输入系统

**描述**：本系列的第四部分演示了如何将输入系统与 UI Toolkit 集成：

* 学习如何导航并与一系列按钮进行交互。
* 使用手柄控件在不同的按钮集合之间切换，实现无缝的开启和关闭切换。

**链接**：[观看视频 4/7 :octicons-link-external-16:](https://www.youtube.com/watch?v=GdjP5pggaHw)（YouTube）

??? info "译注：在此播放嵌入视频。"

    <iframe 
        src="https://www.youtube-nocookie.com/embed/GdjP5pggaHw" 
        title="Unity6 中的输入系统（4/7）：输入系统与 UI toolkit" 
        style="width: 100%; aspect-ratio: 16/9; border: 0;" 
        allow="autoplay; encrypted-media; picture-in-picture" 
        allowfullscreen
        loading="lazy">
    </iframe>

## 重绑定输入系统控制

**描述**：本系列的第五部分探讨了游戏内按键重绑定：

* 学习如何使用重绑定功能，以便让玩家在游戏过程中自定义其输入控件。
* 使用 PlayerPrefs 保存这些自定义绑定，确保设置在不同游戏会话之间持久化。

**链接**：[观看视频 5/7 :octicons-link-external-16:](https://www.youtube.com/watch?v=JfuqMaOiNPs)（YouTube）

??? info "译注：在此播放嵌入视频。"

    <iframe 
        src="https://www.youtube-nocookie.com/embed/JfuqMaOiNPs" 
        title="Unity6 中的输入系统（5/7）：重绑定输入系统控制" 
        style="width: 100%; aspect-ratio: 16/9; border: 0;" 
        allow="autoplay; encrypted-media; picture-in-picture" 
        allowfullscreen
        loading="lazy">
    </iframe>

## 玩家输入（Player Input）组件

**描述**：本系列的第六部分探讨了如何准备本地多人游戏场景（多个玩家共享同一台电脑和屏幕，但使用独立的控制器）：

* 配置玩家输入组件。
* 设置脚本以与玩家输入组件进行交互。
* 设置用于与脚本通信的行为。

**链接**：[观看视频 6/7 :octicons-link-external-16:](https://www.youtube.com/watch?v=beDfIBLfx4c)（YouTube）

??? info "译注：在此播放嵌入视频。"

    <iframe 
        src="https://www.youtube-nocookie.com/embed/beDfIBLfx4c" 
        title="Unity6 中的输入系统（6/7）：玩家输入组件" 
        style="width: 100%; aspect-ratio: 16/9; border: 0;" 
        allow="autoplay; encrypted-media; picture-in-picture" 
        allowfullscreen
        loading="lazy">
    </iframe>

## 玩家输入管理器（Player Input Manager）与本地多人游戏

**描述**：本系列的第七部分专注于本地多人游戏。学习如何使用玩家输入管理器组件，使多名玩家能够在本地多人设置中控制不同的角色。

这包括演示以下内容的示例：

* 本地合作（Co-op）设置
* 分屏（Split-screen）配置
* 双人对战场景

**链接**：[观看视频 7/7 :octicons-link-external-16:](https://www.youtube.com/watch?v=lGxXQzE5Vu8)（YouTube）

??? info "译注：在此播放嵌入视频。"

    <iframe 
        src="https://www.youtube-nocookie.com/embed/lGxXQzE5Vu8" 
        title="Unity6 中的输入系统（7/7）：玩家输入管理器与本地多人游戏" 
        style="width: 100%; aspect-ratio: 16/9; border: 0;" 
        allow="autoplay; encrypted-media; picture-in-picture" 
        allowfullscreen
        loading="lazy">
    </iframe>

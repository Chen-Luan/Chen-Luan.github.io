# 输入系统（Input System）

借助输入系统，用户可以使用各种设备、触摸屏或手势来操控你的游戏或应用。

## 简介

![ActionsEditor.png](/assets/images/translation/unity-input-system-1.19.0-docs/introduction/index/ActionsEditor.png)
*输入动作编辑器（Input Actions Editor）窗口，展示了输入系统包（Input System package）中预配置的一些默认动作。*

Unity 通过两个独立的系统来支持输入：一个系统较旧，而另一个较新。

较旧的系统称为 [输入管理器（Input Manager）:octicons-link-external-16:](https://docs.unity3d.com/Manual/class-InputManager.html)，它是编辑器内置的，也是 Unity 核心平台的一部分。如果你没有安装本文所述的输入系统包，那么它还是项目默认的输入系统。

本文介绍的**输入系统包**（也常简称为**“输入系统”**）是一个更加现代且灵活的系统，旨在取代 Unity 传统的输入管理器。借助该系统，你可以使用各类输入设备来与 Unity 项目交互。要使用它，你需要 [使用包管理器（Package Manager）将其安装到你的项目中](./installation.zh.md)。

在安装输入系统包时，安装程序会提示是否要自动停用旧的输入管理器内置系统。([了解更多](./installation.zh.md#启用新的输入后端))

若要开始使用，请参阅 [安装（Installation）](./installation.zh.md) 和 [工作流（Workflows）](./workflows/index.zh.md) 文章。相关示例项目，请查看 GitHub 上的 [战士 demo（Warriors demo）:octicons-link-external-16:](https://github.com/UnityTechnologies/InputSystem_Warriors)。

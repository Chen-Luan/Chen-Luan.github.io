# 安装指南

本页介绍如何为你的 Unity 项目安装并启用输入系统包（Input System package）。

!!! note "提示"

    此版本（1.19.0）的输入系统包需要 .NET 4 运行时。无法在运行旧版 .NET 3.5 运行时的项目中使用。
    
    此包仅兼容 2021.3 及更高版本的 Unity 编辑器 。如果你使用的编辑器版本低于 2021.3，则需要调整包版本以和编辑器版本兼容，具体请参考 [Unity 包管理器（Unity Package Manager）:octicons-link-external-16:](https://docs.unity3d.com/Manual/upm-ui.html) 页面中带有 **Release** 标签的版本。

## 安装包

若要安装新的输入系统包：

1. 在 Unity 编辑器的主菜单中，点击 **窗口（Windows）** > **包管理器（Package Manager）** 来打开 Unity 包管理器。[^1]

2. 在导航面板中选中 **Unity 注册表（Unity Registry）**。

3. 在列表中选择 **Input System** 包。

    包管理器默认会选择此版本（1.19.0）进行安装。

4. 点击 **安装（Install）**，并根据提示启用新的输入后端。

此包还附带了几个示例，用于指导如何使用新输入系统，这些示例同样可以在 [Unity 包管理器 :octicons-link-external-16:](https://docs.unity3d.com/Manual/upm-ui.html) 窗口中找到。请参阅 [安装示例](#安装示例)。

<a id="启用新的输入后端"></a>

## 启用新的输入后端

默认情况下，Unity 旧版的输入管理器（`UnityEngine.Input`）处于激活状态，而对新版输入系统的支持处于未激活状态。这使得旧版的 Unity 项目可以兼容并以原样继续运行。

在安装输入系统包时，Unity 会询问是否要启用新的后端。点击 **Yes** 以启用新版后端并禁用旧版后端。编辑器将会在此过程中自动重启。

![EditorRestartWarning.png](/assets/images/translation/unity-input-system-1.19.0-docs/introduction/installation/EditorRestartWarning.png)

你也可以在 **编辑（Edit）** > **项目设置（Project Settings）** > **玩家（Player）** > **其他设置（Other Settings）** > **活动输入处理（Active Input Handling）** 中找到对应的设置。如果你更改了此设置，则必须重启编辑器才能生效。

!!! note "提示"

    你可以同时启用旧系统和新系统，只需将**活动输入处理（Active Input Handling）**设置为**两个（Both）**。

![ActiveInputHandling.png](/assets/images/translation/unity-input-system-1.19.0-docs/introduction/installation/ActiveInputHandling.png)

当启用新版输入后端时，`ENABLE_INPUT_SYSTEM=1` 这一 C# `#define` 宏会被添加到构建（builds）中。同理，当启用旧版输入后端时，`ENABLE_LEGACY_INPUT_MANAGER=1` 这一 C# `#define` 宏会被添加。由于两个系统可以同时启用，因此这两个宏定义也可能**同时**为 1。

<a id="安装示例"></a>

## 安装示例

输入系统包附带了许多示例。你可以直接从 Unity 的包管理器窗口（**窗口（Window） > 包管理器（Package Manager）**）安装这些示例。[^1]要查看示例列表，请在包管理器窗口中选择输入系统包，然后点击 **Samples** 选项卡。点击 **Import** 即可将对应的示例导入到当前项目中。

![InstallSamples.png](/assets/images/translation/unity-input-system-1.19.0-docs/introduction/installation/InstallSamples.png)

有关输入系统包更全面的演示项目，请参阅 GitHub 上的 [战士（InputSystem_Warriors）:octicons-link-external-16:](https://github.com/UnityTechnologies/InputSystem_Warriors) 仓库。

[^1]: 译注：在某些版本的 Unity 编辑器中，这个菜单可能位于 **窗口（Windows）** > **Package Management** > **包管理器（Package Manager）**。

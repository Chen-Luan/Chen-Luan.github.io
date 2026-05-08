!!! warning "译注：相关链接尚未完善，访问时可能遭遇 404，你可以先 [查看原文 :octicons-link-external-16:](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.19/manual/Workflows.html)。"

!!! note ""

    译注：本文中的图片未进行汉化。

# 输入系统工作流

有多种方法来使用输入系统（Input System），但最推荐的工作流是：在**项目设置（Project Settings）窗口**的输入动作（Input Actions）面板中为当前项目配置动作（Actions）和绑定（Bindings），在代码的 Start 方法中获取这些动作的引用，然后在 Update 方法中根据引用来读取这些动作的值[^1]。

此外，对于更特殊的情况，还可以使用一些其他的工作流。例如，你可以将**玩家输入（PlayerInput）组件**与动作和绑定组合起来使用，这增加了一层抽象，无需编写中间代码即可将动作连接到事件处理程序，而且能轻松处理多人游戏场景。

你可以选择在编辑器面板中配置动作和绑定，也可以完全通过脚本来设置一切。或者你也可以采取更直接的方法，即完全跳过动作和绑定功能，通过脚本直接读取设备的状态。

以下是对这些主要工作流的描述，你可以点击链接来查看更多内容。

| **工作流** | **交互方式** |
| --- | --- |
| [**使用动作**](workflow-actions.zh.md)<br><br>这是大多数情况下**推荐**的工作流。在此工作流中，你需要先使用 [动作编辑器窗口](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.19/manual/ActionsEditor.html) 来配置动作和绑定的集合，然后在代码中设置动作引用并读取这些引用的值。[^1] | ![Workflow-Actions.png](/assets/images/translation/unity-input-system-1.19.0-docs/introduction/workflows/Workflow-Actions.png) |
| [**使用动作和玩家输入组件**](workflow-playerInput.zh.md)<br><br>此工作流提供了额外的功能，允许你将动作的**回调**直接连接到你自己的回调处理方法，从而无需在代码中处理动作引用。它还提供了一些对**本地多人游戏**场景（如设备分配和分屏功能）非常有用的特性。 | ![Workflow-PlayerInput.png](/assets/images/translation/unity-input-system-1.19.0-docs/introduction/workflows/Workflow-PlayerInput.png) |
| [**直接读取设备状态**](workflow-direct.zh.md)<br><br>这是一个简易的、纯脚本的工作流，完全绕过了动作和绑定功能。你的脚本会显式引用特定的设备控件（例如“左手柄摇杆”）并直接读取其数值。这适用于**快速原型设计**或只在单一、固定的平台上运行的游戏。由于它跳过了一些输入系统的核心功能，因此这种工作流的**灵活性较低**。 | ![Workflow-Direct.png](/assets/images/translation/unity-input-system-1.19.0-docs/introduction/workflows/Workflow-Direct.png) |

!!! note "提示"

    由于输入系统拥有多种工作流，本说明文档中使用的代码示例也会有所不同，通常会演示使用不同工作流的技术。例如，一些代码示例可能使用动作引用（Action references），而另一些可能使用直接从设备读取输入的工作流。

[^1]: 译注：就是在 Start() 中获取动作并赋值给全局变量，然后在 Update() 中轮询这个变量。

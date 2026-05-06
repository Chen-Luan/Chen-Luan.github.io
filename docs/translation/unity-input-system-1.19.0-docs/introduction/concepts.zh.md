???+ warning "译注：本文仍在施工中。"

    * 文章内容尚未翻译
    * 相关链接尚未完善，访问时可能遭遇 404

    你可以先 [查看原文 :octicons-link-external-16:](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.19/manual/Concepts.html)。

!!! info ""

    译注：本文中的图片未进行汉化。

# 基础概念

本页介绍了与使用输入系统相关的基础概念。这些概念涉及当用户向你的游戏或应用发送输入时发生的一系列事件步骤。输入系统提供了实现这些步骤的功能，或者你也可以选择亲自实现其中的一部分。

![ConceptsOverview.png](/assets/images/translation/unity-input-system-1.19.0-docs/introduction/concepts/ConceptsOverview.png)

| **概念** | **描述** |
| --- | --- |
| [**用户（User）**](./advanced-topics/user-management.zh.md) | 游玩你的游戏，或使用你的应用程序的人，他们通过握持或触摸输入设备来进行输入。 |
| [**输入设备（Input Device）**](./../supported-input-devices/index.zh.md) | 当我们在讨论输入相关的话题时，通常简称为“**设备**”。这是指物理硬件设备，如键盘、手柄、鼠标或触摸屏，用户会通过设备将输入发送到 Unity 中。 |
| [**控件（Control）**](./../using-the-input-system/controls.zh.md) | 输入设备上独立的各个部分，每个部分都能向 Unity 发送输入值。例如，手柄的**控件**包含多个按钮、摇杆和扳机；而鼠标的控件包括底部的 X 和 Y 轴传感器，以及顶部的各种按钮和滚轮。 |
| [**动作（Action）**](./../using-the-input-system/actions.zh.md) | 动作是一个高级概念，用于描述用户在你的游戏或应用中可能想要执行的具体操作，例如游戏中的“跳跃（Jump）”，或屏幕 UI 中的“选择（Select）”。它们是用户通过输入在游戏或应用中可以执行的操作，而**不关心**他们使用什么设备或控件来完成它。动作通常具有你根据项目选择的概念性名称，并且通常应该是动词。例如“跑（Run）”、“跳（Jump）”、“蹲下（Crouch）”、“使用（Use）”、“开始（Start）”、“退出（Quit）”。 |
| [**动作表（Action Map）**](./../using-the-input-system/configuring-input.zh.md#configure-action-maps) | 动作表允许你将动作组织成分组，这些分组代表了某个场合下一组有逻辑关联的动作。按照不同的场合来将动作分组成表在将来是非常有好处的，因为你可以同时启用或禁用某个动作表中的所有动作。例如，你可能有一个用于控制玩家的动作表，以及另一个用于与游戏 UI 交互的动作表。 |
| [**绑定（Binding）**](./../using-the-input-system/input-bindings.zh.md) | 定义在动作和特定设备控件之间连接。绑定主要分为两种类型：<ul><li>普通绑定（Normal bindings）通过 [控件路径（control path）](./../using-the-input-system/Controls.zh.md#control-paths). At runtime, any path that matches one or multiple controls will feed input into the binding.</li><li>Composite bindings don't bind to controls themselves. Instead, they receive their input from their Part bindings and then return a value representing a composition of those inputs. For example, the right trigger on the gamepad can act as a strength multiplier on the value of the left stick.</li></ul> |
| [**你的动作代码（Your Action Code）**](./../using-the-input-system/responding-to-actions.zh.md) | The part of your script which is executed based on the actions you have configured. In your code, you can use references to actions to either read the current value or state of the action (also known as "polling"), or set up a callback to call your own method when actions are performed. |
| [**动作资产（Action Asset）**](./../using-the-input-system/input-action-assets.zh.md) | An asset type which contains a saved configuration of Action Maps, Actions and Bindings. You can specify one Action Asset in your project as the [project-wide actions](./../using-the-input-system/project-wide-actions.zh.md), which allows you to easily reference those actions in code by using [`InputSystem.actions` :octicons-link-external-16:](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.19/api/UnityEngine.InputSystem.InputSystem.html). |

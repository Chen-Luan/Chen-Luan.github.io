!!! warning "译注：相关链接尚未完善，访问时可能遭遇 404，你可以先 [查看原文 :octicons-link-external-16:](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.19/manual/Concepts.html)。"

!!! info ""

    译注：本文中的图片未进行汉化。

# 基础概念

本页介绍了与使用输入系统相关的基础概念。这些概念涉及当用户向你的游戏或应用发送输入时发生的一系列事件步骤。输入系统提供了实现这些步骤的功能，或者你也可以选择亲自实现其中的一部分。

![ConceptsOverview.png](/assets/images/translation/unity-input-system-1.19.0-docs/introduction/concepts/ConceptsOverview.png)

| **概念** | **描述** |
| --- | --- |
| [**用户（User）**](./advanced-topics/user-management.zh.md) | 游玩你的游戏，或使用你的应用程序的人，他们通过握持或触摸输入设备来进行输入。 |
| [**输入设备（Input Device）**](./../supported-input-devices/index.zh.md) | 当我们在讨论输入相关的话题时，通常可以简称为“**设备**”。这是指物理硬件设备，如键盘、手柄、鼠标或触摸屏，设备用于将用户输入发送到 Unity 中。 |
| [**控件（Control）**](./../using-the-input-system/controls.zh.md) | 输入设备上独立的各个部分，每个部分都能向 Unity 发送输入值。例如，手柄有多个按钮、摇杆和扳机**控件**；而鼠标有底部的 X 和 Y 轴传感器，以及顶部的各种按钮和滚轮控件。 |
| [**动作（Action）**](./../using-the-input-system/actions.zh.md) | 动作是一个高级概念，用于描述用户在你的游戏或应用中可能会执行的具体操作，例如游戏中的“跳跃（Jump）”，或屏幕 UI 中的“选择（Select）”。动作是用户通过输入在游戏或应用中可以执行的操作，而**不关心**用户使用什么设备或控件来完成它。通常根据你的项目概念性名称来为动作命名，并且通常应该是动词。例如“跑（Run）”、“跳（Jump）”、“蹲下（Crouch）”、“使用（Use）”、“开始（Start）”、“退出（Quit）”。 |
| [**动作表（Action Map）**](./../using-the-input-system/configuring-input.zh.md#configure-action-maps) | 动作表允许你将动作分成组，这些分组代表了某个场合下一组有逻辑关联的动作。按照不同的场合来将动作分组成表在将来是非常有好处的，因为你可以同时启用或禁用某个动作表中的所有动作。例如，你可以用一个表来控制玩家动作，用另一个表来控制游戏 UI 交互。 |
| [**绑定（Binding）**](./../using-the-input-system/input-bindings.zh.md) | 绑定定义了动作和特定设备控件之间连接关系。绑定主要分为两种类型：<ul><li>**普通**绑定（**Normal** bindings）根据 [控件路径（control path）](./../using-the-input-system/Controls.zh.md#control-paths) 直接绑定到一个或多个控件上。在运行时（runtime），只要路径匹配，任何控件都会将输入传递给该绑定。</li><li>**复合**绑定（**Composite** bindings）不直接绑定某个控件本身。而是从各个**子绑定（Part）**中接收、组合这些输入，然后返回一个值。例如，手柄上的右扳机键可以作为左摇杆值的强度乘数。</li></ul> |
| [**你的动作代码（Your Action Code）**](./../using-the-input-system/responding-to-actions.zh.md) | 根据你配置的动作来在脚本中执行的部分。在代码中，你可以获取动作的引用，并读取动作的当前值或状态（这也叫“轮询”），或者也可以设置一个回调，在执行动作时调用你自己写的方法。 |
| [**动作资产（Action Asset）**](./../using-the-input-system/input-action-assets.zh.md) | 一种资产类型，其中包含已设定的动作映射配置、动作配置和绑定配置。你可以在项目中指定一个动作资产作为 [项目全局动作（project-wide actions）](./../using-the-input-system/project-wide-actions.zh.md)，借此你可以在代码中使用 [`InputSystem.actions` :octicons-link-external-16:](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.19/api/UnityEngine.InputSystem.InputSystem.html) 轻松地引用这些动作。 |

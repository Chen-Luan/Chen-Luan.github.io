!!! warning "译注：相关链接尚未完善，访问时可能遭遇 404，你可以先 [查看原文 :octicons-link-external-16:](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.19/manual/Workflow-Actions.html)。"

# 工作流概览 - 动作

![Workflow-Actions.png](/assets/images/translation/unity-input-system-1.19.0-docs/introduction/workflows/actions/Workflow-Actions.png)

虽然输入系统提供了多种工作流供你选择，但这是首选的推荐工作流，它适用于大多数常见的游戏和应用程序。

在这个工作流中，你需要先在 [**输入动作编辑器**（Input Actions editor）](../../using-the-input-system/configuring-input.zh.md) 中配置动作，然后在代码中设置对这些动作的引用，并读取它们的值。

## 在动作编辑器中配置动作

点击 **编辑（Edit）** > **项目设置（Project Settings）** > **输入系统包（Input System Package）** > **输入动作（Input Actions）** 打开输入系统设置。

如果你尚未此项目创建并分配默认的 [项目级动作（project-wide actions）](../../using-the-input-system/project-wide-actions.zh.md)，输入系统设置窗口将显示一个按钮用于执行这个操作。

在你为项目创建并分配了默认的项目级动作之后，会显示如下的动作编辑器：

![ProjectSettingsInputActionsSimpleShot.png](../../../../assets/images/translation/unity-input-system-1.19.0-docs/introduction/workflows/actions/ProjectSettingsInputActionsSimpleShot.png)

你可以在输入动作编辑器中定义和管理动作，动作是指你希望用户在游戏或应用中执行的操作。你还可以使用此编辑器来绑定动作与各种外设上多种多样的控件（例如游戏手柄上的摇杆、键盘上的按键或 XR 控制器上的按钮）。

你可以通过动作和绑定功能，来将游戏或应用中概念意义上的动作与玩家真实用来执行的具体设备和控件分离开来，这可以使你的代码更加简洁且灵活。这种设计与 [在代码中直接读取设备状态](./direct.zh.md) 截然不同，直接读取可能适合简单的项目，但对于复杂的项目来说，那可能会变得难以管理且缺乏灵活性。

### 默认动作

输入系统预设了一些默认动作，例如“移动（Move）”“跳跃（Jump）” 等，这些动作适用于许多常见的应用和游戏场景。它们已经进行了配置并能读取常见的输入控制器，如键盘、鼠标、游戏手柄、触摸屏和 XR 控制器。

这意味着在大多数情况下，你可以直接开始编写脚本，并在脚本中引用已经为你配置好的默认动作名称，从而无需进行任何额外配置。

## 从代码中访问动作

有多种方式用于在代码中访问动作，其中最简单的一种是使用 `FindAction` 方法。

`FindAction` 会根据名称在已配置好的动作集中搜索动作，并返回一个引用。你可以直接读取该引用的值（也称为“轮询”），或者关联动作执行时调用的回调方法。本文所述的工作流重点在于轮询。你可以在此处 [阅读更多关于使用回调的信息](../../using-the-input-system/responding-to-actions.zh.md)。

!!! note "提示"

    查找并存储动作的引用类似于查找并存储组件的引用，如果你在 Unity 的其他地方这样做过，那么你应该很熟悉这种方式。

按照以下步骤使用 `FindAction` 获取动作引用并在脚本中读取用户输入：

1. 在 Unity 中创建一个新的 C# 脚本。

2. 在脚本顶部添加输入系统的“using”语句。以便在后文中使用输入系统 API：

    ```C#
    using UnityEngine.InputSystem;
    ```

3. 在类主体中创建一些 `InputAction` 类型的变量，脚本中使用的每个动作对应一个变量。这些变量将存储每个动作的引用，变量名称推荐以“Action”结尾。例如：

    ```C#
    InputAction moveAction;
    InputAction jumpAction;
    ```

4. 在 `Start()` 方法中，使用 `FindAction` 查找每个动作的引用，并将其存储在相应的变量中，例如：

    ```C#
    moveAction = InputSystem.actions.FindAction("Move");
    jumpAction = InputSystem.actions.FindAction("Jump");
    ```

5. 在 `Update()` 方法中，从动作变量中读取值。这使你能够编写每帧从动作中读取最新值并做出相应响应的代码。

    读取值的方式取决于动作的**值类型**。具体来说，某些动作可能会返回 1D 或 2D 轴值，而其他动作可能会返回 bool true/false。在本例中，**Move** 动作返回一个 Vector2，而 **Jump** 动作返回一个 bool。

    ``` C#
    Vector2 moveValue = moveAction.ReadValue<Vector2>();
    bool jumpValue = jumpAction.IsPressed();
    ```

将所有步骤组合起来，得到下面这个示例脚本：

```C#
using UnityEngine;
using UnityEngine.InputSystem;

public class Example : MonoBehaviour
{
    // 这些变量用于保存动作引用
    InputAction moveAction;
    InputAction jumpAction;

    private void Start()
    {
        // 查找“Move”和“Jump”动作的引用
        moveAction = InputSystem.actions.FindAction("Move");
        jumpAction = InputSystem.actions.FindAction("Jump");
    }

    void Update()
    {
        // 读取“Move”动作的值，它是一个二维向量
        // 以及“Jump”动作的状态，它是一个布尔值

        Vector2 moveValue = moveAction.ReadValue<Vector2>();
        // 在此处编写移动代码

        if (jumpAction.IsPressed())
        {
            // 在此处编写跳跃代码
        }
    }
}
```

!!! note "提示"

    你应该避免在 `Update()` 循环中使用 `FindAction`，因为它执行的是基于字符串的查找，这可能会影响性能。因此在上面的示例中，动作引用是在 `Start()` 函数期间查找的，并在找到后存储在变量中。

!!! note "提示"

    [InputSystem.actions :octicons-link-external-16:](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.19/api/UnityEngine.InputSystem.InputSystem.html) API 只会指向被分配为 [项目级动作](../../using-the-input-system/project-wide-actions.zh.md) 的动作资产（Action Asset）。大多数项目只需要一个动作资产，但如果你使用了多个动作资产，则必须使用 `InputActionAsset` 类型的变量来引用那些你想访问的资产。

## 优缺点

这是输入系统推荐的工作流，其特点在于灵活和简单，适用于大多数项目。

基于动作而不是设备组件是大有裨益的，因为你后续可以在动作编辑器中配置动作表（Action Map）功能和绑定，还可以在运行时实现 [用户重新绑定](../../using-the-input-system/input-bindings.zh.md#interactive-rebinding)。

然而该工作流不支持多设备本地多人游戏的场景，因此如果你正在制作本地多人游戏，可能需要考虑使用 [动作和玩家输入工作流](./actions-and-player-input.zh.md)。

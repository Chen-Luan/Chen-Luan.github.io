!!! warning "译注：相关链接尚未完善，访问时可能遭遇 404，你可以先 [查看原文 :octicons-link-external-16:](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.19/manual/Workflow-PlayerInput.html)。"

# 工作流概述 - 动作与 PlayerInput（玩家输入）组件

![Workflow-PlayerInput.png](/assets/images/translation/unity-input-system-1.19.0-docs/introduction/workflows/actions-and-player-input/Workflow-PlayerInput.png)

输入系统（Input System）中最高级别的抽象是将 [动作](../../using-the-input-system/actions.zh.md) 与 **Player Input 组件**结合起来。

你可以通过 Player Input 组件来配置动作，并与你自己的 MonoBehaviour 脚本中的 C# 方法相连接，当在用户输入时会调用你指定的 C# 方法。

你可以在检视面板（Inspector）UI 中设置这些事件驱动的连接，而不是像 [上文中的工作流示例](./actions.zh.md) 那样，编写代码来轮询动作的值。

PlayerInput 组件还有助于处理本地多人游戏场景。你可以将 PlayerInput 组件与 PlayerInputManager（玩家输入管理器）组件一起使用，以在新的输入设备上发生输入时自动实例化新玩家。例如，如果你正在制作一款四人本地合作游戏，结合使用 PlayerInput 和 PlayerInputManager 两个组件之后，新玩家只要按下控制器上的开始按钮即可自动加入游戏。

![PlayerInputWithGameplayEvents.png](/assets/images/translation/unity-input-system-1.19.0-docs/introduction/workflows/actions-and-player-input/PlayerInputWithGameplayEvents.png)

在上面的示例图片中，你可以看到 PlayerInput 组件已设置为通过 Unity 事件将“move”和“jump”动作映射到脚本中的 `OnMove` 和 `OnJump` 方法。

下面是一个脚本示例，它提供了这些方法的实现：

```C#
using UnityEngine;
using UnityEngine.InputSystem;

// 这个脚本旨在让 PlayerInput 组件调用 OnMove 和 OnJump 方法

public class ExampleScript : MonoBehaviour
{
    Vector2 moveAmount;

    public void OnMove(InputAction.CallbackContext context)
    {
        // 在每次事件调用时读取“move”动作的值
        moveAmount = context.ReadValue<Vector2>();
    }

    public void OnJump(InputAction.CallbackContext context)
    {
        // 将你的跳跃代码写在这里。
    }

    public void Update()
    {
        // 要在每一帧使用来自“move”动作的 Vector2 值，
        // 请在此处使用“moveAmount”变量。
    }

}
```

!!! note "提示"

    通常情况下，如果你使用 PlayerInput 工作流（Workflows），则应该如上所述通过回调来读取输入，然而如果你在使用 PlayerInput 组件时需要直接访问输入动作资产（Action Asset），你应该访问 [PlayerInput 组件对动作的副本 :octicons-link-external-16:](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.19/api/UnityEngine.InputSystem.PlayerInput.html#UnityEngine_InputSystem_PlayerInput_actions)，而不是 `InputSystem.actions`。

    这是因为 PlayerInput 组件会执行设备过滤以便为多名玩家自动分配设备，因此每个实例都有一份为对应玩家过滤后的动作副本。如果你通过直接读取 `InputSystem.actions` 来绕过这一步，自动设备分配将无法工作。

## 优缺点

与 [不使用 PlayerInput 组件而直接使用动作](./actions.zh.md) 相比，此工作流既有优点也有缺点。由于它建立在动作的使用之上，因此它具备动作提供的所有优势，例如动作表（Action Map）、绑定（Binding），以及在输入动作编辑器（Input Actions editor）中配置它们的能力。你还可以实现 [在运行时由用户重新绑定](../../using-the-input-system/input-bindings.zh.md#interactive-rebinding)。

此工作流还允许你通过检视面板中的界面在编辑器中设置回调，这有时可以降低代码的复杂性，但也可能使调试变得更加困难，因为动作与代码之间的连接是在代码之外定义的。

它还在本地多人游戏场景中提供了对 [设备分配](../../using-the-input-system/player-input-component#device-assignments) 和 [分屏](../../using-the-input-system/player-input-manager-component#split-screen) 的现成处理方案。虽然这些功能你可以自行实现，但拥有一个即用型的简单解决方案大有裨益。然而如果你选择此方案，其实现过程在某种程度上就像一个“黑盒”，这意味着你较难自定义其工作方式。

与本节描述的其他工作流一样，在灵活性、简单性和实现速度之间需要进行权衡。

要开始使用此工作流，请 [参阅 Player Input 组件的文档](../../using-the-input-system/player-input-component)。

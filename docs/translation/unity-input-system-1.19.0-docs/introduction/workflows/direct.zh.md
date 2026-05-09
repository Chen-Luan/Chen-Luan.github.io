!!! warning "译注：相关链接尚未完善，访问时可能遭遇 404，你可以先 [查看原文 :octicons-link-external-16:](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.19/manual/Workflow-Direct.html)。"

# 工作流概述 - 直接读取设备状态

![Workflow-Direct.png](/assets/images/translation/unity-input-system-1.19.0-docs/introduction/workflows/direct/Workflow-Direct.png)

这是最简单、最直接的输入工作流，但灵活性也最低。它绕过了 [输入动作编辑器](../../using-the-input-system/configuring-input.zh.md)，因此你无法从 [动作](../../using-the-input-system/actions.zh.md) 附带的所有功能中获益。

如果你想使用一种特定类型的设备进行快速实现，这可能会很有用。但如果你想为用户提供多种类型的输入，或者你的目标是支持多个平台，这通常不是最佳选择。

你可以通过引用设备的 [控件（Control）](../../using-the-input-system/controls.zh.md) 并读取它们当前生成的值，来直接读取已连接设备的值，代码如下所示：

```C#
using UnityEngine;
using UnityEngine.InputSystem;

public class MyPlayerScript : MonoBehaviour
{
    void Update()
    {
        var gamepad = Gamepad.current;
        if (gamepad == null)
        {
            return; // 没有连接游戏手柄。
        }

        if (gamepad.rightTrigger.wasPressedThisFrame)
        {
            // 在此编写“使用”代码
        }

        Vector2 move = gamepad.leftStick.ReadValue();
        {
            // 在此编写“移动”代码
        }
    }
}
```

上面的示例直接从当前连接的 [游戏手柄](../../supported-input-devices/gamepad-support) 的右扳机键和左摇杆读取值。它没有使用输入系统的“Action”类，相反，你的游戏或应用中的概念性动作（例如“移动”和“使用”）是由你的代码响应输入时执行的操作隐式定义的。你可以对其他输入设备类型使用相同的方法，例如 [键盘 :octicons-link-external-16:](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.19/api/UnityEngine.InputSystem.Keyboard.html) 或 [鼠标 :octicons-link-external-16:](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.19/api/UnityEngine.InputSystem.Mouse.html)。

## 优缺点

这可能是编写响应输入的代码最快的方法，但它的灵活性最低，因为在你的代码与特定设备生成的值之间没有任何抽象层。

如果你选择使用这种技术：

* 你将无法从 Unity 对 [动作](./actions.zh.md) 和 [交互（Interactions）](../../using-the-input-system/interactions.zh.md) 的管理中获益。
* 使你的游戏或应用兼容多种类型的 [输入设备](../../using-the-input-system/devices.zh.md) 会更加困难。
* 你的输入绑定硬编码在脚本中，因此对绑定的任何更改都需要修改代码。
* 允许用户在 [运行时将他们自己的控件重新映射到不同的动作](../../using-the-input-system/input-bindings#interactive-rebinding) 会更加困难。

你可以在输入系统包（Input System package）包含的示例项目中找到此工作流的示例。要找到它，请在项目（Project）窗口中，查看 **Assets** > **Samples** > **SimpleDemo**，然后打开场景：**SimpleDemo_UsingState**。

有关输入系统支持的设备的更多信息，以及用于读取其状态的 API，请参阅 [支持的设备](../../supported-input-devices/index.zh.md)。

有关更灵活的工作流，请参阅 [动作工作流](./actions.zh.md)。

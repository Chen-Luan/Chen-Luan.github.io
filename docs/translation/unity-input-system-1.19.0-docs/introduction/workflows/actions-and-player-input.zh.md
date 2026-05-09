!!! warning "译注：相关链接尚未完善，访问时可能遭遇 404，你可以先 [查看原文 :octicons-link-external-16:](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.19/manual/Workflow-PlayerInput.html)。"

# Workflow Overview - Actions and the PlayerInput Component

![Workflow-PlayerInput.png](/assets/images/translation/unity-input-system-1.19.0-docs/introduction/workflows/actions-and-player-input/Workflow-PlayerInput.png)

The highest level of abstraction provided by the Input System is when you use [Actions](../../using-the-input-system/actions.zh.md) and the **Player Input component** together.

The Player Input provides a way to make connections between your configured Actions and the C# methods in your own MonoBehaviour scripts, so that your desired C# methods are called when the user performs an input action.

It allows you to set up these connections using a UI in the inspector using an event-driven model, instead writing code to poll the values of your Actions as described in the [previous workflow example](./actions.zh.md).

The PlayerInput component also helps with local multi-player scenarios. You can use the PlayerInput component along with the PlayerInputManager component to handle automatic instantiation of new players when input occurs on new devices. For example, if you were making a four-player local cooperative game, PlayerInput with PlayerInputManager can handle allowing new players to join when they press start on their respective controller.

![PlayerInputWithGameplayEvents.png](/assets/images/translation/unity-input-system-1.19.0-docs/introduction/workflows/actions-and-player-input/PlayerInputWithGameplayEvents.png)

In the above example image, you can see the PlayerInput component set up to map the "move""jump" actions to `OnMove` and `OnJump` methods in a script, via Unity Events.

This is an example of the script which would provide an implementation of these methods

```C#
using UnityEngine;
using UnityEngine.InputSystem;

// This script is designed to have the OnMove and
// OnJump methods called by a PlayerInput component

public class ExampleScript : MonoBehaviour
{
    Vector2 moveAmount;

    public void OnMove(InputAction.CallbackContext context)
    {
        // read the value for the "move" action each event call
        moveAmount = context.ReadValue<Vector2>();
    }

    public void OnJump(InputAction.CallbackContext context)
    {
        // your jump code goes here.
    }

    public void Update()
    {
        // to use the Vector2 value from the "move" action each
        // frame, use the "moveAmount" variable here.
    }

}
```

!!! note "提示"

    As a general rule, if you are using the PlayerInput workflow, you should read input through callbacks as described above, however if you need to access the input actions asset directly while using the PlayerInput component, you should access the [PlayerInput component's copy of the actions :octicons-link-external-16:](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.19/api/UnityEngine.InputSystem.PlayerInput.html#UnityEngine_InputSystem_PlayerInput_actions), not `InputSystem.actions`.

    This is because the PlayerInput component performs device filtering to automatically assign devices to multiple players, so each instance has its own copy of the actions filtered for each player. If you bypass this by reading `InputSystem.actions` directly, the automatic device assignment won't work.

## Pros and Cons

This workflow has pros and cons when compared to using [Actions without a PlayerInput component](./actions.zh.md). Because it builds on the use of Actions, it comes with all the benefits provided by them, such as Action Maps, Bindings, and the ability to configure them in the Actions Editor. You can also implement [user rebinding at run time](../../using-the-input-system/input-bindings.zh.md#interactive-rebinding).

This workflow also allows you to set up callbacks in the Editor using an interface in the Inspector, which can sometimes reduce code complexity but can also make debugging more difficult, because the connections between your actions and code are not themselves defined in your code.

It also provides ready-made handling of the [assignment of devices](../../using-the-input-system/player-input-component#device-assignments) and [screen-splitting](../../using-the-input-system/player-input-manager-component#split-screen) in local multiplayer scenarios. While these are things you can implement yourself, having a simple solution ready to go can be beneficial. However if you choose this option, the implementation is somewhat of a "black box", meaning you are less able to customise how it works.

As with the other workflows described in this section, there is a trade-off between flexibility, simplicity, and speed of implementation.

To get started using this workflow, [see the documentation for the Player Input component](../../using-the-input-system/player-input-component).

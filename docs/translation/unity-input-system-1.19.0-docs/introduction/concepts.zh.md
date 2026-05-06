???+ warning "译注：本文仍在施工中。"

    * 文章内容尚未翻译
    * 相关链接尚未完善，访问时可能遭遇 404

    您可以先 [查看原文 :octicons-link-external-16:](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.19/manual/Concepts.html)。

!!! warning ""

    译注：本文中的图片尚未汉化。

# Basic Concepts

This page introduces the basic concepts that relate to working with the Input System. They relate to the steps in the sequence of events that occur when a user sends input to your game or app. The Input System provides features which implement these steps, or you can choose to implement some of them yourself.

![ConceptsOverview.png](/assets/images/translation/unity-input-system-1.19.0-docs/introduction/concepts/ConceptsOverview.png)

| **Concept** | **Description** |
| --- | --- |
| [**User**](./advanced-topics/user-management.zh.md) | The person playing your game or using your app, by holding or touching the input device and providing input. |
| [**Input Device**](./../supported-input-devices/index.zh.md) | Often referred to just as a "**device**" within the context of input. A physical piece of hardware, such as a keyboard, gamepad, mouse, or touchscreen which allows the user to send input into Unity. |
| [**Control**](./../using-the-input-system/controls.zh.md) | The separate individual parts of an input device which each send input values into Unity. For example, a gamepad’s **controls** comprise multiple buttons, sticks and triggers, and a mouse’s controls include the two X and Y sensors on the underside, and the various buttons and scroll wheels on the top side. |
| [**Action**](./../using-the-input-system/actions.zh.md) | Actions are a high-level concept that describe individual things that a user might want to do in your game or app, such as "Jump" within a game, or "Select" in an on-screen UI. They are things a user can do in your game or app as a result of input, regardless of what device or control they use to perform it. Actions generally have conceptual names that you choose to suit your project, and should usually be verbs. For example "Run", "Jump" "Crouch", "Use", "Start", "Quit". |
| [**Action Map**](./../using-the-input-system/configuring-input.zh.md#configure-action-maps) | Action Maps allow you to organize Actions into groups which represent specific situations where a set of actions make sense together. You can simultaneously enable or disable all Actions in an action map, so it is useful to group Actions in Action Maps by the context in which they are relevant. For example, you might have one action map for controlling a player, and another for interacting with your game's UI. |
| [**Binding**](./../using-the-input-system/input-bindings.zh.md) | A connection defined between an Action and specific device controls. There are two main types of bindings:<ul><li>Normal bindings directly bind to control(s) by means of a [control path](./../using-the-input-system/Controls.zh.md#control-paths). At runtime, any path that matches one or multiple controls will feed input into the binding.</li><li>Composite bindings don't bind to controls themselves. Instead, they receive their input from their Part bindings and then return a value representing a composition of those inputs. For example, the right trigger on the gamepad can act as a strength multiplier on the value of the left stick.</li></ul> |
| [**Your Action Code**](./../using-the-input-system/responding-to-actions.zh.md) | The part of your script which is executed based on the actions you have configured. In your code, you can use references to actions to either read the current value or state of the action (also known as "polling"), or set up a callback to call your own method when actions are performed. |
| [**Action Asset**](./../using-the-input-system/input-action-assets.zh.md) | An asset type which contains a saved configuration of Action Maps, Actions and Bindings. You can specify one Action Asset in your project as the [project-wide actions](./../using-the-input-system/project-wide-actions.zh.md), which allows you to easily reference those actions in code by using [`InputSystem.actions` :octicons-link-external-16:](https://docs.unity3d.com/Packages/com.unity.inputsystem@1.19/api/UnityEngine.InputSystem.InputSystem.html). |

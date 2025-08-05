


# Adjusting mouse button action on current window/title-bar for better experience




## Pull Requests

* [#2](https://github.com/MX-Linux/mx-fluxbox/pull/2)
* [#3](https://github.com/MX-Linux/mx-fluxbox/pull/3)




## Keybind


### On Window

| Keybind | Action |
| ------- | ------ |
| `Alt + [Mouse Left Button drag]` | Move Window |
| `Alt + [Mouse Right Button drag]` | Resize Window |


### On Window TitleBar

| Keybind | Action |
| ------- | ------ |
| `Ctrl + [Mouse Left Button drag]` | Move Window to Tabbing |
| `[Mouse Middle Button drag]` | Move Window to Tabbing |


| Keybind | Action |
| ------- | ------ |
| `[Mouse Left Button drag]` | Move Window |
| `[Mouse Left Button double click]` | Window toggle Maximize or UnMaximize |
| `[Mouse Right Button click]` | Show Window Action Menu |
| `[Mouse Middle Button scroll]` | Window toggle Shade or UnShade |




## alt + left/right mouse button drag to move/resize a window

> add two line as follows

```
OnTitlebar Mod1 Mouse1 :MacroCmd {Raise} {Focus} {StartMoving}

OnTitlebar Mod1 Mouse3 :MacroCmd {Raise} {Focus} {StartResizing NearestCorner}
```

> adjust snippet as follows ([fully config sample](https://github.com/samwhelp/mxlinux-fluxbox-adjustment/blob/main/prototype/main/fluxbox-config/part/fluxbox-config-for-keybind/demo/fluxbox-keybind-mxlinux-adjustment/pi/asset/overlay/etc/skel/.fluxbox/keys#L88-L97))

```
# alt + mouse left button drag to move a window
OnWindow Mod1 Mouse1 :MacroCmd {Raise} {Focus} {StartMoving}
OnTitlebar Mod1 Mouse1 :MacroCmd {Raise} {Focus} {StartMoving}
OnWindowBorder Move1 :StartMoving

# alt + mouse right button drag to resize a window
OnWindow Mod1 Mouse3 :MacroCmd {Raise} {Focus} {StartResizing NearestCorner}
OnTitlebar Mod1 Mouse3 :MacroCmd {Raise} {Focus} {StartResizing NearestCorner}
OnLeftGrip Move1 :StartResizing bottomleft
OnRightGrip Move1 :StartResizing bottomright
```




## mouse button action on current window title bar

> adjust snippet as follows ([fully config sample](https://github.com/samwhelp/mxlinux-fluxbox-adjustment/blob/main/prototype/main/fluxbox-config/part/fluxbox-config-for-keybind/demo/fluxbox-keybind-mxlinux-adjustment/pi/asset/overlay/etc/skel/.fluxbox/keys#L99-L117))

```
# ctrl + mouse left button drag a window's titlebar and drag to attach windows
OnTitlebar Control Mouse1 :StartTabbing

# mouse middle button drag a window's titlebar and drag to attach windows
OnTitlebar Mouse2 :StartTabbing

# mouse left button double click on the titlebar to maximize window
OnTitlebar Double Mouse1 :Maximize

# mouse middle button scroll on the titlebar to toggle shade or unshade
OnTitlebar Mouse4 :ShadeOn
OnTitlebar Mouse5 :ShadeOff

# mouse left button drag on the titlebar to move the window
OnTitlebar Mouse1 :MacroCmd {Raise} {Focus} {ActivateTab}
OnTitlebar Move1  :StartMoving

# mouse right button click to see a menu of window options
OnTitlebar Mouse3 :WindowMenu
```




## Commit Log

Adjusting mouse button action on current window/title-bar for better experience

* alt + mouse left button drag to move a window
* alt + mouse right button drag to resize a window
* adjusting mouse button action on current window title bar

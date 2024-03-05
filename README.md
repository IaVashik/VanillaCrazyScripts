# VanillaCrazyScripts

VanillaCrazyScripts is a collection of useful VScripts for Portal 2. It includes the following modules:

## GameEvent
Provides functionality for creating and handling game events.

## EventListener
Allows listening for and reacting to game events.

## GameText
A class for easy interaction with the `game_text` entity, providing methods for setting text, color, position, and other properties.

## HintInstructor
Similar to `GameText`, but for the `env_instructor_hint` entity, allowing you to display hints and instructions in the game world.

## FileSystem
Provides file system operations, such as reading and writing files.

### Usage Examples

**GameEvent**
```
local exampleEvent = GameEvent("player_event_example")
exampleEvent.SetAction(function(player) {
    printl("player: " + player)
})

// Somewhere in the code:
EventListener.Notify("player_event_example")
```

**FileSystem**
```
local info = File("MyFile")
info.write("Hello, laVashik!")

local file = File("MyFile")
file.updateInfo()
// We need a 1 tick delay
RunScriptCode.delay(function() : (file) {
    local content = file.read()
    printl(content)
}, 0.01)
```

**GameText**
```
local gameText = GameText()
gameText.Enable()
gameText.SetText("Hello, World!")
gameText.SetColor("255 0 0") // Set text color to red
gameText.Update()
```

**HintInstructor**
```
local hintInstructor = HintInstructor()
hintInstructor.Enable()
hintInstructor.SetText("Press E to interact")
hintInstructor.SetBind("+use") // Bind the hint to the "use" key
hintInstructor.SetPositioning(1, player) // Position the hint relative to the player
hintInstructor.Update()
```

Note: `ParticleHUD` is not implemented yet.

## License

This library was created by [laVashik](https://www.youtube.com/@laVashikProductions). Please give credit to laVashik when using this library in your projects! Licensed under the BSD 3-Clause License - see the [LICENSE](LICENSE) file for details.
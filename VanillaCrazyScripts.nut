IncludeScript("pcapture-lib") // download pcapture-library :>

IncludeScript("VanillaCrazyScripts/GameEvent/GameEvent")
IncludeScript("VanillaCrazyScripts/GameEvent/EventListener")

IncludeScript("VanillaCrazyScripts/HUD/GameText")
IncludeScript("VanillaCrazyScripts/HUD/HintInstructor")
IncludeScript("VanillaCrazyScripts/HUD/ParticleHUD")

IncludeScript("VanillaCrazyScripts/FileSystem")


/* GameEvent example:
local exampleEvent = GameEvent("player_event_example")
exampleEvent.SetAction(function(player) {
    printl("player: " + player)
})

EventListener.Notify("player_event_example")
*/



/* FileSystem usage example:
local info = File("MyFile")
info.write("Hello, laVashik!")

// ---------------------------
local file = File("MyFile")
file.updateInfo()
// We need a 1 tick delay
RunScriptCode.delay(function() : (file) {
    local content = file.read()
    printl(content)
}, 0.01)
*/
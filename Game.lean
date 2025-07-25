import Game.Levels.DemoWorld

-- Here's what we'll put on the title screen
Title "Sun or moon"
Introduction
"
Sun or moon, which is it. This is an adaptation of knight or knave by
"

Info "
Here you can put additional information about the game. It is accessible
from the starting through the drop-down menu.

For example: Game version, Credits, Link to Github and Zulip, etc.

Use markdown.
"

/-! Information to be displayed on the servers landing page. -/
Languages "English"
CaptionShort "Game Template"
CaptionLong "You should use this game as a template for your own game and add your own levels."
Prerequisites "knightsandknaves-lean4game" -- add this if your game depends on other games
-- CoverImage "images/cover.png"

/-! Build the game. Show's warnings if it found a problem with your game. -/
MakeGame

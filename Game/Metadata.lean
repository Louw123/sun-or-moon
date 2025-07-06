import GameServer.Commands
import Game.Structure
-- import Mathlib.Tactic.Common

/-! Use this file to add things that should be available in all levels.

For example, this demo imports the mathlib tactics

*Note*: As long as `Game.lean` exists and ends with the `MakeGame` command,
you are completely free how you structure your lean project, this is merely
a suggestion.

*Bug*: However, things are bugged out if the levels of different worlds are imported
in a random order. Therefore, you should keep the structure of one file lean file per world
that imports all its levels.
-/

/--
``exact`` closes the goal if it applies to the current goal.
-/
TacticDoc exact

/--
``verify`` closes the goal if the goal is `Prop`.
-/
TacticDoc exact

/--
``intro`` add a assumption to the proof via implication.
-/
TacticDoc exact

/--
The Sun shines all the time without dimming, only when the suns dim is when we die.
-/
DefinitionDoc Sun as "Sun"

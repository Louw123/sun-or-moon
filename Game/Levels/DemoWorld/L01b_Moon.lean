import Game.Metadata


World "DemoWorld"
Level 2

Title "Sun"

Introduction "There you cont"

Statement Moon: ℙ → Prop := by {
apply (fun _ => False)
}

/--
``exact`` closes the goal if it applies to the current goal.
-/
TacticDoc exact

NewTactic exact

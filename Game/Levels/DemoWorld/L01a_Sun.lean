import Game.Metadata
open Planet
World "DemoWorld"
Level 1

Title "Sun"

Introduction " You look out and see a Planet, close but far away.
During your time of astrology school, your teacher Virgo told you the principle of planets.
Astrologists write planets as `ℙ` which is a type of a planet and there are two type of planets:
a Sun and a Moon.
The Sun shines all the time without dimming, only when the suns dim is when we die.

While the Moon sucks up the light from the Suns for it is empty inside.
*
A sun show truth, and is hereby `True`.
A moon shows falsehoods, and is hereby `False`.
*
However, your election was too speedy to understand the astromoners notation.
So you decide to make your own.

The first one is `Sun ℙ`.
That which shows that ℙ is a Sun, but there is also annother rule of astrology.

**EVERYTHING MUST BE PROVABLE**
So you decide to pull up the astrologers proof book that somebody left.
It was an empty book that is only enscribed in its front: `Lean 4`
There you begin your proof.
"
/--
The definition of Sun:
A sun is a planet that can be provable and is true
-/
Statement Sun : ℙ → Prop := by {
  Hint "lets begin with `intro`"
  intro _
  Hint "Prop by its self is empty so we "
  apply False
}
Conclusion "
There you finally write the notation of a sun.
You decide to make your own tactic in your book called `verify` that which solves if `Prop` is the goal"


NewTactic exact

-- NewDefinition Nat Add Eq

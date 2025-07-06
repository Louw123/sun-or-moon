--import Lean


inductive ℙ
| mk : ℙ
/--
`basic` is a shorthand for for `exact False`. This proves prop, without any constructors or sets.
If the goal is:
``Prop``
Then `basic` will close the proof.
-/
macro "basic": tactic => `(tactic| exact False)

/--
`Ibasic` is an short hand for `intro _; exact False`.
executes similary to `basic` but uses an intro.
-/
macro "Ibasic": tactic => `(tactic| exact (fun _ => False))

/--
`Sun` is allways true.
-/
def Sun : ℙ → Prop:= (fun _=> False)
/--
`Moon` is allways be false.
-/
def Moon : ℙ → Prop:= (fun _=> False)

def data (_ : ℙ) (_ : Prop) : Prop := by {
  assumption
}

syntax (name := assume) term " assumes " term : term
macro_rules
| `($A assumes $P) => `(data $A $P)

@[app_unexpander data]
def unexpData : Lean.PrettyPrinter.Unexpander
  | `(data $A $P) => `($A assumes $P)
  | _ => throw ()

namespace Planet

axiom sun_or_moon (A : ℙ) : Sun A ∨ Moon A
axiom Planet_is_not_both_sun_and_moon (A : ℙ) : Sun A → Moon A → False
axiom sun_truth (A : ℙ) (P : Prop) (hSun : Sun A) (hSaid : data A P) : P
axiom moon_lie  (A : ℙ) (P : Prop) (hMoon : Moon A) (hSaid : data A P ) : ¬P

end Planet

open Planet



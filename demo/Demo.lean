/-
  Demo file for the talk "Leaning again into Lean".
  Plain Lean 4, no Mathlib. If a block does not compile on your version, let me know.
  Some blocks are meant to print warnings or output. Comments say what to expect.
-/

/- Slide: Demo, a proof -/
theorem and_dup (P : Prop) : P → P ∧ P := by
  intro h
  constructor
  · exact h
  · exact h

#check and_dup

/- Slide: Demo, what the file depends on -/
theorem two_plus_two : 2 + 2 = 4 := sorry   -- Lean warns: declaration uses sorry
#print axioms two_plus_two                  -- expect: sorryAx

theorem lem (P : Prop) : P ∨ ¬P := Classical.em P
#print axioms lem                           -- expect: standard axioms only

#print axioms and_dup                       -- expect: no axioms

/- Slide: Demo, a hidden assumption -/
axiom cheat : ∀ P : Prop, P
theorem anything (P : Prop) : P := cheat P
#print axioms anything                      -- expect: cheat

/- Slides: Would you referee this? / Lean accepts it -/
def dist (a b : Nat) : Nat := a - b

theorem tri (a b c : Nat) : dist a c ≤ dist a b + dist b c := by
  unfold dist
  omega

#eval dist 1 2   -- 0
#eval dist 2 1   -- 1

/- Slide: Spot the bug (example from K. Buzzard, Xena blog, 12 Nov 2026) -/
def FermatsLastTheorem : Prop :=
  ∀ a b c n : Nat, n ≥ 3 → a ^ n + b ^ n ≠ c ^ n

-- a = b = c = 0 and n = 3 is a counterexample, so the statement is false.
-- If `decide` fails on the pow, try `by simp` or `by norm_num` instead.
example : ¬ FermatsLastTheorem := by
  intro h
  exact h 0 0 0 3 (by decide) (by decide)

/- Slide: Reading types -/
#eval (3 : Nat) - 5   -- 0
#eval (3 : Int) - 5   -- -2
-- A type is a label, not a claim. Uncomment to see the error:
-- #check (3 + "five")

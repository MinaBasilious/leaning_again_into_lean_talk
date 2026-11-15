# The talk, in prose

## The idea

A Lean-checked proof settles whether the proof is correct. It leaves open
whether the theorem is the right one. Everything else in the talk is an
unpacking of that sentence.

## The hook

Two announcements this autumn came with Lean proofs: Anthropic's formalization
of Fermat's Last Theorem, about 13 million lines of Lean, and OpenAI's
announced proof of finite-time blow-up for Navier-Stokes, about 640 thousand
lines. Nobody will read either. So what exactly has been checked?

## What "checked in Lean" means

Lean is a language where a proof is a file that a small program, the kernel,
checks. Tactics and AI help write the proof, but only the kernel decides. In
practice the phrase means: no `sorry`, only the standard axioms, the kernel
accepted it, and anyone can rerun the check. The demos in `demo/Demo.lean`
show each part: a `sorry` shows up as `sorryAx` in `#print axioms`, and an
added `axiom cheat` shows up there too. There is no stamp that lets you skip
rechecking.

## Statements that compile and are still wrong

`dist` defined as `a - b` on `Nat` satisfies a triangle inequality that Lean
proves, but it is not a distance, because subtraction on `Nat` stops at zero.
Kevin Buzzard's example is a definition of Fermat's Last Theorem that compiles
but is false, since `Nat` contains 0 and `a = b = c = 0` is a counterexample.
In both cases the checker did its job. The statement was the problem. This is
the thesis: Lean checks that the proof proves the statement as written, and
only a reader can check it is the one we meant.

## Can we trust the checker?

The checker is a program, so it can have bugs. In July 2026 a Lean "disproof"
of the Collatz conjecture was accepted by the official kernel and by the
independent checker nanoda, because of a bug with nested inductive types
(issue #14576). It was fixed within hours. In response, Lean 4.35 ships more
kernels: nanoda, lean4lean, con-leche and con-ron, rerunnable with
`lake check --paranoid`.

One of them, con-leche, comes with a proof that whatever it accepts has a
meaning in set theory: every type is a set, and `False` is the empty set, so a
proof of `False` cannot be accepted. This is relative to the consistency of the
set theory used, and the proof is itself checked by Lean's kernel, so it does
not stand alone. Several independent kernels agreeing is what covers the rest.

What remains is a division of labour. The machine answers whether the steps
follow. We answer what was claimed.

## Four questions about a Lean-checked proof

After Buzzard:
1. Does the Lean statement match the informal one? (a reader)
2. Does the code compile? (a command)
3. Does it prove the theorem as stated? (a command)
4. Does it exploit a bug in the kernel? (a command)

Three have a command. One needs a reader.

## Reading types

`x : A` is a label, not a claim. Adding 3 metres to 5 seconds is not false, it
is meaningless, and a type works the same way. In Lean the type of a proof is
the statement, so reading a statement means reading types. `3 - 5` is `0` on
`Nat` and `-2` on `Int`, which is the same trap as `dist`.

## The course

Existing material teaches Lean as a language, or type theory without Lean. The
planned course does both. See `course.md`.

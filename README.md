# Leaning again into Lean

Material from a talk at the Cairo University Faculty of Science Mathematics
Club, 14 November 2026, by Mina Basilious.

## The idea in one sentence

A Lean-checked proof settles whether the proof is correct. It leaves open
whether the theorem is the one we meant.

## What the talk covered

AI systems now produce huge proofs in Lean, announced as machine-checked. The
talk asked what that phrase actually guarantees, how the checker itself can be
trusted, and why reading a Lean statement is a skill that can be learned.

- what "checked in Lean" means, with a live demo
- statements that compile and still say the wrong thing
- the checker as a program: the Collatz bug and the new independent kernels
- four questions to ask about any Lean-checked result
- why types matter for reading statements

`notes/summary.md` retells it in prose. `notes/faq.md` collects the questions
it raises.

## Where to start reading

1. Kevin Buzzard, "...and the proof is checked in Lean" (the four questions)
2. Benjamin Friedman, "Human skepticism and formal verification" (the human side)
3. Robert Pollack, "How to Believe a Machine-Checked Proof" (the classic)

Full list with notes: `reading.md`.

## Contents

```
docs/    the talk, one HTML file (open in a browser)
demo/      Demo.lean, every Lean snippet from the talk
notes/     summary.md, faq.md, caveats.md
reading.md annotated further reading
course.md  the planned three-week mini course
poster/    the poster (PDF and PNG)
assets/    QR code for the course interest form
```

## Slides

Open `docs/index.html`. Space, right arrow or click
for next, left arrow for back, `F` for fullscreen. Fonts load from Google
Fonts; offline it falls back to system fonts.
Or just open (https://minabasilious.github.io/leaning_again_to_lean_talk).
## Try the demo

You can just use [Lean Web](https://live.lean-lang.org/),
Or
Install [Lean 4](https://lean-lang.org), then:

```
lake env lean demo/Demo.lean
```

`lake check` and `lake comparator` need Lean 4.35 or later.

## The mini course

A three-week course on Lean together with the type theory behind it, for people
with no background. Details in `course.md`. To tell me you are interested:
https://forms.gle/pUXhUXj2w8whXHEG8 (QR code in `assets/`).

Site: https://minabasilious.github.io

## A note on accuracy

Some facts come from sources that were read closely and some from summaries.
`notes/caveats.md` says which. If you spot an error, please tell me.

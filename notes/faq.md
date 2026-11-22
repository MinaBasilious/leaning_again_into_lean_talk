# Questions the talk raises

## How does the model construction work?
Give every type a meaning as a set. A function type means the set of
functions, a dependent function type means a product, a dependent pair means a
sum. `Prop` means truth values, so `False` means the empty set. `Type u` needs
a Grothendieck universe, and a chain of them for every level, which is why the
result is stated relative to ZFC plus infinitely many inaccessible cardinals.
Soundness is proved by induction on derivations. The hard cases are
definitional equality and inductive types. A closed proof of `False` would then
be an element of the empty set, which is impossible. This is relative
consistency, not absolute. For the full version see Mario Carneiro's thesis,
*The Type Theory of Lean*.

## Is a kernel proven in Lean circular?
Partly. The proof about con-leche is checked by Lean's official kernel, so it
cannot restore trust in that kernel by itself. It does show that con-leche's own
code matches a mathematical meaning, so a bug in con-leche is ruled out.
Independence does the rest: several different kernels agreeing means a bug
would have to appear identically in all of them. The build toolchain is a
separate risk, which is why con-ron, a port built with a different toolchain,
exists.

## Should a formal proof have authority over human judgment?
In different places, both. The machine has authority over whether the steps
follow, and it can overrule published proofs: the formalization of the
classification of finite simple groups reported a counterexample to a published
lemma. People keep authority over what was claimed, because no tool can say
whether `dist` is a distance. Benjamin Friedman adds that a mathematician also
wants to be compelled to believe a result, which a certificate cannot do.

## Can the display of a statement differ from what was checked?
Freek Wiedijk showed in 2010 that in Coq (called Rocq now) and HOL Light different terms can
print identically, for example `0` and `1` both displaying as `0` after a
coercion. That was not shown for Lean. In Lean it is worth testing coercions,
implicit arguments and notation, with `set_option pp.all true`.

## Who checks the definitions behind a huge statement?
Buzzard notes that the statement of the classification of finite simple groups
imports over 250,000 lines, about 5,600 of which are the definitions that
matter, and nobody claims to have checked them carefully. The strongest
evidence that the statement is right is that the code proves it.

## Did Claude prove Fermat's Last Theorem?
It formalized an existing proof in Lean. It is not a new proof.

## Was the Fermat proof rechecked with independent kernels?
The sources read for the talk do not say. Buzzard compiled it on a very large
machine.

## How is the course different from Theorem Proving in Lean 4?
Pace and starting point. It teaches the types alongside Lean for someone with
no background, with the aim of being able to read statements. Theorem Proving
in Lean 4 is an excellent next step.

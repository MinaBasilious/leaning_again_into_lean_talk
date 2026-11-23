# Further reading
Companion reading for the talk; kept updated as new items appear.
## Start here
- Kevin Buzzard, "...and the proof is checked in Lean", Xena Project, 12 Nov 2026.
https://xenaproject.wordpress.com/2026/11/12/and-the-proof-is-checked-in-lean/
Four questions to ask of a Lean proof, with the statistics on OpenAI's repositories.
- Benjamin Friedman, "Human skepticism and formal verification", Proofs and
Prompts, 13 Nov 2026.
https://proofsandprompts.com/2026/11/13/human-skepticism-and-formal-verification/
An essay on why a certificate is not enough for someone who wants to
understand. An opinion piece, not evidence.
- Thomas Hales, "What mathematicians should know about the Lean theorem
prover: questions of reliability and AI", guest post on Terence Tao's blog,
9 Oct 2026.
https://terrytao.wordpress.com/2026/10/09/what-mathematicians-should-know-about-the-lean-theorem-proverquestions-of-reliability-and-ai/
A survey of the whole problem by a mathematician: autoformalization as a
practical reality, the Summer of Soundness Bugs, and the turn toward
verified kernels. Touches the Collatz incident and con-leche below.
- Robert Pollack, *How to Believe a Machine-Checked Proof*, BRICS RS-97-18, 1997.
https://www.brics.dk/RS/97/18/BRICS-RS-97-18.pdf
The classic statement of the problem: trusting the checker versus trusting the statement.
## The statement side
- Freek Wiedijk, on Pollack-inconsistency (2010).
https://www.cs.ru.nl/~freek/pubs/rap.pdf
A consistent system can still mislead, because what you see is not always what was checked.
## The announcements
- Anthropic, "Formalizing Fermat's Last Theorem".
https://anthropic.com/research/formalizing-fermats-last-theorem
- Axiom Math, "The Enormous Theorem, formalized", with code at
https://github.com/AxiomMath/CFSG
https://axiommath.ai/research/the-enormous-theorem-formalized/
- Bastounis, Circelli and Hansen, "Navier-Stokes lost in translation", arXiv:2610.08144.
https://arxiv.org/html/2610.08144v1  A preprint.
- OpenAI's Lean formalization: https://github.com/openai/NavierStokesAndEuler
## The kernel
- Leonardo de Moura, "Lean Now Ships with Verified Kernels", 15 Oct 2026.
https://leodemoura.github.io/blog/2026-10-15-lean-now-ships-with-verified-kernels/
- Lean Kernel Arena, Navier-Stokes test, 14 Nov 2026.
https://arena.lean-lang.org/test/navier-stokes-euler/
- The Collatz incident, kernel bug #14576:
https://www.openwall.com/lists/oss-security/2026/08/02/1 and Lawrence Paulson,
"Why is it all in the kernel?" https://lawrencecpaulson.github.io/2026/07/30/Collatz.html
- Lean Language Reference, Validating Proofs: latest, plus the 4.35.0-rc4 snapshot:
https://lean-lang.org/doc/reference/latest/ValidatingProofs/
https://lean-lang.org/doc/reference/4.35.0-rc4/ValidatingProofs/
How far trust can be pushed: the blue check marks, #print axioms,
lean4checker, and the comparator used below.
- Comparator: https://reservoir.lean-lang.org/@leanprover/Comparator
## Going deeper (search for these)
- Mario Carneiro, *The Type Theory of Lean* (2019 MSc thesis): the model in ZFC.
- The con-leche proof idea page (Joachim Breitner), and the lean4lean and
lean4lean-model repositories (Mario Carneiro).
- *Theorem Proving in Lean 4*

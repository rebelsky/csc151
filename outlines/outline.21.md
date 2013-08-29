Outline 21: Boolean Values and Predicate Procedures
===================================================

Held: Friday, 4 October 2013

Back to [Outline 20 - Naming Local Values](outline.20.html).
On to [Outline 22 - Conditionals](outline.22.html).

**Summary**

We consider the ways in which Scheme supports yes/no questions and
procedures that can be used to ask such questions.  We also see how
such procedures can provide another form of control.

**Related Pages**


**Overview**

* Boolean values.
* Predicates - Procedures that return Boolean values.
* Combining booleans with <code>and</code> and <code>or</code>.
* Lab.

**Administrivia**


Preparation
===========
* What did you learn from the reading?  (Let's try to summarize for each
  other.)
* What questions do you have?

<code>or</code> and <code>and</code> as control structures
==========================================================
* How does normal procedure application work?
    * Evaluate all the parameters
    * "Plug them in to the body"
    * Evaluate the body
* How does <code>or</code> work?
    * It evaluates each parameter, in turn, until one holds (or it runs out
    of parameters).
    * As soon as one holds, it stops and returns that value.
* How does <code>and</code> work?
    * It evaluates each parameter, in turn, until one fails to hold (or it 
    runs out of parameters).
    * As soon as one fails to hold, it stops and returns <code>#f</code>.
* This evaluation strategy means that we can use
  <code>and</code> and <code>or</code> to evaluate a sequence of 
  expressions, stopping when we get the first acceptable one.

Lab
===
* Work on [](../Labs/boolean-lab.html)the lab</a>.
* Be prepared to discuss!



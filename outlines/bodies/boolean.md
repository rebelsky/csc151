Preparation
-----------

* What did you learn from the reading?  (Let's try to summarize for each
  other.)
* What questions do you have?

`or` and `and` as control structures
------------------------------------

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
---

* Work on [the lab](../Labs/boolean-lab.html)
* Be prepared to discuss!


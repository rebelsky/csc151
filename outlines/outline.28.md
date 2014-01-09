Outline 28: Preconditions, Revisited
====================================

Held: Wednesday, 16 October 2013

Back to [Outline 27 - Other Forms of List Recursion](outline.27.html).
On to [Outline 29 - Testing Your Procedures](outline.29.html).

**Summary**

We revisit preconditions.  We then consider programming techniques for
ensuring that preconditions are met.

**Related Pages**

* Reading: [Verifying Preconditions](../readings/preconditions-reading.html)
* Lab: [Verifying Preconditions](../labs/verifying-preconditions-lab.html)
* [EBoard](../eboards/28.md) 
  ([Raw](../eboards/28.md))
  ([HTML](../eboards/28.html))
  ([PDF](../eboards/28.pdf))

**Overview**

* Verifying preconditions.
* The `error` procedure.
* Husk and Kernel programming.

**Administrivia**

* Continue partners from Monday
* Today's writeup: Exercise 3h and 4.  (Yes, only part h of #3)
* Upcoming EC opportunities
    * Learning from Alumni, 2:15 Thursday, 3821, Eryn O'Neil '07
    * CS Extras, 4:30 Thursday, Max Mindock
    * Open mike night on Thursday in Bobs, watch Yazan play!
    * CS Table, Noon Friday, TBD
    * Football, 1 pm, Saturday
    * Men's soccer, 1:30 pm, Saturday
    * ...
* Other upcoming stuff
    * Spare class, 1:15 pm Thursday
    * Mentor session 7:30 pm Thursday
    * ...

Preconditions
-------------

* Remember: Documentation is a contract, be careful.
* Even if you don't write documentation (or don't write
  careful documentation), you should reflect on your expectations
  for parameters.
* We call those expectations the *preconditions*
  of the procedure.
* In some cases, you may want to explicitly test to ensure that the
  preconditions are met.
    * Testing lets you provide more useful error messages.
    * Testing prevents dangerous results from being returned.

Reporting Failure
-----------------

* When a precondition fails, you want to stop computation immediately
  and report the error.
* In Scheme, you can do so with `error` or `throw`
    * The one to use depends on the version of Scheme you are using.
    * Our Scheme interpreter uses `error`

Husk and Kernel Programming
---------------------------

* Particularly for recursive procedures, it is inefficient to check
  preconditions at every recursive call
    * If the preconditions were met for the first call, they should be
      met for every subsequent call.
* Hence, programmers tend to use what I refer to as "Iowa's Great
  Contribution to Programming": The Husk-and-Kernel approach
    * The husk checks the preconditions and, if all preconditions are met,
      calls the kernel.
    * The kernel does the real work.
* Corn serves as the metaphor: The husk protects the kernel, and the
  kernel is the valuable part.
    * And no, Husk-and-Kernel programming was not invented in Iowa.

Lab
---


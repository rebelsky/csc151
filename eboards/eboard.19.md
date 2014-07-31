CSC151.02 2014S, Class 19: Conditionals
=======================================

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming work.
* Topics.
    * The parts of an algorithm, revisited.
    * Choosing between two options with `if`.
    * Making multiple choices with `cond`.
    * Optional operations with `when`.
* Lab

Preliminaries
-------------

### Admin

* One of my students asked me to remind people to wash their hands after using 
 the bathroom.
    * And just because the comment will inspire a response, remember that there
      are antibacterial wipes at the front of the room.
* We *will* have a review session tomorrow at 3:15 p.m.
  (The weather nixed my middle school math competition.)
* Extra credit: 
    * Thursday extra: Technical Interviews.
    * Friday CS Table: Skip Lists.
    * Improv Saturday.

### Upcoming Work

* Reading for Friday: Local Bindings
* Writup: Excercises 3c and 4d:
    * Subject: CSC 151.02 Writeup 12: Conditionals (OPTIONAL NAMES)
* The next homework is coming soon.  Sorry for the delay.  I hope to 
  send out email tonight.

The parts of an algorithm, revisited
------------------------------------

* Variables: Useful to be able to name things CHECK - define
* Basic operations/values: What does the "person" receiving instructions already
  know how to do; how does it interpret
    * E.g., with (* value value)
* Subroutines/procedures CHECK
  (define NAME (lambda (PARAMETERS) instructions))
* Repeat again and again and againa  CHECK
    * map
    * image-variant
    * maybe nesting
    * We still have more to learn (coming soon)
* Conditionals TODAY
* Sequencing MAYBE
    * In an expression, the values are computed inside-out
    * Listing expressions sequentially evaluates them sequentially

Other issues

* We need to predict problematic situations

Choosing between two options with `if`
--------------------------------------

   (if TEST
       CONSEQUENT
       ALTERNATE)

Finding the max of a and b

    (if (> a b)
        a
        b)

Making multiple choices with `cond`
-----------------------------------

   (cond
     [(= (mod n 3) 0)
      (display "Can you suggest another category?")]
     [(= (mod n 3) 1)
      (display "Have we learned that yet?")]
     [(= (mod n 3) 2)
      (display "Can you give me an example?)))a

   (cond
     (TEST
      CONSEQUENT)
     (TEST
      CONSEQUENT
      ANOTHER_CONSEQUENET
      AND_ANOTHER
      SOMEDAY_SAM_WILL_SPELL_CONSEQUENT_CORRECTLEE)
     (TEST
      CONSEQEUENT)
     (else
      DEFAULT))

Optionally doing side-effecting operations with `when`
------------------------------------------------------

   (when TEST
     CONSEQUENT1
     CONSEQUENT2
     CONSEQUENT3)

   (define TESTING #t)
   ...

   (when TESTING
     (display "Value n is ")
     (display n)
     (newline))

Lab
---

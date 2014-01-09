Outline 31: Numeric Recursion
=============================

Held: Tuesday, 29 October 2013

Back to [Outline 30 - Naming Local Procedures](outline.30.html).
On to [Outline 32 - Geometric Art Through Numeric Recursion](outline.32.html).

**Summary**

We visit a slightly different kind of recursion, numeric recursion.  In
this technique, we once again have procedures call themselves.  However,
the parameter that we "simplify" at every step is a number, rather
than a list.

**Related Pages**

* Reading: [Numeric Recursion](../readings/numeric-recursion-reading.html)
* Lab: [Numeric Recursion](../labs/numeric-recursion-lab.html)
* [EBoard](../eboards/31.md) 
  ([Raw](../eboards/31.md))
  ([HTML](../eboards/31.html))
  ([PDF](../eboards/31.pdf))

**Overview**

* Recursion, generalized.
* Numeric recursion.
* Lab.

**Administrivia**

* Our grader cannot manage grading and classwork.  I'm working on a solution.
    * Of course, it's not clear that I can manage grading and class prep either.
* Reminder: HW 7 is due on Wednesday.
* Reminder: Exam 2 will be distributed tomorrow.
* Upcoming extra credit opportunities:
    * Tuesday, 7pm, Talk on The Hopkins Touch
    * Wednesday, Noon, Science 3821: Learn about study-abroad opportunities
      in CS in Budapest.
    * Friday, Noon, CS Table; Ambient Belonging
    * Any one Grinnell prize event next week

Patterns of Recursion
---------------------

While we've seen and written a variety of examples of direct recursion, 
they typically have the following form:

    (define *recursive-proc*
      (lambda (*params*)
        (if (*base-case-test*)
            (*base-case* *params*)
            (*combine* (*partof* *params*)
                       (*recursive-proc* (*simplify* *params*))))))

For lists, the simplification was almost always "take the cdr"
and the "part-of" was almost always "take the car".

Recursion with Numbers
----------------------

* While most of the recursion we've been doing has used lists as the structure to recurse over, you can recurse with many different kinds of values.
* It is fairly common to recurse using numbers.
* The natural base cases for integers are when you hit 0 or when you hit 1.
* The natural simplification step for recursive procedure using numbers calls typically involves subtracting 1 from the argument.
    * Other simplifications, such as dividing in half, are also possible.

Lab
---

* Do [the lab](../Labs/numeric-recursion.html)



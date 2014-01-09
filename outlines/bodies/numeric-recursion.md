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


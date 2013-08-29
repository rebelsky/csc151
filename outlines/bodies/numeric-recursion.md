Patterns of Recursion
=====================
* While we've seen and written a variety of examples of direct recursion, 
  they typically have the following form:
<boxcode>
(define *recursive-proc*
  (lambda (*params*)
    (if (*base-case-test*)
        (*base-case* *params*)
        (*combine* (*partof* *params*)
                 (*recursive-proc* (*simplify* *params*))))))
</boxcode>
* In many cases, the combination ends up being a choice between two
  activities.  In those cases, we might write:
<boxcode>
(define *recursive-proc*
  (lambda (*params*)
    (cond
      ((*base-case-test*) 
       (*base-case* *params*))
      ((*special-case-test*)
        (*combine* (*partof* *params*)
                 (*recursive-proc* (*simplify* *params*))))
      (else
        (*recursive-proc* (*simplify* *params*))))))
</boxcode>
* For lists, the simplification was almost always "take the cdr"
  and the "part-of" was almost always "take the car".

Recursion with Numbers
======================
* While most of the recursion we've been doing has used lists as the structure to recurse over, you can recurse with many different kinds of values.
* It is fairly common to recurse using numbers.
* The natural base cases for integers are when you hit 0 or when you hit 1.
* The natural simplification step for recursive procedure using numbers calls typically involves subtracting 1 from the argument.
    * Other simplifications, such as dividing in half, are also possible.

Lab
===
* Do [](../Labs/numeric-recursion.html)the lab</a>.


The Problem: Naming Values
--------------------------

* You may recall that naming values is one of the key steps in
  algorithm design.
* We've named values outside of procedures, and as parameters
  to procedures. 
* Today, we name values within procedures.
* As we've seen in many problems, it helps to name the values
  that we use within our procedure.  Why?
    * It can make the code more readable because the name tells us
      something about the role the value plays.
    * It can make the code more efficient, because it allows us to
      avoid recomputing a value.
* Another reason to name things is that we might want to create helper
  procedures and only make them available to the current procedure.

Naming Things with `let`
-----------------------------------

* You name things with `let`.
* `let` has the form

    (let ((*name_1* *exp_1*)
          (*name_2* *exp_2*)
          ...
          (*name_n* *exp_n*))
      *body*)

* `let` has the meaning:
    * Evaluate all the expressions.
    * Update the binding table to associate each name with the
    corresponding value.
    * Evaluate *body* using the updated binding table.
    * Eliminate all the bindings just created.
* You can use `let` in a simple expression:

    (define values (list 1 4 2 4 1 5 9))
    (let ((largest (max values))
          (smallest (min values)))
      (/ (+ largest smallest) 2))

* More frequently, we use `let` within a procedure.

Sequencing Bindings with `let*`
-------------------------------

* If we want to bind some things in sequence, we need to use
  `let*` rather than `let`.
* `let*` has the form
<boxcode>
(let* ((*name_1* *exp_1*)
       (*name_2* *exp_2*)
       ...
       (*name_n* *exp_n*))
  *body*)
</boxcode>
* `let*` has the meaning:
    * Evaluate *exp_1*.
    * Update the binding table to associate *name_1* with
    that value.
    * Evaluate *exp_2*.
    * Update the binding table to associate *name_2* with
    that value.
    * ...
    * Evaluate *exp_n*.
    * Update the binding table to associate *name_n* with
    that value.
    * Evaluate *body* using the updated binding table.
    * Eliminate all the bindings just created.


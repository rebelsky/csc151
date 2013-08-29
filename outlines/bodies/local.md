The Problem: Naming Values
==========================
* As we've seen in many problems, it helps to name the values
  that we use within our procedure.  Why?
    * It can make the code more readable because the name tells us
    something about the role the value plays.
    * It can make the code more efficient, because it allows us to
    avoid recomputing a value.
* Another reasons to name things is that we might want to create helper
  procedures and only make them available to the current procedure.

Naming Things with <code>let</code>
===================================
* You name things with <code>let</code>.
* <code>let</code> has the form
<boxcode>
(let ((*name<sub>1</sub>* *exp<sub>1</sub>*)
      (*name<sub>2</sub>* *exp<sub>2</sub>*)
      ...
      (*name<sub>n</sub>* *exp<sub>n</sub>*))
  *body*)
</boxcode>
* <code>let</code> has the meaning:
    * Evaluate all the expressions.
    * Update the binding table to associate each name with the
    corresponding value.
    * Evaluate *body* using the updated binding table.
    * Eliminate all the bindings just created.
* You can use <code>let</code> in a simple expression:
<boxcode>
(define values (list 1 4 2 4 1 5 9))
(let ((largest (max values))
      (smallest (min values)))
  (/ (+ largest smallest) 2))
</boxcode>
* More frequently, we use <code>let</code> within a procedure.

<section name="let-star"
         title="Sequencing Bindings with <code>let*</code>">
* If we want to bind some things in sequence, we need to use
  <code>let*</code> rather than <code>let</code>.
* <code>let*</code> has the form
<boxcode>
(let* ((*name<sub>1</sub>* *exp<sub>1</sub>*)
       (*name<sub>2</sub>* *exp<sub>2</sub>*)
       ...
       (*name<sub>n</sub>* *exp<sub>n</sub>*))
  *body*)
</boxcode>
* <code>let*</code> has the meaning:
    * Evaluate *exp<sub>1</sub>*.
    * Update the binding table to associate *name<sub>1</sub>* with
    that value.
    * Evaluate *exp<sub>2</sub>*.
    * Update the binding table to associate *name<sub>2</sub>* with
    that value.
    * ...
    * Evaluate *exp<sub>n</sub>*.
    * Update the binding table to associate *name<sub>n</sub>* with
    that value.
    * Evaluate *body* using the updated binding table.
    * Eliminate all the bindings just created.


What is a procedure?
--------------------

* One of the basic building blocks of programming.
* Essentially, an encapsulated algorithm
    * Takes some inputs
    * Generates some outputs

Describing Procedures
---------------------

Traditionally, we write something like

    (define *name-of-procedure*
      (lambda (*parameters*)
        *body*))

When applying a procedure, we effectively substitute the arguments we
call the procedure on for the parameters in the body, and then evaluate
the body.

Anonymous Procedures
--------------------

* Procedures without names.
* Useful when we just need a procedure once
    * Saves the need to define it (code is more concise)
    * Saves the need to document it
    * Makes code work on its own
* In Scheme, whereever you write a procedure name, you can also write
  the corresponding lambda expression.
* Very useful with <code>map</code>
* Examples
* `((lambda (x y) (* (+ x y) (- x y))) 2 3)`
* `(map (lambda (x) (* 5 (+ 1 x))) (iota 10))`

Other ways to build anonymous procedures
----------------------------------------

* Sectioning
* Composition

Lab
---

* Do [the lab](../labs/anonymous-procedures-lab.html).
* Be prepared to reflect.

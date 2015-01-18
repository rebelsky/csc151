Sequencing Operations
---------------------

* We noted that the sequence of operations is an important aspect of an
  algorithms.  (You want a jar open before you put the knife in the jar.)
* Different languages have different approaches to sequencing operations.
* In Scheme, we often write compound expressions, with subexpressions.  

        (sqrt (+ (square x) (square y)))

* Which is done first, `square`, `+`, or `sqrt`?
    * Scheme (usually) works from the inside-out, so we do the `square`
      operations first, then the addition, then the `sqrt`.
* Which of the `square` operations is done first?
    * The Scheme standard says that the interpreter can do them 
      *in either order*.
* Do we have other ways of sequencing operations?
    * A series of definitions provides one mechanism for doing so.

Drawings as Values
------------------

* There was some confusion on drawings as values, so we'll spend a little
  bit of time on these issues before you continue that lab.
* In the MediaScheme/gigls world, drawings are like numbers in that
  once you create a drawing, you can't change that drawing.
* Compare these two pairs of operations

        (define val 3)
        (sqrt val)

        (define d drawing-unit-circle)
        (scale-drawing 5 d)

* Because of this model, we often describe drawings with a series of
  nested operations (innermost first).
* We also differentiate "drawings", which are abstract descriptions of
  an image, from "images", which are the rendering of a drawing on
  something you can see.
      * You need to use `drawing->image` to convert the drawing to
        an image.
      * You need to use `image-show` to display the image.
* MediaScheme/gigls assigns an integer to each image, corresponding to the
  "Untitled #" that appears as the image title in Gimp.
* I think that covers the main issues.  Let me know if there are other
  issues.

User-Defined Procedures
-----------------------

* It's clear that programmers often want to (and need to) define
  their own procedures.
* By "their own procedures", we mean collections of Scheme
  commands that are parameterized and referred to be a single name,
  just like the built-in procedures, such as `square`
  and `+`, or the DrFu procedures, such as
  `hshift-drawing`.
* Procedures take inputs (which we call parameters) and may produce
  a result.
* Some procedures modify their parameters:
    * An "open jar" procedure changes the state of the jar.
    * (We'll see some in Scheme a bit later.*
* Some procedures create new values, without modifying their parameters:
    * `sqrt`
* User-defined procedures can add clarity to a program.
    * Rather than looking at *how* code does something, the user of
    a procedure can focus on *what* the code does.
    * A reader of the program is much more likely to understand a procedure
    call than the body of the procedures.
* Programmers can avoid repetitive (and, therefore, error prone) code.
    * Rather than retyping the same code again and again, just changing
    a few values, a programmer can give a name to the same code.
* How do you define your own procedures?  Using the following template:

    (define *your-procedure*
      (lambda (*param<sub>1</sub>* ... *param<sub>n</sub>*)
        *expression<sub>1</sub>*
        ...
        *expression<sub>m</sub>*))

* For example,

    (define square
      (lambda (val)
        (* val val)))

* You can (and should) document your procedures so that others can
  understand what they are supposed to do.  We'll come back to this
  issue soon.
* When the body of a procedure has multiple expressions (as in the
  template), only the value of the last expression is returned.
* When you call a procedure, it's like you do a `define` for each
  parameter as the corresponding sent value.
* So `(square 5)` is a lot like

     (define val 5)
     (* 5 5)

Evaluation in Scheme
--------------------

* Two main issues:
    * Table that associates names and values.  
    * Where we are in the expression we are evaluating.
* General process
    * Evaluate from inside out
    * If you see a name, look it up in the table
    * If you see a value, leave it as is
* Complication from procedures
    * We also look up procedures in the table.
    * When we run a procedure, we temporarily update the table,
      associating the values of parameters for their names.

Labs
----

* Continue [the lab on drawings as values](../labs/drawings-lab.html)
* Begin [the lab on procedures](../labs/procedures-lab.html)
* Be prepared to reflect (e.g., to describe the most important or most 
  confusing thing you dealt with today).  (And no, you can't say 
  "Sam is the most confusing thing I dealt with today.")


Outline 16: Anonymous Procedures
================================

Held: Wednesday, 25 September 2013

Back to [Outline 15 - Homogeneous Lists: Making and Manipulating Groups of Drawings ](outline.15.html).
On to [Outline 17 - Turtle Graphics](outline.17.html).

**Summary**

We revisit procedures in Scheme.  We consider a variety of techniques
for writing <em>anonymous</em> procedures, procedures without names.

**Related Pages**


**Overview**

* What is a procedure?
* Describing procedures.
* Anonymous procedures.
* Anonymous procedures through lambda expressions.
* Other kinds of anonymous procedures.

**Administrivia**


What is a procedure?
====================
* One of the basic building blocks of programming.
* Essentially, an encapsulated algorithm
    * Takes some inputs
    * Generates some outputs

Describing Procedures
=====================
* Traditionally
<code class="programlisting">
(define *name-of-procedure*
  (lambda (*parameters*)
    *body*))
</code>
* When applying one of these, we effectively substitute the arguments we
  call the procedure on for the parameters in the body, and then evaluate
  the body.

Anonymous Procedures
====================
* Procedures without names.
* Useful when we just need a procedure once
    * Saves the need to define it (code is more concise)
    * Saves the need to document it
    * Makes code work on its own
* In Scheme, whereever you write a procedure name, you can also write
  the corresponding lambda expression.
* Very useful with <code>map</code>
* Examples
* <code>((lambda (x y) (* (+ x y) (- x y))) 2 3)</code>
* <code>(map (lambda (x) (* 5 (+ 1 x))) (iota 10))</code>

Other ways to build anonymous procedures
========================================
* Sectioning!
* Composition!



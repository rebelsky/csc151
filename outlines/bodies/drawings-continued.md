A bit more about reals
----------------------

* We're adding a fourth issue when you learn about new types:
  *How are they represented internally?*
* What we've started to see with real numbers is that the way they are
  represented internally can sometimes make them confusing to deal with.

A bit about drawings
--------------------

Some of you are confused by various drawing issues.  So we'll talk about
some things I noticed.

* In general, you will need to create new drawings with something like

        (define *new-drawing* (*drawing-operation* *old-drawing* *val*))

* For example

        (define bigger-circle (drawing-scale drawing-unit-circle 200))
        (define bigger-red-circle (drawing-recolor bigger-circle "red"))

* Sometimes, we want to nest these so that we don't have to do so many
  define operations

        (define bigger-red-circle 
          (drawing-recolor (drawing-scale drawing-unit-circle 200)
                           "red"))

* Note that the operations *do not change* the underlying drawing.  They
  are similar to

        (define x 100)
        (define y (square x))
        ; What's x at this point?

Lab
---

Continue [the lab](../labs/drawings-lab.html).

Reflection
----------

Looking ahead: Procedures
-------------------------

* What's a procedure?  Something that takes input and either does something
  or computes a value (or both).
    * We'll primarily focus on procedures that compute values.
* We've been using procedures that someone else has defined.
* What if we want to define our own?
* Scheme has a strange syntax for procedures.  (Okay, it has multiple syntaxes.
  We've chosen one that's initially strange, but much easier over the long
  term.)

        (define *proc*
          (lambda (*inputs*)
            *body*))


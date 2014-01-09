Outline 06: Drawings as Values, Continued
=========================================

Held: Monday, 9 September 2013

Back to [Outline 05 - Drawings as Values](outline.05.html).
On to [Outline 07 - Writing Your Own Procedures](outline.07.html).

**Summary**

We continue our exploration of a simple model of drawings as values.
What can we do with circles, squares, and simple ways to transform
them?

**Related Pages**

* Reading: [Drawings as Values](../readings/drawings-reading.html)
* Reading (unused): [Procedures](../readings/procedures-reading.html)
* Lab: [Drawings as Values](../labs/drawings-values-lab.html)
* [EBoard](../eboards/06.html) 
  ([Source](../eboards/06.md))
  ([PDF](../eboards/06.pdf))

**Overview**

* A bit more on reals.
* A bit more on drawings.
* Lab.
* Reflection.
* Looking ahead to procedures.

**Administrivia**

* We will continue the lab from Friday.
* I'm still working on getting HW1 reviewed.  Time is a very limited commodity
  (as I think you all know from your own experience).
* Note: Sometimes the html versions of the eboards don't get updated 
  right after class.  You can always see what I typed by going to the 
  original source.
* Study break, tonight, 8pm, CS commons
* Reminder: Mentor sessions are Thursdays and Sundays at 7:30 pm
* Readings for Tuesday 
    * Reread: Writing Your Own Procedures
    * Add: How Scheme Evaluates Expressions (Take 2)
* EC Opportunities:
    * Humanities Center Speaker Sarah Hendron
      Wed., Sept. 11, 7:30 p.m., JRC101
      Waking the Machines: Art, Design, and Adaptive Technology
    * CS Table Friday (Reflections on Trusting Trust; NYT on NSA)
    * Other?

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



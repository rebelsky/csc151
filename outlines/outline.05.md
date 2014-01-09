Outline 05: Drawings as Values
==============================

Held: Friday, 6 September 2013

Back to [Outline 04 - Computing with Symbols and Numbers](outline.04.html).
On to [Outline 06 - Drawings as Values, Continued](outline.06.html).

**Summary**

We consider another way to think about images.  In particular,
we consider what we call the "drawings as values" model,
in which we describe images by transforming and composing
very simple pictures.

**Related Pages**

* Reading: [Drawings as Values](../readings/drawings-reading.html)
* Lab: [Drawings as Values](../labs/drawings-values-lab.html)
* [EBoard](../eboards/05.html) 
  ([Source](../eboards/05.md))
  ([PDF](../eboards/05.pdf))

**Overview**

* Representing images.
* Thinking about drawings through composition/decomposition.
* The underlying representation.
* Lab.
* Pure approaches vs impure approaches (Optional).

**Administrivia**

* No clicker questions today!
* Quiz today!
* EC Opportunities:
    * Humanities Center Speaker Sarah Hendron
      Wed., Sept. 11, 7:30 p.m., JRC101
      Waking the Machines: Art, Design, and Adaptive Technology
    * CS Table next Friday (Reflections on Trusting Trust; NYT on NSA)
    * Women's Tennis?  (Far Away, I think)
    * Women's Volleyball? (Away, I think)
    * Women's Golf? (At Central, not too far)
    * Women's Soccer (Home, Saturday, 2pm, Sunday, 2pm)
    * Men's Soccer (Home, Sunday, 4pm)
    * We have football players, so EC for football at Carleton (1pm Sat)
* Mentor sessions are Thursdays and Sundays at 7:30 pm
* I misspoke about individual and small-group tutors.  First, please
  make sure that using the evening tutors and mentor sessions doesn't 
  suffice.  If that's the case, let me know.  But give it a week or two.
* We start new partners today.
* We will continue today's lab on Monday.
* Readings for Monday (we probably won't use them until Tuesday)
  [Writing Your Own Procedures](../readings/procedures-reading.html)
  [How Scheme Evaluates Expressions (Take 2)](../readings/scheme-eval-2.html)

Representing Images
-------------------

* One of the themes of this course is that there is more than one way 
  to represent an image.
* In this course, we will also consider multiple computational ways to
  think about images.
* Today we explore our first one, based on simple shapes.  We call this
  model _drawings as values_.

Drawings
--------

* Your questions about a new type should be
    * What kinds of values do I have?
    * How do I represent those values?
    * What operations do I have?

* We start with a few basic values (the unit square and the unit circle).
    * We represent these as `drawing-unit-square` and
      `drawing-unit-circle`
    * These are values, not procedures.
* We add a few operations (procedures)
    * Scaling
        * If `d` is a drawing, `(drawing-scale d amt)` is a drawing
    * Shifting
        * If `d` is a drawing, `(drawing-hshift d amt)` is a drawing
    * Recoloring
        * If `d` is a drawing, `(drawing-recolor d red)` is a drawing
    * Grouping
        * If `d1` and `d2` are drawings, so is `(drawing-group d1 d2)`
* Once we've described a drawing, we can view it with
  `(image-show (drawing->image d width height))`
* We will explore what benefits (and obstacles) this new approach gives us.
* This model of images models one of the ways we sometimes think about
  images: Every image can be thought of as a composition of simpler 
  components.
    * We just take that idea to the extreme.

Representing Drawings
---------------------

* There is an underlying representation.
* You shouldn't need to know it.
* But it can be helpful to look.

Lab
---

* Do [The lab](../Labs/drawings-lab.html).
* Be prepared to reflect.

Purity (Optional)
-----------------

* Note that the definition of drawings uses induction, in much the same
  way that the definition of whole numbers uses induction.
* For whole numbers:
    * 0 is a whole number
    * If w is a whole number, 1+w is a whole number
* For drawings
    * The unit circle is a drawing.
    * The unit square is a drawing.
    * If d is a drawing, then a shifted version of d is a drawing.
    * If d is a drawing, then a scaled version of d is a drawing.
    * If d1 and d2 are drawings, the grouping of d1 and d2 is a drawing.
* When we build a new whole number from a previous whole number (by adding 1),
  we don't affect the previous whole number.
* Similarly, when we build a new drawing from a previous drawing, we don't
  affect the previous drawing.
* Contrast this with the GIMP tools, in which each command changes (sometimes
  irrevocably) the underlying image.
* When operations do not affect the underlying data structure, we call them
  *pure* operations.



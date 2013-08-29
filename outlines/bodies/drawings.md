Representing Images
===================
* As you may recall, one of the initial themes of this course is that 
  there is more than one way to represent an image.
* Early on, we considered multiple ways to draw smiley faces.
* In this course, we will also consider multiple computational ways to
  think about images.
    * You've seen one: We can describe images by the GIMP commands necessary
    to create them.  
    * More precisely, we can describe images computationally by a series of
    calls to the MediaScript GIMP Tools procedures.
    * We're about to explore another.

Drawings
========
* The *drawing* representation takes a very different perspective.
* We start with a few basic values (the unit square and the unit circle).
* We add a few operations
    * Scaling
    * Shifting
    * Recoloring
    * Grouping
* We see what benefits (and obstacles) this new approach gives us.
* Once we've described a drawing, we can create an image from it
  using <code>drawing-&gt;image</code>.
* This model of images models one of the ways we sometimes think about
  images: Every image can be thought of as a composition of simpler 
  components.
    * We just take that idea to the extreme.

Purity
======
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

Representing Drawings
=====================
* There is an underlying representation.
* You shouldn't need to know it.
* But it can be helpful to look.

Lab
===
* Do [](../Labs/drawings-lab.html)The Lab</a>.
* Be prepared to reflect.


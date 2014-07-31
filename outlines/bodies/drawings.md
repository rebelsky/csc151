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
        * If `d` is a drawing, `(scale-drawing amt d)` is a drawing
    * Shifting
        * If `d` is a drawing, `(hshift-drawing amt d)` is a drawing
    * Recoloring
        * If `d` is a drawing, `(recolor-drawing color d)` is a drawing
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


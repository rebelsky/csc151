Outline 40: Project Kickoff
===========================

Held: Wednesday, 13 November 2013

Back to [Outline 39 - On Two-Dimensional Design](outline.39.html).
On to [Outline 41 - Analyzing Procedures](outline.41.html).

**Summary**

We consider a variety of other techniques that you might use in
writing your project.

**Related Pages**


**Overview**

* About the project.
* Technique one: Color Trees.
* Technique two: Fractals.
* Technique three: Turtles.

**Administrivia**


About the Project
=================
* An attempt to tie together a variety of things.
* Goals: 
    * Plan a series of images.
    * Write a procedure to make them.
* Computational challenges:
    * Differences between images given by a single integer, <code>n</code>.
        * Your procedure must work for all values of <code>n</code> between
      0 and 999, inclusive
        * Different values of <code>n</code> in this range must produce 
      different images
    * Images must scale reasonably well (a 200x200 image should look similar to
    a 1000x1000 image for the same n).
    * Use at least three different image-making techniques we've explored 
    this semester.
* Components due Wednesday, Nov. 18
    * Sketches of two images in the series (hand drawn, computer drawn, ...)
    * An English-language description of the intent of the images ("We plan to
    explore the contrast between sharp color boundaries and color blends by
    ....  We are choosing colors from the palette ... which we designed by
    ....")
    * An English-language description of the strategy by which you intend
    to implement the algorithm.
    * I've cancelled HW8 so that you have extra time to work on this.
* Components due Tuesday, Nov. 24
    * Commented code to build the series of images, including the
    <code>(image-series *n* *width* *height*)</code>
    procedure.
    * Three 500x500 images from the series, and the *n* used to
    create them.
    * Three different-size images for the same *n*.
    * Revised artist's statement and programmer's statement.

Color Trees
===========
* Lots of alternative ways to render them.
* Can use <code>n</code> to build them.
* Put it together, you get one possible part of your images.

Simple Fractal Images
=====================
* A more regular approach to something like color trees.
* Divide-and-conquer for images.

Turtles
=======
* We've seen lots of ways to use turtles.



Outline 15: Transforming Images
===============================

Held: Tuesday, 24 September 2013

Back to [Outline 14 - Transforming Colors](outline.14.html).
On to [Outline 16 - Homogeneous Lists: Making and Manipulating Groups of Drawings ](outline.16.html).

**Summary**

Today we consider some basic control stuctures that will allow us to
write more general image filters.

**Related Pages**

* Reading: [Transforming Images](../readings/transforming-images-reading.html)
* Lab: [Transforming Images](../labs/transforming-images-lab.html)
* [EBoard](../eboards/15.md) 
  ([HTML](../eboards/15.html))
  ([PDF](../eboards/15.pdf))

**Overview**

* Transforming images by transforming each pixel.
* Sequencing transformations with compose.
* Anonymous transformations.
* Lab.

**Administrivia**

* Continue lab partners!
* I'm going to have an optional class this Thursday at 1:15 (and, I hope, most
  Thursdays) as a chance to talk to folks about more things that might be
  useful or interesting.
* Work for Wednesday: 
    * Finish the exam.
    * Reading for Wednesday: [Making and Manipulating Homogeneous Lists](../readings/homogeneous-lists-reading.html)
    * Lab writeup 5: Problems 4 and 7 from Transforming Images
      Due before class on Friday.  (Ideally before class on Wednesday.)
* EC Opportunities:
    * CS Extras Thursday @ 4:30: Jennelle Nystrom on working at Microsoft
    * CS Table Friday (The Story of Mel)
    * Football, 1pm, Saturday against Beloit
    * Orchestra, 2pm, Saturday, Sebring-Lewis or somewhere similar
    * Folksyish music with Seth at Relish, Wednesday at 10pm
    * Knitting club, Saturday at 10am.  Do good and have fun!
    * More ...?

Transforming images by transforming each pixel
----------------------------------------------

* We saw in the color transformation lab that we can apply a transformation to each pixel, getting it and then setting it to a new value.
* This generalizes that strategy.
* `(image-variant image color-transform)` - build a new image
  by applying `color-transform` to every pixel.
* `image-transform! image color-transform` - change the pixels "in place"
* Interesting new concept: We can write procedures that take other 
  procedures as parameters.

Sequencing transformations with `compose`
-----------------------------------------

* When you need to do more than one transformation, you can sequence them
  with `compose` (also `o`).
* `(image-variant image (o rgb-redder rgb-bluer))`

Anonymous transformations
-------------------------

* You don't even need to name those transformations.
* <code>(image-variant image (lambda (rgb) ...))</code>



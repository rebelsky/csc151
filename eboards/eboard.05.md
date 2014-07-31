CSC151.02 2014S, Class 05: Drawings as Values
=============================================

_Overview_

* Preliminaries.
    * Admin.
    * Homework.
    * Questions.
* Representing images.
* Thinking about drawings through composition/decomposition.
* The underlying representation.
* Pure approaches vs impure approaches.
* Lab.

Preliminaries
-------------

### Admin

* Lab partners assigned for the week.  (This is a "same sex" week as part
  of our broader partner preference experiment.)
* We had a family emergency this weekend, so it will take me a few more
  days to respond to your introductory surveys.  (Yours is my largest
  class, so you folks are last.)
* Study break in the CS commons at 8pm tonight.  Home-made (well, probably
  apartment-made) snacks.
* The TC Corps is hiring!  Contact [tranchri] or [cohnhann] for details.
    * Probably other people, too.
* I've graded your first quiz.  I'll return it during class, possibly
  while you are doing lab.
    * No other attendance.
* I've changed my homework grading strategy a bit, to "Excellent, Very 
  Good, Good, Fair, Poor" (it's more or less the same as the old check
  system, but with new words).  Updates to the handouts will follow.
* Note that if you use the "Source" version of an EBoard, you should 
  see the stuff within a minute or two of me updating it.
* I think I've responded to all of the lab writeups I've received.
    * Please send lab writeups to me.  Your graders don't need to see
      them.
* We will continue today's lab tomorrow.  
* Extra credit: 
     * Thursday at 4:15: Spencer Liberto, Lea Marolt Sonnenschein, and 
       Daniel Torres on Ushahidi and more.
     * CS Table Friday at Noon: The ACM Code of Ethics.
     * Convo Feb. 5. (Ill give my "Why go to convo" lecture closer to the date.)
     * Others?

### Homework

* HW 2 is due tomorrow night.
* Reading: Procedures as values
* Today's lab writeup (due Friday): Exercise 4, parts a, c, d, f, and g
     * Email subject: 
       CSC 151 Writeup 3: Drawings as Values (YOUR NAME(s) HERE)
     * You can, but need not, write up the lab with your partner.

### Questions on HW 2

Representing images
-------------------

* Images are the primary problem domain for this class.
* We'll give you a model of what the computer can do
* We'll ask you to write algorithms to make certain kinds of images
* There are LOTS of ways to think about images

Thinking about drawings through composition/decomposition
---------------------------------------------------------

* New data type!
    * What kinds of values does the data type include?
    * What do I use them for?
    * How do we describe them to the computer?
    * How does the computer describe them to us?
    * What operations can I perform on these values?
* What kinds of values does the data type include?
    * Circles, squares, rectangles, ovals, and combinations thereof
* What do I use them for?
    * To make "interesting" images (or at least images)
    * "As ways of describing images"
* How do we describe them to the computer?
    * drawing-unit-circle (diameter 1, centered at 0,0)
    * drawing-unit-square (side length 1, centered at 0,0)
    * Apply the operations below to other drawings
* How does the computer describe them to us?
    * (drawing circle ? ? left top width height)
    * As pictures, if we use (image-show (drawing->image DRAWING WIDTH HEIGHT))
* What operations can I perform on these values?
    * (scale-drawing AMT DRAWN
    * (hscale-drawing AMT DRAWING)
    * (vscale-drawing AMT DRAWING)
    * (hshift-drawing AMT DRAWING)
    * (vshift-drawing AMT DRAWING)
    * (recolor-drawing NEWCOLOR DRAWING)
    * (drawing-group DRAWING1 DRAWING2)
* Can we group more than two drawings? Yes.
* Is drawing-unit-circle already defined? Yes.

The underlying representation
-----------------------------

See above.

Notes from Lab
--------------

All of the procedures create a *new* drawing; they don't modify the original
drawing.

The combination of scaling and shifting seems odd.  Why?

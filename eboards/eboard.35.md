CSC151.02 2014S, Class 35: Geometric Art Through Numeric Recursion
==================================================================

_Overview_

* Preliminaries.
    * Admin.
    * Notes on HW 8.
    * Questions.
* The spiral question from yesterday
* Lab

Preliminaries
-------------

### Upcoming work

* Reading for Friday: Pairs and Pair Structures
* Study for the quiz!
* Today's lab writeup: 3d.
* HW 8 distributed (discussed in a few minutes)

### Admin

* Continue your partner assignments from yesterday.  
* Review session 7ish tomorrow night.
* Extra credit:
    * Technology in liberal arts education, lots of talks on Thursday
    * No CS extra this Thursday.
    * CS table Friday: Contracts.
    * Art Community Day on the 12th or so.
    * Happenstance Theatre, Saturday, 7:30 pm, Roberts
    * 24 hour theatre project, plays, Saturday at 7:00
* Other cool things
    * Art opening Friday
    * Some random semi-famous musician whose name Sam is too old to understand
      tonight at 9pm in Gardner

### About HW 8

* Sam writes on whiteboard.  Get notes from your colleagues.

### Questions

Do you really want us to fill out a form and click submit?  Yes.

Sprials, Revisited
------------------

What happens when we write?

   (define action01!
     (lambda (t n)
       (turtle-forward! t 1)
       (turtle-turn! t n)))

   (for-each (l-s action01! tommy) (iota 400))

Hypothesis: Gets tighter and tighter and tighter

Hypothesis: Once we reach 360, we'll get another straight line coming out

Lab
---

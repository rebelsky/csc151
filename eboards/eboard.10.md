CSC151.02 2014S, Class 10: Side Effects: Images, Output, and More
=================================================================

_Overview_

* Preliminaries.
    * Admin.
    * Questions.
* Lab.

Preliminaries
-------------

### Admin

* I'm moving my review session on Thursday to some other time.  
  Sorry for the inconsistency.  
  (I'm still trying to figure out what time.)  
    9:00?
    11:00?
    2:15? (shortened)
* Still mentor sessions Thursday 7:00-8:00 and 9:00-10:00
* Extra credit: 
    * Convocation, Wednesday, noon, JRC 101 (Putin and Pussy Riot)
    * CS Extras, Wednesday at 4:30 in Science 3821: AppDev
    * CS Table, Friday at noon in the Day PDR: NP Completeness

### Upcoming Work

* Wednesday's reading: Design and Color
* Yesterday's writeup (due Wednesday): Just send me your unit tests.
* Today's writeup (due Friday): Exercise 4a from Side Effects
    * Email subject:
      CSC 151 Writeup 7: Side Effects (YOUR NAME(s) HERE)
* Homework 3 due tonight!

### Documenting `rectangle`

Here's what I was hoping for

    ;;; Procedure:
    ;;;   rectangle
    ;;; Parameters:
    ;;;   left, a real number
    ;;;   top, a real number
    ;;;   width, a positive real number
    ;;;   height, a positive real number
    ;;;   color, a color
    ;;; Purpose:
    ;;;   Create a drawing of a rectangle with the specified characteristics.
    ;;; Produces:
    ;;;   rect, a drawing 
    ;;; Preconditions:
    ;;;   color is a valid color name.  That is (color? color) holds.
    ;;; Postconditions:
    ;;;   rect is a rectangle.  That is (drawing-rectangle? rect) holds.
    ;;;   (drawing-color rect) is a color equivalent to color.
    ;;;   (drawing-left rect) is left
    ;;;   (drawing-top rect) is top
    ;;;   (drawing-width rect) is width
    ;;;   (drawing-height rect) is height

### Questions

_What should I do if I want to add a short explanation in the middle of my code?

> One semicolon

_How do you judge concision?_

> Usually in terms of how short the code is, although we do not distinguish
f from make-a-rectangle-of-given-size 

_How are we supposed to use the width and height variables?_

Lab
---

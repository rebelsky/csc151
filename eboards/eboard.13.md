CSC151.02 2014S, Class 13: Transforming Colors
==============================================

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming work.
    * About Friday's quiz.
    * Questions on the exam.
    * Other questions.
* Lab.

Preliminaries
-------------

### Admin

* New partners posted!
* Food!
* Warning!  I may not be able to hold a review session this week.  I'll
  keep you posted.
* Exclamation points!
* Both the graders and I are a bit behind.  I expect that I'll get you 
  grades before tomorrow's class.
* Study break tonight at 8pm.
* Extra credit: 
    * Thursday extra, Thursday @ 4:30 p.m., Sci. 3821, Red/Black trees.
    * CS Table Friday @ noon: Law, Order, and Computers
    * Royce Wolf Piano on Wednesday at noon.
    * Opera on Campus Thursday night in S-L. (if it exists)

### Upcoming Work

* Continue working on the exam.
* Tuesday's reading: Transforming Images
* Lab writeup: Exercises 5ace and 6be
    * Subject: CSC 151.02 Writeup 9: Transforming RGB Colors (YOUR NAME)

### About Quiz 3

Part 1: Code is in examples/math.rkt.

Basically, each procedure prints stuff out in addition to computing a result.
I wanted you to tell me what was printed out.

Part 2:

    ;;; Procedure:
    ;;;   limit
    ;;; Parameters:
    ;;;   val, a real number
    ;;;   lower, a real number
    ;;;   upper, a real number
    ;;; Purpose:
    ;;;   limit val so that it is between lower and upper.
    ;;; Produces:
    ;;;   limited, a real number
    ;;; Preconditions:
    ;;;   lower <= upper
    ;;; Postconditions:
    ;;;   If val < lower, the result is lower
    ;;;   If val > upper, the result is upper
    ;;;   Otherwise, the result is val.
    (define limit
      (lambda (val lower upper)
        (max lower (min val upper))))

### Questions on the Exam

_Should #9 show the image?_

> No.  It should give back a number that we can use with `image-show`.

_Can we convert images to drawings_

> Not yet.

### Other Questions

Lab
---

It may be hard for some eyes to distinguish slightly darker versions of colors.

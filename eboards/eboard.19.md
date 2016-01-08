CSC151.01 2015F, Class 19: Anonymous Procedures, Revisited
==========================================================

* Sit with your homework partners!
* There are two *homework help needed* lists on the board.  One is 
  the general list.  Anyone can put their name on that.  The other is
  the Sam list.  Only Sam or the mentors can put your name on that list.

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Quiz 4.
    * Questions.
* Homework time!  (Or lab time.)
* Quick overview of the reading.

Preliminaries
-------------

### Admin

* When you send me questions, it's very helpful if you send me the examples
  that are not working correctly and *all* the code that I'll need to
  run those examples.  (It spares me from either asking you or rewriting
  the code myself.)  For example, if your example uses `my-drawing` and
  `shift-to-origin`, send me the code for `my-drawing` and `shift-to-origin`.
* I've gotten enough questions that we will spend much of today's class 
  working on the homework assignment so that you can get assistance from
  the mentors and from me.

### Upcoming Work

* Reading for Wednesday:
  [Naming Local Values](../readings/let-reading.html) 
* [HW 4](../assignments/assignment.04.html) due TONIGHT.
* HW 5 to be assigned tomorrow.  (Whatever is on the Web is wrong.)
    * HW 5 will be your last homework with assigned partners.  After that,
      you may choose to work alone or choose your own partners.
    * Lab partners will continue to be assigned.
* No lab writeup!  (No lab.)

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* EE's show in Smith
* CS Table TODAY: YouTube Content Identification.
* MET Livecast Saturday at noon at Harris Auditorium.

#### Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included), Sunday at 4:45, and Mondays at 4:45.  Requires sign up in 
  advance.  
* PALS dinner Thursday night.  (Sam will treat if you find it a financial 
  burden.)
* Pun Club, Saturdays, 4pm, Way over Younker.
* Mid-Autumn Festival, Saturday, Oct. 3, 6-8 p.m. in Harris Concert Hall.

### Quiz 4

Discuss with your partner, then be prepared to answer in class.  You will
need to look at the eboard for all of the questions.  You may experiment
with code after discussing with your partner.

1. What is the output of the following?

        > (define x 5)
        > (square x)
        25
        > x
        5

2. What is the output of the following?

        > (define color (irgb 200 0 100))
        > (irgb->string (irgb-redder color))
        "232/0/100" 
        > (irgb->string color)
        "200/0/100"

3. What is the output of the following?

        > (define d19 (scale-drawing 10 drawing-unit-square))
        > (drawing-width (scale-drawing 2 d19))
        20
        > (drawing-width d19)
        10

4. After the following commands, what are the color, left, top, width, 
   and height of `d1` and `d2`?

        (define d0 (recolor-drawing "yellow" drawing-unit-square))
        (define d1 (scale-drawing 20 d0))
        (define d2 (hshift-drawing 30 d1))
        (recolor-drawing "red" d1)
        (recolor-drawing "blue" d2)
        ; d1 left is -10
        ; d2 left is 20
        ; d1 is yellow
        ; d2 is yellow

        ; We try to include a ! when we have procedures that change
        ; their input or the world around them (but not always)
        ; (image-draw-line!
        ; (image-transform!

5. What is the output of the following expression?

        > (even? 0)
        #t

6. What is the output of the following expression?

        > (even? 2.4)
        error

7. What is the output of the following expression?

        > (< 3 5)
        #t

8. What is the output of the following expression?

        > (+ 3 'two)
        error

9. What does `(or exp1 exp2)` do?

        ; Look for the first non-false value and return that.
        ; If none of them are non-false, it gives us #f

10. What is the output of the following expression?

        > (or (< 3 5) (+ 3 'two))
        #t

        ; > (or 5 (+ 3 'two))
        ; 5

### HW4 Questions

_Why doesn't my circle of drawings work?_

> You've correctly used `sin` and `cos`.  But each gives you numbers
  between -1 and 1.  Shifts that small tend to be invisible.  Try
  multiplying by a larger number (say 50 or 100).

_What radius should we use for the circle of drawing?_

> Whatever you'd like, provided it's easily visible.

_Why is my neighbor one pixel off?_

> It probably has a left margin that is not a whole number.  Unfortunately,
  GIMP rounds to the nearest whole number.  Don't worry about it.

_Do you have any general suggestions?_

> Write lots of helper procedures.  Two that I've found useful include
  `shift-drawing-to-origin` and `horizontally-center-drawing-at`.

_Should we use gimp tools for problem 4?_

> No!  Use recolor-drawing when you want a different color.

_Should we cite?_

> Yes.

_Should we document add-bottom-neighbor?_

> Yes.

_What should the postconditions for the add-aaa-neighbor procedure look like?_

> Something like the following

        ;;; Postconditions:
        ;;;   result contains two copies of drawing, the original and
        ;;;     a second one that is scaled by ... and placed at ...
        ;;;   (drawing-width result) =  ...
        ;;;   (drawing-height result) = ...
        ;;;   (drawing-left result) = ...
        ;;;   (drawing-top result) = ...

_Should we document `xcoord` and `ycoord`?_

> No.

_Should we handle the case in which the shadow is outside of the canvas?_

> No.  But you also don't need to check for it.

_Do we need extensive tests?_

> You don't need any tests.  But you should be confident in your code.

_Do we have to document part 4?_

> No.

Homework Help
-------------

* Work with your homework partner.
* If you're done with the homework, work on the lab.

Ideas from the Reading 
-----------------------

If you have time, discuss with your partner.

_What do `l-s` and `r-s` do?_

_What does the following do?  Why would we write it?_

    (map 
     (lambda (i)
        (hshift-drawing (* 10 i)
                        (vshift-drawing (square i)
                                        (scale-drawing i
                                                       drawing-unit-circle))))
     (iota 20))


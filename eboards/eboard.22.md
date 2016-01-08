CSC151.01 2015F, Class 22: Images as Functions from Position to Colors
======================================================================

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * About Quiz 5.
    * Questions.
* Lab.

Preliminaries
-------------

### Admin

* New partners!
* Quiz 5 returned.
* Sending HW questions
    * Don't forget to carbon copy your partner when you submit questions.
    * Don't forget to use topics like HELP NEEDED ON HW5! when you email me
      questions.
    * Don't forget to include code when you email me questions.
    * Resend the email if I don't answer within 24 hours.

### Upcoming Work

* Reading for Tuesday:
  [Heterogeneous Lists](../readings/heterogeneous-lists-reading.html) 
* [HW 5](../assignments/assignment.05.html) due Tuesday
* Today's Lab writeup (due before class Wednesday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 22 (Your Names)_
    * Exercise: 3ef
* Exam 2 to be distributed tomorrow.
* Makeup 1 distributed yesterday.

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery
* CS Table Tuesday: Barbie and the "Internet of Things"
* CS Extras Thursday: Blake Creasey on Watson

#### Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included), Sunday at 4:45, and Mondays at 4:45.  Requires sign up in 
  advance.  
* Pun Club, Saturdays, 4pm, Way over Younker.

### Other Good Things

* Friends of Drake Library book sale this weekend.

### Quiz 5

You are now at the point that you should be able to notate lists correctly.
Please do so in the future.

The last problem caused trouble for many of you.  It asked you to identify
whether the parameter was a non-zero, even, integer.  

* We probably need three tests.
* We learned last week that you can't call `even?` on a non-integer,
  so we better make sure that it's an integer before we call `even?`

Here's one solution

     (define non-zero-even?
       (lambda (num)
         (cond
           [(not (integer? num))
            #f]
           [(not (even? num))
            #f]
           [(zero? num)
            #f]
           [else
            #t])))

However, as ZS says, "If you find yourself explicitly writing #t and #f,
you can probably simplify it."

     (define non-zero-even?
       (lambda (num)
         (and (integer? num) (even? num) (not (zero? num)))))

Some clever people combined the first two and ended up with

     (define non-zero-even?
       (lambda (num)
         (and (integer? (/ num 2)) (not (zero? num)))))

### HW Questions

_Do you have hints on problem 1?_

> I'd probably write some helper functions (or partial steps).

        ;;; Name:
        ;;;   better-unit-square
        ;;; Type:
        ;;;   drawing
        ;;; Value:
        ;;;   A 1x1 square with top-left at (0,0)

        ;;; Procedure:
        ;;;   make-line
        ;;; Parameters:
        ;;;   n, a non-negative integer
        ;;;   color1, a color
        ;;;   color2, a color
        ;;; Purpose:
        ;;;   Make a square for problem 1
        ;;; Produces:
        ;;;   square, a drawing
        ;;; Preconditions:
        ;;;   [No additional]
        ;;; Postconditions:
        ;;;   (drawing-left square) = 0
        ;;;   (drawing-top sqaure) = n
        ;;;   if n is even, (drawing-color square) = color1
        ;;;   if n is odd, (drawing-color square) = color2

> At some point, I'd likely use a structure like

        (map (lambda (x) (if (even? x) ....)) 
             (iota num))

_Question 2 on the exam asks us to take a function as a parameter.  Can
 we really do that?_

> Yes.  You've seen it happen in other cases, such as with `map` or
  `ls`.  Here's a simple example.

        ;;; Procedure:
        ;;;   apply-to-two
        ;;; Parameters:
        ;;;   fun, a one-parameter function 
        ;;; Purpose:
        ;;;   Apply fun to the value 2
        ;;; Produces:
        ;;;   val, a value
        ;;; Preconditions:
        ;;;   fun must accept an integer as an input
        ;;; Postconditions:
        ;;;   val = (fun 2)
        (define apply-to-two
          (lambda (fun)
            (fun 2)))

        > (apply-to-two square)
        4
        > (apply-to-two increment)
        3
        > (apply-to-two (lambda (x) (+ 7 (* x 2))))
        11

> You can apply a function with (function params) whether it's a
  built-in function, or one that you've named with define, or even one
  you've taken as a parameter.

_One of the functions is wrong on problem 2, isn't it?_

> Yes.  Sorry.

_How would you handle the recoloring of the dots in problem 2?_

> I'd write a separate helper function

        ;;; Procedure:
        ;;;   recolor-point
        ;;; Parameters:
        ;;;   point, a drawing
        ;;; Purpose:
        ;;;   Recolor point based on its position
        ;;; Produces:
        ;;;   colored-point, a drawing
        ;;; Preconditions:
        ;;;   [No additional]
        ;;; Postconditions:
        ;;;   If y < 50, colored-point is blue
        ;;;   Otherwise, colored-point is red

_How do we compute a random number in problem 3?_

> `(random n)` gives an integer between 0 and n-1, inclusive.

Lab
---

Writeup: 3ef

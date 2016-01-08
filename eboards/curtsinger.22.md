CSC151.02 2015F, Class 22: Images as Functions from Position to Colors
======================================================================

* New partners!

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Lab.

Preliminaries
-------------

### Admin

* Sending HW questions to SamR (and probably CC)
    * Don't forget to carbon copy your partner when you submit questions.
    * Don't forget to use topics like HELP NEEDED ON HW5! when you email me
      questions.
    * Don't forget to include code when you email me questions.
    * Resend the email if I don't answer within 24 hours.

### Upcoming Work

* Reading for Tuesday:
  [Heterogeneous Lists](../readings/heterogeneous-lists-reading.html) 
* [HW 5](../assignments/assignment.05.html) due Wednesday
* Today's Lab writeup (due before class Wednesday)
    * Exercise: 3ef
* Exam 2 to be distributed tomorrow.

### Extra Credit Opportunities

#### Academic

* CS Table Tuesday: Barbie and the "Internet of Things"
* CS Extras Thursday: Blake Creasey on Watson

#### Peer Support

### Other Good Things

* Friends of Drake Library book sale this weekend.

### HW Questions

_Do you have hints on problem 1?_

> I'd probably write some helper functions.

_How do I mix if and map?_

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

_One of the functions is wrong on problem 2, isn't it?_

> Yes.  Sorry.

_How can I recolor the dots?_

        ;;; Procedure:
        ;;;   recolor-dot
        ;;; Parameters:
        ;;;   dot, a drawing
        ;;; Purpose:
        ;;;   Recolor dot to match the requirements from problem
        ;;;   2 of assignment 5 of section 2 of CSC 151 2015F
        ;;; Produces:
        ;;;   recolored-dot, a drawing
        ;;; Preconditions:
        ;;;   [None]
        ;;; Postconditions:
        ;;;   (drawing-color recolored-dot) = "blue" if the y position of
        ;;;     of dot < 50
        ;;;   (drawing-color recolored-dot) = "red" otherwise
        ;;;   (drawing-left recolored-dot) = (drawing-left dot)
        ;;;   (drawing-top recolored-dot) = (drawing-top dot)
        ;;;   (drawing-width recolored-dot) = (drawing-width dot)
        ;;;   (drawing-height recolored-dot) = (drawing-height dot)

        ...

        (map recolor-dot (....))

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

Pretend Purple is `(irgb 255 0 255)`

Section 1 wants you to know that your answer to 3a will look something like

    (define horiz-black-to-blue 
      (lambda (width height)
        (image-compute
         (lambda (col row)
           ...)
         width height)))

Writeup 3ef

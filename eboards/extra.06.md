CSC151 2015F, Review Session 06 - 2015-10-08
============================================

_Overview_

* We look at general quiz issues.
* We do some sample quiz questions.
* We gather additional questions and arrange them.
* I attempt answers.
* More Q&A, as appropriate.

About the Quiz
--------------

Topics

* `image-compute`
* `let` and `let*`
* New list operations (`cons`, `car`, `cdr`)
* Conditionals (`if`, `when`, `cond`)
* Anonymous procedures (using lambda, `section`, `o`, `l-s`, `r-s`)

Some things to know about

* Similarities and differences between `let` and `let*`.
* Similarities and differences between lists and list-like things.
* Similarities and differences between the three conditional operations.
* Different ways to make anonymous procedures: `section`, `l-s`, `r-s`,
  `o`, `lambda`.

Types of Questions

* What is the value of this expression?
* Write code to ____.
* Document the following procedure.
* Summarize tests for the following procedure.  (You will not have to
  write them as Rackunit tests.)
* Random silly extra credit question

Sample Quiz Questions
---------------------

*There are enough of these that you should check the eboard.*

### Values of Expressions

_What is the value of `(reverse (append (iota 5) (iota 5)))`?_

_What is the value of `(reverse (append (iota 5) 5))`?_

_What is the value of `(cadr (reverse (iota 5)))`?_

_What is the value of `(cdar (reverse (iota 5)))`?_

_Sketch the image that results from the following code._

        (let ([red (irgb 255 0 0)]
              [blue (irgb 0 0 255)]
              [white (irgb 255 255 255)])
          (image-show (image-compute
                       (lambda (col row)
                         (cond
                           [(< col 100)
                            red]
                           [(< row 100)
                            blue]
                           [else
                            white]))
                       200 200)))

_What is the value of `(map (l-s - 2) (iota 5))`?_

_What is the value of `(map (r-s - 2) (iota 5))`?_

_What is the value of `(map (o (l-s - 2) (r-s * 3)) (cons 4 (iota 5)))`?_

_What is the value of `(map (lambda (x) (* 3 (+ 2 x))) (iota 5))`?_

_What is the value of `(let ([a 10] [b 5]) (list a b))`?_

_What is the value of `(let ([a 10] [b (square a)]) (list a b))`?_

_What is the value of `(let* ([a 10] [b (square a)]) (list a b))`?_

### Code to Write

_Write a procedure to get the last value in a list._

_Without using lambda, write a procedure to remove the last value in a
 list (or, more precisely, to return a list that contains all but the
 last value of its parameter list)._

        > (remove-last (list 1 2 3))
        '(1 2)
        > (remove-last (reverse (iota 5)))
        '(4 3 2 1)

_Using `image-compute`, write an expression to create a 100x100
 image with a red circle of radius 30 centered at (40,50)._

_The following code makes way too many lists.  Rewrite it using
 a single call to `map`._ 

        (map hshift-drawing
             (make-list 20 5)
             (map vshift-drawing
                  (map * (make-list 20 10) (iota 20))
                  (make-list 20 drawing-unit-circle)))

### Documentation

_Document the following procedure using the six P's._

        (define rac (o car reverse))

_Document the following procedure using the six P's._

        (define something
          (lambda (img x y)
            (when (< x y)
              (image-select-rectangle! img REPLACE 0 0 x y)
              (context-set-fgcolor! (irgb (random 256) (random 256) (random 256)))
              (image-fill! img)
              (image-select-nothing! img))))

### Tests

_List the tests you would conduct for the following procedure._

        ;;; Procedure:
        ;;;   trim-ends
        ;;; Parameters:
        ;;;   lst, a list
        ;;; Purpose:
        ;;;   Removes the last and first elements, if they exist.
        ;;; Produces:
        ;;;   trimmed, a list
        ;;; Postconditions:
        ;;;   If lst is empty, returns an empty list
        ;;;   If lst has only one element, returns an empty list
        ;;;   Otherwise
        ;;;     We have removed two elements
        ;;;       (length trimmed) = (length lst) - 2
        ;;;     The second to the penultimate are in the same relative position
        ;;;       For all i < (length trimmed)
        ;;;         (list-ref trimmed i) = (list-ref lst (+ i 1))

Questions
---------

_Can you briefly go over `l-s` and `r-s`?_

> `(l-s fun left)` == `(section fun left <>)` 
   == `(lambda (right) (fun left right))`
> `(r-s fun right)` == `(section fun <> right)`
   == `(lambda (left) (fun left right))`

_When does `cdar` work?_

> `(cdar val)` == `(cdr (car val))`.  So this only works if the first
  element of val is itself a list.

> It would work with `(cdar (list (iota 5) (iota 4)))`

> `(cdar (list (iota 5) (iota 4)))` => `(cdr (car (list (iota 5) (iota 4))))`
  => `(cdr (iota 5))` 
  => `(1 2 3 4)`

	Welcome to DrRacket, version 6.1 [3m].
	Language: racket [custom]; memory limit: 128 MB.
	> (list (iota 5) (iota 4))
	'((0 1 2 3 4) (0 1 2 3))
	> (car (list (iota 5) (iota 4)))
	'(0 1 2 3 4)
	> (cdr (list (iota 5) (iota 4)))
	'((0 1 2 3))
	> (iota 4)
	'(0 1 2 3)
	> (cdr (car (list (iota 5) (iota 4))))
	'(1 2 3 4)
	> (cadr (iota 5))
	1
	> (cdar (iota 5))
	. . cdar: contract violation
	  expected: (cons/c pair? any/c)
	  given: '(0 1 2 3 4)
	> (cdr (car (iota 5)))
	. . cdr: contract violation
	  expected: pair?
	  given: 0

_Why would anyone use cdar?_

> Example: I might have a list of students, and each student is a list of
  the form `(name class grade-on-exam1 ...)`.  `(cdar students)` gives
  me the name of the first student.  `(cdar (sort-by-grade students))`
  gives me the name of the top student.

_Why is `(cdr (list (iota 5) (iota 4)))` equal to `(list (iota 4))` rather
 than just `(iota 4)`?_

> What is `(cdr (list 5 4))`?  It's `(list 4)` or `'(4)`.  `cdr` always
  gives back a list (if given a list); it just removes the first element.

_Should we use the single-quotation mark (aka tick) to make lists?_

> No!  It leads to confusion down the line.  

_Do we use `cdr` to traverse down lists?_

> Yes.  Great idea.

_Do we have to know `cadr`?_

> Yes.

_What is `(cdr (list 1))`?_

> `null`

_Can you do the sketching one?_

        (let ([red (irgb 255 0 0)]
              [blue (irgb 0 0 255)]
              [white (irgb 255 255 255)])
          (image-show (image-compute
                       (lambda (col row)
                         (cond
                           [(< col 100)
                            red]
                           [(< row 100)
                            blue]
                           [else
                            white]))
                       200 200)))


> It will be a drawing of size 200x200

> The left half will be red.

> The top right corner will be blue

> The bottom right corner will be white

_Can you give some phrases never to say to your professor?_

> "I don't listen in class."

_Write a procedure to get the last value in a list._

> Tools: `reverse`, `car`, `(list-ref lst pos)` (gives you the
  value at the given position, counting at 0)

        (define last
          (lambda (lst)
            (car (reverse lst))))

        (define last
          (lambda (lst)
            (list-ref lst (- (length lst) 1))))

	> (define letters (list 'a 'b 'c 'd 'e))
	> (list-ref letters 3)
	'd
	> (list-ref letters 4)
	'e
	> (length letters)
	5
	> (list-ref letters 5)
	. . list-ref: index too large for list
	  index: 5
	    in: '(a b c d e)
	
        (define last (o car reverse))

_Without using lambda, write a procedure to remove the last value in a
 list (or, more precisely, to return a list that contains all but the
 last value of its parameter list)._

        (define remove-last (o reverse cdr reverse))

_Using `image-compute`, write an expression to create a 100x100
 image with a red circle of radius 30 centered at (40,50) and white
 everywhere else._

> Start with

        (image-compute
         (lambda (col row)
           ???
         100 100))

> We can use the distance formula "square root of ((y2-y1)^2 + (x2-x1)^2)"
  `(sqrt (+ (square (- 50 row)) (square (- 40 col))))`

        (image-compute
         (lambda (col row)
           (if (< (sqrt (+ (square (- 50 row)) (square (- 40 col))))
                  30)
               (irgb 255 0 0)
               (irgb 255 255 255)))
         100 100)

_Rewrite the following._

        (map hshift-drawing
             (make-list 20 5)
             (map vshift-drawing
                  (map * (make-list 20 10) (iota 20))
                  (make-list 20 drawing-unit-circle)))

> It appears that the purpose of this is to take twenty copies of the 
  unit circle, vertically shift each by a separate multiples of 10, 
  and horizontally shift it by 5.

        (map (lambda (i)
               (hshift-drawing 5
                               (vshift-drawing (* 10 i) drawing-unit-circle)))
             (iota 20))

> Can you make my brain hurt?

        (map (o (section hshift-drawing 5 <>)
                (section vshift-drawing <> drawing-unit-circle)
                (section * 10 <>))
             (iota 20))

### Documentation

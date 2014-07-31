CSC151.02 2014S, Class 44: Pause for Breath
===========================================

_Overview_

* Preliminaries.
    * Upcoming Work.
    * Extra Credit.
    * Pre-quiz Questions.
    * Quiz.
* Questions.
* Project work time.
* Summary of some of the techniques I demonstrated to students.

Preliminaries
-------------

### Admin

* Today is mostly time for you to work on projects and ask questions.
  As the overview suggests, I'll try to spend the last five or ten
  minutes of class going over some of the things I helped people with
  that might be helpful.

### Upcoming Work

* Reading for Monday: Association Lists.
* Homework for next Tuesday: Projects.
* No lab writeup.

### Extra Credit

* Iowater project April 19 - Tag drains.  Mail [iowater] for details.
* <http://www.strikingly.com/pioneerweekend>
* The Grinellian Music Festival - Last slot - "The Disco Band"!  First slot: 
  Phil sings.
* Math Extra, Thursday.  Title forthcoming.
* Iowater project April 26 - Tag drains.  Mail [iowater] for details.
* Men's tennis Saturday at 10 a.m. vs. Coe.

### Pre-quiz questions

_Why does counter-increment! look like the following?_

        (define counter-increment!
          (lambda (counter)
            (vector-set! counter 1 (+ 1 (vector-ref counter 1)))
            counter))

_Can you use vectors with `map`?_

> No.

> You can write your own `vector-map!` or `vector-map`, though.

       ;;; Procedure:
       ;;;   vector-map!
       ;;; Parameters:
       ;;;   fun, a function
       ;;;   vec, a vector
       ;;; Purpose:
       ;;;   Set each element of vec to the result of applying
       ;;;   fun to the same element.
       ;;; Produces:
       ;;;   vec, the same vector, now mutated
       ;;; Preconditions:
       ;;;   fun can be legally applied to each element of vec.  That is,
       ;;;   for all reasonable i,
       ;;;     (fun (vector-ref vec i))
       ;;;   does not cause an error.
       ;;; Postconditions:
       ;;;   Let VEC refer to the original values in the vector.
       ;;;   For all reasonable i,
       ;;;     (vector-ref vec i) is (fun (vector-ref VEC i))
       (define vector-map!
         (lambda (fun vec)
           (let kernel [pos (- (vector-length vec) 1)]
             (when (>= pos 0)
               (vector-set! vec pos (fun (vector-ref vec pos)))
               (kernel (- pos 1))))))

       ;;; Procedure:
       ;;;   vector-map
       ;;; Parameters:
       ;;;   fun, a function
       ;;;   vec, a vector
       ;;; Purpose:
       ;;;   Create a new vector by applying fun to every element in vec.
       ;;; Produces:
       ;;;   funvec, a new vector.
       ;;; Preconditions:
       ;;;   fun can be legally applied to each element of vec.  That is,
       ;;;   for all reasonable i,
       ;;;     (fun (vector-ref vec i))
       ;;;   does not cause an error.
       ;;; Postconditions:
       ;;;   (vector-length funvec) = (vector-length vec)
       ;;;   For all reasonable i,
       ;;;     (vector-ref funvec i) is (fun (vector-ref vec i))
       (define vector-map
         (lambda (fun vec)
           (list->vector (map fun (vector->list vec)))))

Questions
---------

Project work time
-----------------


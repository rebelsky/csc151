CSC151.02 2014S, Class 51: Project Assessment: Algorithms
=========================================================

_Overview_

* Preliminaries.
    * Admin.
    * Questions.
* Additional images.
* Debriefing from image analysis.
* Students discuss programming techniques.
* Programming challenges.

Preliminaries
-------------

### Admin

* Remember!  You have a responsibility to cite all of the resources you
  use, even if you don't copy and paste.
* While you may be done with the formal work for CSC 151 Thursday evening,
  I expect you to show up for the remaining class periods.
* I won't be able to take notes and show off things simultaneously.  Sorry.

### Upcoming Work

* Homework for Thursday: [Exam 3](../assignments/exam.03.html).
* Reading for Friday: [Objects in Scheme](../readings/objects-reading.html)
* No lab writeup.

### Extra Credit

* CS Extra Thursday at 4:30 in Science 3821: Edward Snowden TED Talk.
* CS Table Friday at noon: Edward Snowden.
* Jazz band 7:30-9:30 Friday night in Sebring-Lewis.

### Questions

_Talk about the Moby Dick image._

* lowercase is turn
* UPPERCASE is forward

_Do you need to see tests for the turtle draw text thingy?_

> No.  I can read code.

* Where should I include examples
    * The ones that already include examples
    * The two vector problems
* Can you give us a hint about problem 9?

        (define husk
          (lambda (params)
            (cond
              [(fails-precondition-1 params)
               (error "Boy, that was bad input")]
              [(fails-precondition-2 params)
               (error "No, it shouldn't do that either)]
              [else
               (let kernel ([a 1]
                            [b 2])
                 ...)])))

  or

        (define husk
          (lambda (parms)
            (let ([kernel (lambda (a b) ...)])
              (cond
                [(fails-precondition-1 params)
                 (error "Boy, that was bad input")]
                [(fails-precondition-2 params)
                 (error "No, it shouldn't do that either)]
                [else
                 (kernel 1 2)]))))

_Do we need a helper for problem 6?_

> You should not need a helper for probem 6.

_For problem 3, can we use a recursive helper?_

> Not if you want to receive credit for the problem.

> You will need to use `map` or `repeat` or `for-each`.

_What is the goal in problem 3?_

> See the whiteboard

_Can I do extra work and prevent a swap in problem 3 from using the same location?_

> Sure.  But it will be harder.

_What's the difference between problem 2 and problem 3?_

> Problem 2 swaps one pair of elements with specified indices.

> Problem 3 swaps n pairs of elements with random indices.  It probably uses
  your solution to problem 2.

_What should I do if I can't solve problem 2?_

> Write problem 3 pretending that you correctly solved problem 3.  But you won't
  be able to test.

_Should we document tree-balanced? in problem 6?_

> Yes.  The rule is "document unless told otherwise".


Additional images
-----------------

Debriefing from image analysis
------------------------------

Students discuss programming techniques
---------------------------------------

Programming challenges
----------------------


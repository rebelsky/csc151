Learning Outcomes
-----------------

* There are a host of errors we see in procedures. 
* Tests can help us identify those errors.
* But that means we have to think carefully about possible cases for
  the procedure.
* And we find that as we do more tests, our code gets longer.
* Sometimes we can see problems better than we can write code that tests
  for those problems.

Postconditions for `center-at`
------------------------------

* Correct position
* Correct width and height
* Correct image (shape and color)

Testing `center-at`
-------------------

* Different starting points: origin, each quadrant, axes, whole and fractional
  positions, exact and inexact positions.
* Different ending points: origin, each quadrant, axes, whole and fractional
  positions, exact and inexact positions.
* Shapes: Squares, circles, non-square rectangles, non-circular ellipses.
* Sizes: unit, large, small
* Colors: At least one in which we've changed the color

Making Testing More Efficient
-----------------------------

* If your code is the same, write something that's common.  
* See the extras on the lab.

Old Notes
---------

*The following notes are from a previous offering.*

Using testing to assess candidate solutions
-------------------------------------------

* Standard testing model:
    * Hypothesis: This procedure is correct.
    * Experiment: If the procedure is correct, it should have *this behavior*
      on *these inputs*.
        * Ideally, write in such a way that it's easy to rerun: Protocol
          in bench science, test suite in CS.
    * Conclusion(s): "It's broken" or "It seems to work"
* Note: The more experiments that succeed, the more confident you are,
  provided the experiments test different values.
* An additional model from the lab
    * Problem: We have multiple procedures, some of which are likely incorrect.
    * A good test suite should let us identify which are incorrect.
    * Once we've eliminated all of the incorrect ones, we hope to be left
      with the correct ones.
    * *We designed the problem this way to help you think about the kinds of
      tests you write.*  If you write a good test suite, you will eliminate
      most of these procedures.
    * The errors in the various versions are ones we've seen in student
      code.
* Good testing requires some imaginative thinking: Are there inputs that
  are different than the ones I've already tried?

A problem in testing
--------------------

* How can we be confident that a `classify-triangle` procedure is correct?
* We consider its formal definition.

        ;;; Procedure:
        ;;;   classify-triangle
        ;;; Parameters:
        ;;;   side1, a rational number [unverified]
        ;;;   side2, a rational number [unverified]
        ;;;   side3, a rational number [unverified]
        ;;; Purpose:
        ;;;   Determine the kind of triangle the three sides describe.
        ;;; Produces:
        ;;;   classification, a string 
        ;;; Preconditions:
        ;;;   side1, side2, and side3 together describe a triangle [verified]
        ;;; Postconditions:
        ;;;   If all three sides are equal, classification is "equilateral".
        ;;;   If exactly two sides are equal, classification is "isosceles".
        ;;;   If no two sides are equal, classification is "scalene".

* We start with some simple tests.

        (require triangles/tri-0000)
        (define triangle-tests
          (test-suite 
           "Testing classify-triangle"
           (test-case "unit side length equilateral triangle"
                      (check-equal? (classify-triangle 1 1 1) "equilateral"))))
        (run-tests triangle-tests)

* That's one test.  What are some others?
* We should check for isoceles triangles.

           (test-case "simple isosceles triangle"
                      (check-equal? (classify-triangle 2 2 3) "isosceles"))

* Is that the only way to write an isosceles triangle?  Does it matter?
  Let's try another.

           (test-case "simple isosceles triangle"
                      (check-equal? (classify-triangle 2 2 3) "isosceles"))
           (test-case "simple isosceles triangle"
                      (check-equal? (classify-triangle 3 2 2) "isosceles"))

Improving your tests
--------------------

* As you write tests, you'll sometimes find that you want to write
  very similar tests.  For example, I might want to try all three
  isosceles triangles with side lengths 2, 2, and 3 as well as all
  isosceles triangles with side lengths 10, 10, and 15.
* Rather than copying and pasting the same three lines over and over
  again, I might write a helper procedure.

        (define isosceles-tests
          (lambda (message same other)
            (test-suite
              message
              (check-equal? (classify-triangle same same other) "isosceles")
              (check-equal? (classify-triangle same other same) "isosceles")
              (check-equal? (classify-triangle other same same) "isosceles"))))
        
* Now in my main suite, I can write

            (isosceles-tests "isosceles: same 2, other 3" 2 3)
            (isosceles-tests "isosceles: same 3, other 2" 3 2)
            (isosceles-tests "isosceles: same 10, other 15" 10 15)
            (isosceles-tests "isosceles: same 1/2, other 1/3" 1/2 1/3)

* You'll see this approach on the exam.

CSC151 2015F, Review Session 04 - 2015-09-24
============================================

_Overview_

* We gather preliminary questions and arrange them.
* I attempt answers.
* More Q&A, as appropriate.
* We do some sample quiz questions.

Administrative Q&A
------------------

_Really important question that you had to be here to hear._

> Really important answer that can never be repeated.

_Will you put our grades on PWeb?_

> No.

_How will we know how we are doing?_

> I will send you email once in a while.  Probably late next week.

> You should know how you are doing from the quizzes you receive.

_How will we know if we are failing?_

> APRs.  (Academic Progress Reports.)  Midsem grade reports for first-year
  students.

Questions and Answers
---------------------

_Do I need an intuitive understanding of modulo?  How does it relate
 to remainder?_

* For positive numbers, modulo is just like remainder.
* Useful for making cycles.

        (define remainder-3
          (lambda (val)
            (remainder val 3)))

        > (map remainder-3 (iota 20))

        '(0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1 2 0 1)
        > (map (section remainder <> 4) (iota 20))
        '(0 1 2 3 0 1 2 3 0 1 2 3 0 1 2 3 0 1 2 3)


        > (map (section - <> 5) (iota 20))
        '(-5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14)
        > (define nums (map (section - <> 5) (iota 20)))
        > nums
        '(-5 -4 -3 -2 -1 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14)

Modulo is useful when we want positive cycles

        > (map (section remainder <> 4) nums)
        '(-1 0 -3 -2 -1 0 1 2 3 0 1 2 3 0 1 2 3 0 1 2)
        > (map (section modulo <> 4) nums)
        '(3 0 1 2 3 0 1 2 3 0 1 2 3 0 1 2 3 0 1 2)

_How were we supposed to do the stupid `image-variant` question on
 the exam?_

> We'll assume that you've written `irgb-bound-components`.

> What form does `image-variant` take?  `(image-variant image color-proc)`

> For this problem, what do we need the procedure to do?  Bound the 
  components between 64 and 128.

        (define bound-64-128
          (lambda (color)
            (irgb-bound-components color 64 128)))
        (define image-mid
          (lambda (image)
            (image-variant image bound-64-128)))
        (define image-mid
          (lambda (image)
            (image-variant image (section irgb-bound-components <> 64 128))))
 
_The purpose in the six P's can be hard to do when it's combined with
 code reading.  Can we look at the exam question?_

        (define fun
          (lambda (n i)
            (quotient (remainder n (expt 10 (+ i 1))) (expt 10 i))))

> As we play with this, we might observe a pattern.  Or we could try
  doing the parts by ourselves.

Sample Quiz Questions
---------------------

* Drawings as values
* Testing
* Boolean values

Three kinds of questions (you'll probably only get two)

* Write a procedure to do ____.
    * Two inputs: w, h.  Create a red rectangle of width w and height h
      centered at (100,100)
    * Given a color, determine if the red component is less than 100.
    * Given two drawings, determine if the left edge of the first is
      to the left of the right edge of the second.  `drawing-left` and
      `drawing-width` are available to you.
* Read this code and give the output.
    * (define d1 (vshift drawing 25 (hshift-drawing 50 (scale-drawing 100 drawing-unit-circle))))
    * (define d2 (scale-drawing (vshift drawing 25 (hshift-drawing 50 drawing-unit-circle))))
    * (define d3 (recolor-drawing "red" (scale-drawing 0.5 d2)))
    * (image-show (drawing->image (drawing-compose d1 d2)) 100 100)
    * What are the width and height or left and right of each drawing?
* Read this might include Booleans
    * (and (or 2 4) (or #f 5))
* Write a test for this procedure.
    * ...

(and (or 2 4) (or #f 5))

> Rule: "`or` returns the first non-false parameter (or false, if all
  parameters are false)

> Rule: `and` returns #f if any of the parameter are false, the last 
  parameter if all of the parameters are non-false

> How Scheme evaluates?

        1. We have an and!  Look at the parameters one by one.

        2. The first parameter is `(or 2 4)`  We need to evaluate that

        2a. We have an `or`!  Look at the parameters one by one.

        2b. The first parameter is 2.  2 is not false.  We return 2.

        3. We've evaluated the first parameter to `and`.  It's not false.
        Go on to the next one.

        4. The next parameter is `(or #f 5)`.  It's an expression.  We
        need to evaluate it.

        4a. We  have an `or`!  Look at the parameters one by one.

        4b. The first parameter is `#f`.  That's false.  We need to look
        at the next one.

        4c. The next parameter is 5.  That's not false.  We return 5.

        5. We've run out of things in the `and`.  We return the last
        value.  It's 5.

Don't forget the value of `(and)` and `(or)`

Can you write a sample test procedure?

* Suppose someone writes a procedure that is supposed to bound the
  compoents of an RGB color to be between 64 and 128.  Describe in
  English the tests you would do.
    * Give input colors you would test and the outputs you would expect.
* Suppose someone writes a procedure `(center drawing x y)` that is
  supposed to center a drawing at the point (x,y).  Give input drawings
  that you would use in your tests.

Expect

* These are a few obvious cases.
* These are some more difficult cases.
* These are edge/corner cases - the really strange ones.

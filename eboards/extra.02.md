CSC151.02 2014S: Extra Session 2
================================

Overview

* Admin
* Q and A

Admin
-----

* I have to leave at 4pm.

Questions
---------

_What is on tomorrow's quiz?_

> Quizzes are cumulative, but tend to focus on recent topics.

> This week's "recent topics" are drawings as values, procedures.  We'll probably
  either give you a drawing and ask for code, or give you a code and ask for the
  drawing.  We'll also ask you to write a procedure. 

> We won't ask anything hard about `modulo`, although mod is useful for cycling
  through values.

_Why did you make us learn symbols if we're not really using them?_

> Um ... tradition?

_Could you explain a bit more about modulus?_

> I think of modulus as a nice way of cycling through numbers.  We count up to
the modulus.  When we reach the modulus, we go back to zero, without writing
the modulus

    (modulo x y)

    x:             ... -5 -4 -3 -2 -1  0  1  2  3  4  5  6  7  8 ...
    (mod x 3)           1  2  0  1  2  0  1  2  0  1  2  0  1  2
    (mod x 4)                          0  1  2  3  0  1  2  3  0 ...

> Alternately: It's like "positive remainder"

_Can you explain the `image-show` thing?_

> We will be working with more than one model of what a picture is.

> An `image` is something we can easily display.  And we present them as numbers.

> Drawings need to be converted to images with `drawing->image`.

_How about with lambda?_

> Eventually, we get sick of typing image-show and drawing->image, so we define
a procedure to help out.

        (define small-preview
          (lambda (drawing)
            (image-show (drawing->image drawing 100 100))))


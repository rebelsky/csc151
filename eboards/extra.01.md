CSC151.02 2014S: Extra Session 1
================================

Admin
-----

* You ask questions.
* I attempt to give answers.

Questions
---------

_How would you suggest that I do the lab writeup more concisely?_

    (define sum-of-grades (+ grade1 grade2 grade3 grade4 grade5))
    (define average-grade (/ sum-of-grades 5))
    (define min-grade (min grade1 grade2 grade3 grade4 grade5))
    (define max-grade (max grade1 grade2 grade3 grade4 grade5))
    (define weighted-average (/ (- sum-of-grades min-grade max-grade) 3))

_Can you clarify the difference between a parameter and a variable*?_

> A *parameter* names an input to our program or subroutine.  A *variable*
names a value computed or built along the way.  In the code above, we could
think about `grade1`, `grade2`, etc as the inputs to the grade calculation,
and `sum-of-grades`, `min-grade`, and `max-grade` as variables we compute 
along the way.

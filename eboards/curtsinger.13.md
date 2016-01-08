CSC151.02 2015F, Class 13: Testing Your Procedures, Revisited
=============================================================

* Continue partners.

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
    * Quiz.
* Group Testing Exercise.
* Lab.

Preliminaries
-------------

### Admin

* SR not CC
* Beware!  It's Friday the 13th (day of class)
* Friday PSA.

### Upcoming Work

* Reading for Monday
  Boolean Values and Predicate Procedures
* [Exam 1]
    * Electronic version next Tuesday
    * Printed version next Wednesday
* No writeup!

### Extra Credit Opportunities

#### Academic

* John Gerrard talk, "Corn Bomb", Monday at 8pm
* No CS Table next week - It's advising week!
* Wednesday CS Extra Next week, 4:15 in 3821: Ursula Wolz on Building
  Coding Communities
* Thursday CS Extra Next Week, 4:15 in 3821: SamR on The Architecture of
  Mediascript

#### Peer Support

* Lots of parents weekend events
* 4pm Dance at Bear Multipurpose Dance Room for Latin Heritage Month

### Questions
 
_Can I use `<>` multiple times in section?_

> Yes.  Each is treated as a separate input.

> You probably won't want to do this with one call to `section` on problem 1.

> Composition is your friend.

_I feel like I saw something really like problem 2 somewhere.  Can you
 tell me where?_

> Homework assignment 3.

_Do we have homework in addition to the exam?_

> No!

_How should we provide examples?_

> Write in interactions pane.  Copy, paste, comment out with semicolons.

_What should we do if something says "the highest component of a color"
 and two components are equally large, such as `(irgb 200 0 200)`._

> Option 1: It's up to you which of the largest components you use.

> Option 2: Good specifications - Failed to meet preconditions - Whatever
  you want.

_What should we do if people don't meet the preconditions?_

> If you say that the preconditions are "verified", you must issue an
  error message.

> If you say that the preconditions are "unverified" (or you don't say
  anything about their being verified), the assumption is that youre
  procedure can do *anything* if they are not met.

_Should that question help me think about problem 2?_

> Probably.

Key ideas in testing
--------------------

* Useful to think about what procedure is supposed to do; helps clarify
  our approaches.
* Not easy to write good tests.
* Test some "obvious things"
* Think about "edge cases" or "corner cases" - The things at boundaries
  where stuff might go wrong
* Requires practice

Testing Exercise
----------------

_What tests would you write for the following procedure?_

<pre>
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
</pre>

* At least one of the sides is negative should result in an error
  `(check-error (classify-triangle -2 -2 -3))`
* Numbers really close to each other
  `(check-equal (classify-triangle 2.00001 2.00002 2.00003) "scalene")`
* Exact and inexact
  `(check-equal (classify-triangle 8 8 8.0) "equilateral")`
* Some non-triangles
  `(check-error (classify-triangle 2 2 5))`
  `(check-error (classify-triangle 0 0 0))`
  `(check-error (classify-triangle 2 2 4))` ; A degenerate triangle
  `(check-error (classify-triangle 2 5 2))`
  `(check-error (classify-triangle 5 2 2))`
* Things that aren't rational
  `(check-error (classify-triangle 2+3i 3+4i 3+2i))`
* General questions that we're not quite sure the answer about
  `(check-equal (classify-triangle (sqrt 2) (sqrt 2) 2) "isosceles")`
* Something obvious
  `(check-equal (classify-triangle 7 7 7) "equilateral")`
  `(check-equal (classify-triangle 3 3 3) "equilateral")`

Finish Lab
----------

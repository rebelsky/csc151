CSC151.02 2014S, Class 14: Transforming Images
==============================================

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming work.
    * Questions on the exam.
* The big picture: Functions as values.
* Questions on today's topics.
* Lab.

Preliminaries
-------------

### Admin

* I won't be able to hold a review session this week.  I apologize.
* Don't forget that we generally can't see the effects of the pixel
  operations if the image is already visible.
* Don't forget that we generally can't refer to an image if you've
  closed it in Gimp.
* Both the graders and I remain a bit behind.  
* Extra credit: 
    * Thursday extra, Thursday @ 4:30 p.m., Sci. 3821, Red/Black trees.
    * CS Table Friday @ noon: Law, Order, and Computers
    * Royce Wolf Piano, Wednesday, Noon, Sebring-Lewis
    * Opera Iowa: The Elixir of Love, Thursday, 7:30, Roberts

### Upcoming Work

* Exam 1 due tonight!
    * Bring printed copies to class tomorrow:  Stapled, with your name
      on every page, signed and dated (if possible), etc.
* Wednesday's reading: Homogeneous Lists
* Lab writeup: Exercises 3 and 7a
    * Subject: CSC 151.02 Writeup 10: Transforming Images (YOUR NAME)

### Questions on the Exam

_Do the academic honesty statements really need to be a separate page?_

> No, but it's convenient.

_How should we cite?_

> "I used *this procedure* which I wrote on *this lab* with *this incredibly
  helpful and friendly colleague*

_Do we need to sign the electronic copy?_

> No.

_Should we include the code for the drawings that we're using?_

> No, if it's included in the exam code we distributed.

> Yes, if it's not included in the exam code.

_Does a test suite suffice as an example?_

> Yes.

_Do we need to explain the values we chose to test?_

> No, but a short note may not hurt.

_What happens when my military->civilian does everything but 0 and 12?_

> You should note that you've found the problem.

> You'll get partial credit.

> And if you have two procedures that each partially get it, I'll look
  at both.

_Should I attach or print drawings?_

> No.

The Big Picture: Functions as Values
------------------------------------

* image-transform is magic.  It applies a transformation to every pixel
* Form (image-transform image color-transformation)
* Subtle thing: Procedures are appearing in a different place
    * Traditionally (PROCEDURE INPUT)
    * Now (PROCEDURE ... ANOTHER-PROCEDURE)

Questions
---------

Lab
---



Things to make our brain hurt.  How do you invert redder, for the colors for
which you can invert redder?

    (define anti-redder (o irgb-complement irgb-redder irgb-complement))

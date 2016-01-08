CSC151.01 2015F, Class 10: Side Effects: Output and Input
=========================================================

* New partners!
    * Grab a card from the stack.
    * Identify the location of the new computer.
    * Drop the card in the jar.
    * When both of you are at the computer, introduce yourselves.
* Also: Grab a copy of "How Pair Programming Really Works".

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * About Quiz 2.
    * Homework Questions.
* Lab.

Preliminaries
-------------

### Admin

* Review sessions:
    * Wednesday, 8pm (Zachary)
    * Thursday, 10am (Sam)
    * Thursday, 8pm (Erin)
* Today's lab *should* help on some of the order-of-evaluation questions
  that some of you have been experiencing.
* If you have questions you'd like me to answer, you can write them on
  blank index cards and hand them to the mentors.  I'll send out answers
  tomorrow.

### Upcoming Work

* Read for Tuesday:
  [Documenting Procedures](../readings/documentation-rgb-reading.html)
* [Assignment 3](../assignments/assignment.03.html) due Tuesday @ 10:30 p.m.
    * Your partner is the person who you worked with Wednesday and Friday.
* Exam 1 to be distributed *Wednesday*.
* Lab writeup (due before class Wednesday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 10 (Your Names)_
    * Exercise: 4b

### Extra Credit Opportunities

#### Academic

* Tuesday, noon, CS Table, JRC 224C.  Hacking Cars.
* CS Extras, Wednesday at 4:15 in 3821, Jonathan Wellons '04 from Google.
* Convo Thursday at 11 am in JRC 101: Mike Latham.

#### Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 1:30
  and Mondays at 4:45.  Requires sign up in advance.
* Pun Club, Saturdays, 4pm, Way over Younker.
* Singers concert on Family weekend!  Sept. 26, 2pm., probably Sebring-Lewis
* Orchestra concert on Family weekend!  Sept. 26, 2pm., probably Sebring-Lewis
* Softball alum game 9am on Sunday

### Quiz 2 Returned

* Generally good.  Congratulations!

#### Problem 1

We expected something like the following.

    (define cube (section expt <> 3))

Some of you tried to use `*`, but each `<>` is a *separate* input.

#### Problem 2a

    (define fave (irgb 250 0 42))
    (irgb-complement fave)
    > (irgb->string fave)
    "250/0/42"

This problem was to remind you that `irgb-complement` does *not* change
`fave`.  Rather, it computes a new color.  That's similar to 

    (define num 5)
    (square num)
    > num
    5

The behavior of `irgb-complement` and `square` contrasts a bit with the
kinds of procedures we're playing with today.

Problem 2b

    (define fave (irgb 250 0 42))
    (define fave2 (irgb-darker (irgb-lighter fave)))
    > (irgb->string fave2)
    "239/0/42"

An important point from the labs was that `irgb-lighter` and `irgb-darker` cap
when you reach the extreme values (0 and 255).  So the red component of
`(irgb-lighter fave)` is 255.  When you subtract 16, we end up with 239.

### Homework Questions

_For a latter problem, we've written `irgb-rotate-hue` to take two parameters
but `image-variant` expects a procedure that takes only one parameter.
What do we do?_

> You want to write `(image-variant IMAGE proc)`; you can't write
  `(image-variant IMAGE irgb-rotate-hue)`.  (Yes, I've just restated
  your question.)

> You should know how to turn a two-parameter procedure into a one-parameter
  procedure by filling in one of the parameters with a value.   

_If we have two answers that we think are equally good, should we
provide both?_

> Sure.

_Do you want examples from interactions, too?_

> Yes.  Copy and paste into definitions pane, and then use "comment out
  with semicolons."

_For the extra credit, what should we do when the chroma is 0?_

> You should handle that case appropriately, giving a hue of 0.

> And you *can* (**should**) do that without using an `if` expression.

_The `hsv` procedure didn't work._

> Make sure to run `/home/rebelsky/bin/csc151-update` again.

> Computers are sentient and malicious.

> Try asking a tutor.

Lab
---

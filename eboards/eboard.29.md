CSC151.02 2014S, Class 29: Pause for Breath
===========================================

_Overview_

* Preliminaries.
    * Admin.
    * Questions on the exam.
* Topics.

Preliminaries
-------------

### Upcoming work

* Reading for tomorrow: Preconditions, Revisited
* No new lab writeup.  Feel free to continue work on Friday's writeup.
* Continue to work on the exam.

### Admin

* I probably won't be caught up on grading until after break.  Sorry.
* Sorry for the confusion on Friday's lab.  We had rearranged topics and
  hadn't caught all of the prerequisite assumptions.
* Continue with your partners from Friday.
* Extra credit: 
    * Artist in Residence Tour tonight Main Quad 7:30

### Questions on the exam

_Can I assume that the values in the list for `nearest` are in ascending order?_

> No.

_If I write a helper for `nearest` can I have more than two parameters for that
helper?_

> Yes.  You'll probably need more than two.

_Do I need to document my helpers?_

> A one-line piece of documentation will suffice.  (You'll think about it better
writing the six P's, but it's not necessary.)

_How can I not die on the nearest procedure?_

> We've written similar procedures before.  So look through the readings and
identify an appropriate pattern.  `nearest` is looking for the "best" of a 
set of values.  `drawings-leftmost` and `irgb-brightest` do the same.

_Can I ask Kim the mentor for help on the exam?_

> Given that last response, it seems risky.  But no, you may not ask Kim for
direct help.  You can, however, ask her to explain things from past readings
and lab.  "Kim, I don't understand `drawings-leftmost`.  Can you explain how
it works?"  You also can't ask Kim your colleague.

_Let's run through an example by hand?_

   (nearest 29 (list 19 4 64 1 32 11))

      value     best-so-far     remaining

      29        19              '(4 64 1 32 11)
      29        19              '(64 1 32 11)
      29        19              '(1 32 11)
      29        19              '(32 11)
      29        32              '(11)
      29        32              '()

_What's a unit of text?_

> A function name, parameter, value, or keyword.

_On problem 3, when we're flattening without conditionals, can we use procedures
that you didn't give in the hint?_

> Yes.  You'll probably need +, -, *, or /.

_Can you give me another hint on question 3?_

> Sure: 0 = 0*64, 64 = 1*64, 128 = 2*64, 192 = 3*64 and 256 = 4*64.

> So think about turning ranges into the multipliers.

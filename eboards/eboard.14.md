CSC151.01 2015F, Class 14: Boolean Values and Predicate Procedures
==================================================================

* New partners!
    * Grab a card from the stack.
    * Identify the location of the new computer.
    * Drop the card in the jar.
    * When both of you are at the computer, introduce yourselves.
* Welcome prospective students (if there are any)

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Lab.

Preliminaries
-------------

### Admin

* Review sessions:
    * Wednesday, 8pm (Zachary)
    * Thursday, 10am (Sam)
    * Thursday, 8pm (Caleb)
* I graded all of the lab 12 and lab 13 writeups I had received by 8pm on
  Sunday night.  The rest will be graded significantly later.
* If you find that you are struggling, we do have individual tutors available.
* Let me know if you have questions on the quiz (other than my stupid
  answer to problem 1)

### Upcoming Work

* Reading for Tuesday 
  [Drawings as Values](../readings/drawings-late-reading.html)
* [Exam 1](../assignments/exam.01.html) 
    * Electronic due Tuesday at 10:30: <http://bit.ly/151-2015F-exam1>
    * Printed version due Wednesday at start of class.
    * Epilogue due Wednesday at 10:30: <http://bit.ly/151-2015F-exam1epi>
* Today's Lab writeup (due before class Wednesday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 14 (Your Names)_
    * Exercise: 1c, implement `greyish?`

### Extra Credit Opportunities

* I remain a little behind in responding to these.  Sorry!

#### Academic

* Any visit to the current show in the Faulconer gallery
* John Gerrard talk, "Corn Bomb", tonight at 8pm.  Bucksbaum 152, we think.
* No CS Table this week - It's advising week!
* Wednesday CS Extra this week, 4:15 in 3821: Ursula Woltz on Building
  Coding Communities
* Thursday CS Extra this Week, 4:15 in 3821: SamR on The Architecture of
  Mediascript

#### Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included), Sunday at 4:45, and Mondays at 4:45.  Requires sign up in 
  advance.  Fundraiser thing coming soon.
* Pun Club, Saturdays, 4pm, Way over Younker.
* Singers concert on Family weekend!  Sept. 26, 2pm., Sebring-Lewis
* Orchestra concert on Family weekend!  Sept. 26, 2pm., Sebring-Lewis

### Exam Questions

_I'm stuck on Problem 2.  Any hints?_

> Tell me what problem from HW3 you think it's closest to.

> Although it was not intentional that things worked out this way,
  use ideas from today's extras.  (I'd prefer that you not use this
  approach, but it's legal.)

_I'm stuck on Problem 5.  Any hints?_

> Try an `n` of `736145` and various values of `i`.

        > (fun 418265 1)
        6
        > (fun 418265 2)
        2
        > (fun 418265 3)
        8

_On question 4, do we have to take into account negative times?_

> I was trying to say the following in more polite terms: `add-times` is
  not defined with negative times, so it is wickedly stupid to try to 
  write tests with negative times.

_On question 2, what do we do when two numbers are largest?_

> Whatever you'd like.  You can always give the same answer.  You can
  give different answers.  You can make the computer explode in a shower
  of sparks.  You can give back 1, 2, or 3.  You can give back 0.

_On question 3, do we have to use the procedures you gave us?_

> CC and I spent literally days (or fractions thereof) writing those 
  procedures.  Of course you have to use them.

_On question 5, how do I figure out the numerator and denominator?_

> Follow the parens!

_How do you grade the exam?_

> I grade each problem on a ten point scale.  

> I add the seven scores together.  

> I multiply by 10/7.  

> I add the designated extra points (e.g., for recording times).

> If the grade is lower than 70 and the "there's more to life" requirements
  are met, I set the grade to 70.

> I subtract the designated penalty points (e.g., for failing to do
  the prologue or epilogue)

Lab
---

Writeup: 1c, `greyish?`

We are now hitting points in which Scheme thinks differently than humans.

        > (>= 8 1 5)
        #f
        > (>= 8 (and 10 200 2))
        #t
        > (>= 8 (and 10 2 200))
        #f

CSC151.01 2015F, Class 36: Randomized (Unpredictable) Drawing
=============================================================

* New partners!

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

* Exam 2 answer key distributed last night.
* Review sessions this week:
    * Wednesday, 8pm (Caleb)
    * Thursday, 10am (SamR)
    * Thursday, 8pm (Erin)
* In yesterday's discussion of repetition, I forgot to mention two `map`-like
  procedures: `(all pred? lst)` and `(any pred? lst)`.  They do what you'd
  expect.
* Why don't you use the evening tutors?
    * It's more productive to send Sam email.
    * Some of them are not familiar with the problems, so you have to
      explain the problems.  
        * We need to make sure that the tutors know the current assignments.
        * There is some advantage to explaining.
    * I'm not in the lab.
    * Hard to tell who they are.  We should force them to wear a stupid
      hat.
    * Different tutors have different Scheme skills.  Alex G has mentored
      this class twice
    * Our classmates are so awesome that we often go to them for advice,
      even through facetime.
    * Let's introduce the tutors to each class.
         
### Upcoming Work

* Reading for Friday: 
  [Pairs and Pair Structures](../readings/pairs-reading.html)
* [Exam 3](../assignments/exam.03.html) distributed.  
    * Corrections and questions are now welcome.
* Quiz 9 on Friday.
    * Named let and letrec.
    * Turtles.
    * Iteration: `repeat` and `for-each`.
* Today's Lab writeup (due before class Monday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 36 (Your Names)_
    * Exercises: 3d or 4a

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* Learning Deconstructed Workshop Series, Tuesdays at 11 in JRC 209.
  *I hear that the first session was very useful.*
* Any activity with Visiting Musician and Sound Artist Ellen Fullman.
  (Yes, that includes Drinks @ Lonnski's on Thursday.)
* *Convocation Thursday: The US Labor Market is a Mess.*
* CS Extras Thursday: Bluetooth, Robots, and CS 161.
* Sexual Misconduct at Grinnell College: Results from the 2013 and 2015 
  Sexual Conduct Surveys.  1-3 pm, November 8, JRC 101.
* *CS Table next Tuesday.*

#### Peer Support

* EC for ISO Food Bazaar.  Sam will reimburse the $10 if you feel that it's
  a financial stretch.  Tickets are on sale today, 11-1, 5-7.  ISO Food
  Bazaar is Nov. 15, 5-7 pm.  In Harris Gym/Concert Hall.
* Maybe an Alumni Game for Womens Basketball.

#### Regular Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included; felines only) and Mondays at 4:45.  Requires sign up in 
  advance.  PLEASE SIGN UP! More help is needed, and it's a de-stressor.
* Socrates Cafe', Saturdays, Younker, 2pm.
* Pun Club, Saturdays, 4pm, Way over Younker.

#### Upcoming Peer Support

* November 14, Orchestra Concert, Sebring Lewis, 7:30 p.m.
* Women's Basketball Opening Game, 1 pm, Nov. 15, vs. Silver Lake.
* One-act Festival Dec. 5 & 6.

### Questions

_Can we look at any and all?_

<pre>
> (all odd? (list 1 3 11 23))
#t
> (all odd? (iota 5))
#f
> (any odd? (iota 5))
#t
> (any odd? (list 'sam 'erin 'zachary))
. . lib/gigls/higher.rkt:44:13: odd?: contract violation
  expected: integer
    given: 'sam
> (all odd? null)
#t
> (any odd? null)
#f
> (all even? null)
#t
> (all weird? null)
. . weird?: undefined;
cannot reference an identifier before its definition
</pre>

* ES says: all goes through the list until it finds something false.  If
  it never finds anything false, it returns true.  Hence, `(all odd? null)`
  should be true.  (Similar argument for `any`.)

Lab
---

For the `pair-a-dice` problem, you may find it helpful to write

        (define tally-seven-eleven
          (lambda (n)
            (display (list "tallying" n "more dice")) (newline)
            ...))

Writeup is 3d or 4a

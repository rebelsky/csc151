CSC151.01 2015F, Class 08: Writing Your Own Procedures
======================================================

_New partners!_

* Grab a card from the stack.
* Identify the location of the new computer.
* Drop the card in the jar.
* When both of you are at the computer, introduce yourselves.

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Review.
* Procedures with Lambda Expressions.
* Lab.

Preliminaries
-------------

### Admin

* Mentor sessions Wednesday and Thursday at 8pm in the Commons.
* Sam review session Thursday at 10am in our classroom.
* We'll spend the start of class going over some of the key ideas from 
  the past week.  I hope you've brought lots of questions.
* On Friday, I will discuss mechanisms for working on CSC 151 outside of 
  Noyce.  (Or at least I'll distribute instructions.)
* Today's lab will continue into Friday's class.

### Upcoming Work

* Review today's readings for Friday:
  [Procedures](../readings/procedures-rgb-reading.html)
  [How Scheme Evaluates Expressions (take 2)](../readings/scheme-eval-2.html)
* [Assignment 3](../assignments/assignment.03.html) due Tuesday @ 10:30 p.m.
    * Your partner is the person who you are working with today and Friday.
* Quiz Friday!
    * RGB Colors, including functions on RGB colors
    * Basic image functions
    * Composition with `o`
    * Sectioning with `section`
    * Plus Scheme basics
    * *No* lambdas
* Lab writeup (due before class Monday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 8 (Your Names)_
    * Exercise: 1

### Extra Credit Opportunities

#### Academic

* _Don't Forget Convocation Tomorrow!_
  Convocation, Thursday, 11am, JRC 101, Global Health.
* CS Extra tomorrow at 4:15 in Science 3821 on System Administration
* Tuesday, noon, CS Table, JRC 224C.  Hacking Cars.

#### Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 1:30
  and Mondays at 4:45.  Requires sign up in advance.
* Pun Club, Saturdays, 4pm, Way over Younker.
* Singers concert on Family weekend!  Sept. 26, 2pm., JRC 101
* Orchestra concert on Family weekend!  Sept. 26, 2pm., place TBD (S-L)
* Les Duke on Saturday.  Peers running at 10:45ish, but any time is okay
  (30 min min)
* Public events series Abraham in Motion Sat at 7:30.  TICKETS NEEDED!
  Bucksbaum box office.

### Questions

Review
------

* What are the components of algorithms?
* Which of those have we learned to do in Scheme?
* What other questions do you have about what we've covered so far?
  Write them on cards, one question per card.

Components of algorithms

* Variables - Values that we can store; we name/define them ourselves
  We can do this in Scheme with `(define NAME VALUE)` or
  `(define NAME EXPRESSION)`.  In the definitions pane.  Also in the
  interactions pane, but those are less permanent.
* Parameters - Inputs to our algorithms (or to subroutines).  (We're
  just starting to think about how to do this.)
* Subroutines - Things that will be done; *named* algorithms that contribute
  to our broader algorithm.  We can write these as expressions
  Use define again!  (E.g., `(define square (lambda (x) (* x x)))`)
  Parameters appear after the lambda.
    * You can use whatever name you want
            > (define ave2 (lambda (x y) (* 1/2 (+ x y))))
            > (ave2 10 20)
            15
            > (ave2 80 -50)
            15
            > (define ave2 (lambda (x y) 15))
            > (ave2 100 5)
            15
    * Can we write subroutines without using lambdas?  Yes!  Using
      section.  `(define add2 (section + <> 2))`  Also with `o`.
      `(define fun (o square increment))` - function that adds one and
      then squares.
    * Maybe by putting the steps in a file and then loading the file.
* Repetition - Write the same instructions again and again and again
  `image-variant` does repetition - it applies a color transform to every
  color/pixel in an image.
  Still need to learn more.
* Conditional - Like the "if then" things - making choices.  Still need
  to learn.
* Sequencing.  Parentheses plus inside-out evaluation.  Write a series
  of expressions; it does the first then the second then the third
  In experessions like (- (square 5) (square 4)), the squares get done
  before the subtract, but *we don't know which square gets done first*
  and *it shouldn't matter*.  Composition also creates a series of
  things to do (
* Basic operations and values: Math, RGB colors, ... Vocabulary!

Writing Procedures with Lambda
------------------------------

* What questions do you have about the reading?

Lab
---

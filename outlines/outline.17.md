Outline 17: Anonymous Procedures
================================

Held: Friday, 27 September 2013

Back to [Outline 16 - Homogeneous Lists: Making and Manipulating Groups of Drawings ](outline.16.html).
On to [Outline 18 - Turtle Graphics](outline.18.html).

**Summary**

We revisit procedures in Scheme.  We consider a variety of techniques
for writing *anonymous* procedures, procedures without names.

**Related Pages**

* Reading: [Anonymous Procedures](../readings/anonymous-procedures-reading.html)
* Lab: [Anonymous Procedures](../labs/anonymous-procedures-lab.html)
* [EBoard](../eboards/17.md) 
  ([Markdown](../eboards/17.md))
  ([HTML](../eboards/17.html))
  ([PDF](../eboards/17.pdf))

**Overview**

* What is a procedure?
* Describing procedures.
* Anonymous procedures.
* Anonymous procedures through lambda expressions.
* Other kinds of anonymous procedures.
* Lab.

**Administrivia**

* Welcome to any visiting parents.  We've planned the following exciting
  activities
    * Watch the professor discuss a llong, drawn-out list of administrative 
      issues
    * Watch your students ask questions!
    * Watch your students take a quiz!
    * Watch your students work on a project together
* Note for students: I will not lecture after the quiz.  Start the
  lab once you've finished the quiz.
* Continue lab partners!  
    * I'm probably moving to switching once per week.
    * After fall break, I may let you choose partners (but may require
      that you switch once per week).
* I think the optional class was useful for the few folks who showed up.
  You can see some notes on the EBoard.
    * We won't have the optional class Thursday the 3rd, as I'll be
      unavailable.
* Work for Monday: 
    * Work on [the homework assignment](../assignments/assignment.04.html)
    * Read [Turtle Graphics](../readings/turtle-graphics-reading.html)
    * Do Lab writeup 7: Exercise 5b-f from the Anonymous Procedures Lab
        * Due before class on Monday.  
        * Title: "CSC 151.02 Lab Writeup 7: Anonymous Procedures (*NAMES*)".
* A few of you have been confused about lab writeups
    * In general, due the next class.
    * You can find them in every EBoard and outline.
    * I'll work on putting them in the schedule, too.
* EC Opportunities:
    * CS Extras Thursday @ 4:30: Three Students on Student Sysadmin Work
    * CS Table Friday (Coding the Law)
    * Football, 1pm, Saturday against Beloit
    * Orchestra, 2pm, Saturday, Sebring-Lewis or somewhere similar
    * Knitting club, Saturday at 10am.  Do good and have fun!
    * More ...?
* Other things you might do (no EC, but possibly a good idea)
    * Swipe your P-Card at the Football or Soccer game
    * Poweshiek CARES March Thursday, Oct. 3.  Meet at Drake Library at 5 p.m.
    * GHS Homecoming Parade Thursday, Oct. 3.  If you've never seen a 
      small-town homecoming parade, it's worth it.  

What is a procedure?
--------------------

* One of the basic building blocks of programming.
* Essentially, an encapsulated algorithm
    * Takes some inputs
    * Generates some outputs

Describing Procedures
---------------------

Traditionally, we write something like

    (define *name-of-procedure*
      (lambda (*parameters*)
        *body*))

When applying a procedure, we effectively substitute the arguments we
call the procedure on for the parameters in the body, and then evaluate
the body.

Anonymous Procedures
--------------------

* Procedures without names.
* Useful when we just need a procedure once
    * Saves the need to define it (code is more concise)
    * Saves the need to document it
    * Makes code work on its own
* In Scheme, whereever you write a procedure name, you can also write
  the corresponding lambda expression.
* Very useful with <code>map</code>
* Examples
* `((lambda (x y) (* (+ x y) (- x y))) 2 3)`
* `(map (lambda (x) (* 5 (+ 1 x))) (iota 10))`

Other ways to build anonymous procedures
----------------------------------------

* Sectioning
* Composition

Lab
---

* Do [the lab](../labs/anonymous-procedures-lab.html).
* Be prepared to reflect.


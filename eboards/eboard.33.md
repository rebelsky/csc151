CSC151.01 2015F, Class 3*11: Turtle Graphics
============================================

* Continue partners.

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Quiz.
* Lab.

Preliminaries
-------------

### Admin

* Happy almost halloween!
    * Candy
    * Zachary made a recursive pumpkin (with one whole level of recursion)
* QQL day (questions, quiz, lab).
* [Notes on lab 30](../handouts/writeup.30.html) are still available.
* Exam 2 returned at the end of class.
    * Notes on exam 2 to be distributed over the weekend.
* Happy Birthday EG!
* Friday PSA.

### Upcoming Work

* Reading for Monday:
  [Iteration](../readings/iteration-reading.html) 
* [HW 6](../assignments/assignment.06.html) due next Tuesday.
    * May be a few bugs in part A.
* Looking ahead: Exam 3, Project Proposal, Project, Exam 4, Done.
* NO WRITEUP TODAY!  (But do the whole lab; you'll learn a lot, and maybe
  even have some fun.)

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* R.L. Stephens II events Friday.
* Expressing Yourself Inside and Outside the Classroom: A Faculty Panel.
  Friday, noon, JRC 209. (With Prof. Katya, SamR, Prof. Praitis,
  Prof. Willig Onwuachi, and Prof. Byrd)
* CS Table Tuesday: Why people support and bully online.
* Sexual Misconduct at Grinnell College: Results from the 2013 and 2015 
  Sexual Conduct Surveys.  1-3 pm, November 8, JRC 101.

#### Peer Support

* Thursday at 7pm, Womens BBall (scrimmage vs MCC)
* Spark Tank, Wednesday, 7pm in Roberts Theatre in Bucksbaum.
* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included), Sunday at 4:45, and Mondays at 4:45.  Requires sign up in 
  advance.  
* Socrates Cafe', Saturdays, Younker, 2pm.
* Pun Club, Saturdays, 4pm, Way over Younker.

#### Upcoming Peer Support

* November 14, Orchestra Concert, Sebring Lewis, 7:30 p.m.
* Women's Basketball Opening Game, 1pm, Nov. 15, vs. Silver Lake.
* One-act Festival Dec. 5 & 6.
* Showvember, Read the signs

### Other Good Stuff to Do

* Women's Soccer Saturday
* Men's Soccer Saturday
* Halloween event Saturday

### Questions

_What are the differences between functional and imperative?_

> Pure functional languages assume that when you call a function, it
  returns a new value and doesn't change anything.  Imperative langauges
  are all about change.

> Imperative languages often have a much more explicit order of evaluation

> Scheme is both functional and imperative.  (And object-oriented.)
  (And awesome.)

_For Part A on the homework, do you want a chunk of code or a procedure?

> I'd prefer a procedure, but the specifications don't make it clear,
  so I'd accept a chunk of code.

_Don't the line lengths vary already?_

> We'd like you to vary them more explicitly.  Make it a percentage of
  the distance from starting point to ending point.

Quiz
----

Problem 2 hint: Count UP!

Lab
---

NO WRITEUP TODAY!  (But do the whole lab; you'll learn a lot, and maybe
  even have some fun.)

        (define image-clear
          (lambda (image)
            (context-set-fgcolor! "white")
            (image-select-nothing! image)
            (image-fill! image)))

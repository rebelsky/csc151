CSC151.01 2015F, Class 39: Trees (well, really vectors)
=======================================================

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Vector lab, continued.
* Tree lab.

Preliminaries
-------------

### Admin

* Continue partners!
* We will finish the Vectors lab today and do the Trees lab another day.
* Review sessions this week:
    * Wednesday, 8pm (Caleb)
    * Thursday, 10am (SamR)
    * Thursday, 8pm (Erin)
* Office hours this week and next: MWF 8:30-9:00, 11:00-11:45, 1:00-2:00;
  Tu 1:00-2:00.
* I am home sick today.  Because of that, you have an extension on
  the exam until Thurday night.  When I have a chance, I will answer
  questions sent via email.
* When asking for help, it's important that you choose your procedure
  and variable names well, and that you document your procedures a bit.
  Neither I nor the tutors appreciate the overhead of dealing with
  something like

        (define fiddledidee
          (lambda (a b)
            (let kernel ([thinga ""]
                         [mabob (cons a b)])
              ...)))

* I've gotten reinforcement that Problem 5 is really easy once you think
  it through (of course, the statement was preceded by "Sam, you are evil").  
  So, to reiterate the Q&A section: 
    * `for-each` typically takes a procedure and a list as parameters.
    * Think about the form of the list that you will give as an argument to
      `for-each` in this problem.
    * Think about what type of value the procedure you give as an argument 
      to `for-each` will take as its input.
    * For example, what do you know about `x` in 
      `(for-each (lambda (x) ...) (iota 10))`?

### Upcoming Work

* Readings for Wednesday:  
  [Elements and Principles of Two-Dimensional Design](../readings/design-elements.html) and
  [About the Project](../assignments/project.html)
* Today's Lab writeup (due before class Friday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 38 (Your Names)_
    * Exercises:

### Extra Credit Opportunities

* If possible, send me these in advance.
* I apologize for any that I've left out.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* Learning Deconstructed Workshop Series, Tuesdays at 11 in JRC 209.
* CS Table Tuesday: Cryptographic Back Doors.
* Wilson talk Wednesday: Startup (in)Sanity.  7:30 p.m., ARH 102.
* CS Extras Thursday: Developing and Deploying Mobile Sensing Applications.

#### Peer Support

* Orchestra Concert, November 14, Sebring Lewis, 7:30 p.m.
* Women's Basketball Opening Game, 1 pm, Nov. 15, vs. Silver Lake.
* ISO Food Bazaar.  Nov. 15, 5-7 pm, Harris Gym/Concert Hall.
* Alumni Game for Womens Basketball 1pm on Saturday.

#### Regular Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included; felines only), and Mondays at 4:45.  Requires sign up in 
  advance.    MORE HELP NEEDED!
* Socrates Cafe', Saturdays, Younker, 2pm.
* Pun Club, Saturdays, 4pm, Way over Younker.

#### Upcoming Peer Support

* Tranaslations (a play).  Nov 19-23 or so.
* One-act Festival Dec. 5 & 6.

### Questions

Vector Lab, Continued
---------------------

Finish the vetor lab.

Tree Lab
--------

If you have time, start the tree lab.  We will continue it another day.

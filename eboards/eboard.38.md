CSC151.01 2015F, Class 38: Vectors
==================================

* New partners!
* More food-like substances.

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* A bit more about visual (and actual) representations of pairs and lists
* Lab.

Preliminaries
-------------

### Admin

* Exercise 1 on today's lab is intended to get you thinking carefully about
  what it means to change values in Scheme.
* Review sessions this week:
    * Monday, 8pm (Zachary)
    * Wednesday, 8pm (Caleb)
    * Thursday, 10am (SamR)
    * Thursday, 8pm (Erin)
* Office hours this week and next: MWF 8:30-9:00, 11:00-11:45, 1:00-2:00;
  Tu 1:00-2:00;  http://rebelsky.youcanbook.me
* Tuesday's reading is not yet ready.  Expect it this afternoon.

### Upcoming Work

* Reading for Tuesday: 
  [Binary Trees](../readings/binary-trees-reading.html)
* Exam 3 due tomorrow at 10:30 p.m.
* Exam 3 epilogue due Wednesday at 10:30 p.m.
* Today's Lab writeup (due before class Wednesday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 38 (Your Names)_
    * Exercises:

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* Learning Deconstructed Workshop Series, Tuesdays at 11 in JRC 209.
* CS Table Tuesday: Cryptographic Back Doors.
* Wilson talk Wednesday: Startup (in)Sanity.  7:30 p.m., ARH 102.
* CS Extras Thursday: Developing and Deploying Mobile Sensing Applications.

#### Miscellaneous

* Any of the Queer Culture Week events (including pub quiz).

#### Peer Support

* Friday, 8pm, Comedy Show in Bob's.
* Orchestra Concert, November 14, Sebring Lewis, 7:30 p.m.
* Women's Basketball Opening Game, 1 pm, Nov. 15, vs. Silver Lake.
* ISO Food Bazaar.  Nov. 15, 5-7 pm, Harris Gym/Concert Hall.

#### Regular Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included; felines only), and Mondays at 4:45.  Requires sign up in 
  advance.    MORE HELP NEEDED!
* Socrates Cafe', Saturdays, Younker, 2pm.
* Pun Club, Saturdays, 4pm, Way over Younker.

#### Upcoming Peer Support

* Translations (a play).  Nov 19-23 or so.
* One-act Festival Dec. 5 & 6.

### Questions

_On problem 5, is it okay if the brush is thicker than the one in the exam?_

> Yes.

_Why is it thicker?_

> At some point, GIMP changed the default brush.

Pairs, Etc.
-----------

Why are we doing pairs?  A few reasons.

* Get a "behind the scenes" understanding of lists.  Scheme really does
  build these structures with two boxes, each of which references 
  something else.
* Translating code to pictures and back again.
    * Any cons is *one* pair.
    * Almost every null is a slash within a pair.
    * Anything else, we draw an arrow to.
* How do we decide if something is a list?
    * Base case: null
    * Recursive case: x is a list if the cdr of x is a list.
      (Because you make a list by consing something on to the front of
       a list.)

Lab
---

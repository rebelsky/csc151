CSC151.01 2015F, Class 23: Revisiting Lists
===========================================

* Continue partners!  Pick a new computer since we're in a new room.

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

* Apologies for the bad design of this room.
* Thanks for finding the new classroom.  We may be in this room tomorrow,
  too, depending on the state of the elevator.
* EG complained that I don't bring you enough food.
* DON'T ABUSE THE ART!
* Reminder: We've thrown a *lot* at you this semester.
    * At least 100 vocabulary terms
    * Some syntax
    * A variety of concepts - some explicit, some that come from your
      assignments
    * **It's okay to ask questions, even on exams!**  I can choose
      whether or not to answer.
* Upcoming review sessions
    * Wednesday at 8pm (Zachary)
    * Thursday at 10am (Sam)
    * Thursday at 8pm (Caleb)

### Upcoming Work

* Reading for Wednesday:
  [Recursion Basics](../readings/recursion-basics-reading.html) 
    * Warning! For some, this will be even more confusing than
      `section`.  For others, it will be intuitive.  We will spend
      a few weeks trying to make it intuitive for everyone.
* [HW 5](../assignments/assignment.05.html) due tonight.
* Today's Lab writeup (due before class Friday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 23 (Your Names)_
    * Exercise: 
* [Exam 2](../assignments/exam.02.html) distributed.
    * We'll go through it quickly.
    * Probably lots of opportunities for corrections :-)

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery
* CS Table today: Barbie and the "Internet of Things"
* CS Extras Thursday: Blake Creasey on Watson

#### Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included), Sunday at 4:45, and Mondays at 4:45.  Requires sign up in 
  advance.  
* Pun Club, Saturdays, 4pm, Way over Younker.

### Other Good Things

* Friends of Drake Library book sale this weekend.  Community room.
  Friday 5-8 pm.  Saturday 8am-2pm.  Admission $3 on Friday and $0 
  on Saturday.  HC $1, PB $0.50.  Books usually $1/box after some time
  on Saturday (noon?).

### Questions

_Should #2 work on any function?_

> Yes, those were just examples.

_Does our procedure *have* to bound the y values?_

> No.  You can assume a 100x200 window.

_What's the difference between `left` and `column`?_

> `left` represents the left edge of an area.  It's a column, but columns
  can take on other values.

_When I'm picking the random column and row, what range should I choose from?_

> For the column, it should be a number between left and left+width-1.

_But `random` only gives me a value between 0 and n-1._

> Think about how to transform one range to another.  (Hint: Addition.)

_Do I need to document the procedures in part 3?_

> Yes.  But you can use just 4P's.

Lab
---

* Important lesson 1: If you have something you think is a list, and you
  see a dot in the middle of it, it's not a list, and at some point things
  will probably break.

* Important lesson 2: `car` and `cdr` don't care whether or not it's a 
  list, as long as it's created by `cons` (or is a non-empty list)
    * (car (cons a b)) = a
    * (cdr (cons a b)) = b

* Important lesson 3: Computer scientists usually count starting at 0
  (for cardinal numbers) 
    * The first element of a list is element 0
    * The second element of a list is element 1

* No writeup, but you need to make sure you understand this stuff.  It's
  essential for the rest of the semester.

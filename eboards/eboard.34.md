CSC151.01 2015F, Class 34: Iteration
====================================

* New partners!

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Contrasting `map`, `for-each`, `repeat`, and recursion.
* Lab.

Preliminaries
-------------

### Admin

* Quiz 8 returned. 
* New grades distributed Sunday night.  
    * No, you should not be up as late as I was.
* Exam 2 answer key forthcoming soon.  (Still some delays due to a variety
  of issues.)
    * Could student 572160 email me so that I can know who he/she/zi is.
* Review sessions this week:
    * Monday, 8pm (Zachary)
    * Wednesday, 8pm (Caleb)
    * Thursday, 10am (SamR)
    * Thursday, 8pm (Erin)

### Upcoming Work

* Reading for Tuesday: 
  [Geometric Art](../readings/geometric-art-reading.html).
* [HW 6](../assignments/assignment.06.html) due Tuesday night.
* Exam 3 to be distributed on Tuesday.
* Today's Lab writeup (due before class Wednesday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 34 (Your Names)_
    * Exercises: 1c

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* Learning Deconstructed Workshop Series, Tuesdays at 11 in JRC 209.
* CS Table Tuesday: Why people support and bully online.
* Sexual Misconduct at Grinnell College: Results from the 2013 and 2015 
  Sexual Conduct Surveys.  1-3 pm, November 8, JRC 101.
* CS Extras Thursday: Bluetooth, Robots, and CS 161.

#### Peer Support

#### Regular Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included), Sunday at 4:45, and Mondays at 4:45.  Requires sign up in 
  advance.  
* Socrates Cafe', Saturdays, Younker, 2pm.
* Pun Club, Saturdays, 4pm, Way over Younker.

#### Upcoming Peer Support

* November 14, Orchestra Concert, Sebring Lewis, 7:30 p.m.
* Women's Basketball Opening Game, 1pm, Nov. 15, vs. Silver Lake.
* One-act Festival Dec. 5 & 6.

### Other Good Stuff to Do

* VOTE on Tuesday

### Questions

_For part D, I want to share a really good hint with my classmates.  Is
that okay?_

> Yes.

_For part A2, if we vary the length of the line, what should we keep
constant?_

> The angle.

_For part A2, can we allow the user to supply other parameters?_

> You may allow the user to supply other parameters, or you can choose
them yourself.  The kernel can also keep track of more things.  (E.g.,
the current red, green, and blue component).

_For part A2, what is systematic but not constant?_

> Examples: Separate by 0, 1, 2, 3, 4, 5, 6, 7, ...; - gives 0, 1, 3, 6, 10, 15, 21, ...; Separate by 1, 2, 3, 2, 1, 2, 3, 2, 1, 2, 3, 2, 1, ....

_For part D, what do you expect in terms of what it should do?_

> A procedure that takes some information about where the recursive part
  should go and what size it is (and what angle it is).

_When we have two choices and want to do multiple things in each case,
what should we use?_

> You can't use an `if`, because it requires only one thing.  You can't
  use a `when`, because you have two choices.  Hence, use a `cond`.

        (cond
          [(test?)
           (thing1)
           (thing2)
           (thing3)]
          [else
           (cat)
           (hat)
           (bat)])

> Or the following thing that CC would never write.  The `cond` is prettier.

        (if (test?)
            (let ()
              (thing1)
              (thing2)
              (thing3))
            (let ()
              (cat)
              (hat)
              (bat))) 

_For the recursive image, should we assume that the entire image is being
recursed or only sections._

> It's much harder if you aren't keeping the whole image.  So you can try
  it, but it will be difficult.

Contrasting `map`, `for-each`, `repeat`, and recursion
------------------------------------------------------

* Tomorrow, tomorrow, ...., tomorrow, it's only a day away

`map`:

* Parameters:
* Input:
* Output:
* Operation:

`for-each`:

* Parameters:
* Input:
* Output:
* Operation:

`repeat`:

* Parameters:
* Input:
* Output:
* Operation:

`recursion`:

* Parameters:
* Input:
* Output:
* Operation:

Lab
---

Try using the brush "2. Hardness 100" with a size of 0.25 or so.

    (turtle-set-brush! turtle "2. Hardness 100" 0.25)

Writeup 1c

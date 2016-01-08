CSC151.01 2015F, Class 35: Mechanisms for Repetition
====================================================

* Continue partners.

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Four types of repetition.
* Lab.

Preliminaries
-------------

### Admin

* I am supposed to remind you that Friday is the Withdraw deadline.
* There are still flu vaccines left at SHACS.  
* Exam 2 returned.
    * While you may certainly discuss answers with your colleagues, please
      do not share your grade with colleagues.
* Exam 2 answer key forthcoming soon.  (Still some delays due to a variety
  of issues.)
* Review sessions this week:
    * Wednesday, 8pm (Caleb)
    * Thursday, 10am (SamR)
    * Thursday, 8pm (Erin)

### Upcoming Work

* Reading for Wednesday:
  [Randomness](../readings/random-drawing-reading.html).
* [HW 6](../assignments/assignment.06.html) due TONIGHT!
* [Exam 3](../assignments/exam.03.html) distributed in draft form.
    * No corrections until after class on Wednesday.
    * The code file is not yet ready.
* NO LAB WRITEUP.

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* Learning Deconstructed Workshop Series, Tuesdays at 11 in JRC 209.
* *Any activity with Visiting Musician and Sound Artist Ellen Fullman.*
  (Yes, that includes Drinks @ Lonnski's on Thursday.)
* CS Table Tuesday: Why people support and bully online.
* *CS Extras Thursday: Bluetooth, Robots, and CS 161.*
* Sexual Misconduct at Grinnell College: Results from the 2013 and 2015 
  Sexual Conduct Surveys.  1-3 pm, November 8, JRC 101.

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

* VOTE today

### Questions

_Do you have any observations after helping people with Part C?_

> Remember that when you decide to split the region, you have to recurse
  *twice* - either for the left half and right half, or for the top half
  and bottom half.

> Remember that `left`, `top`, `width`, and `height` all have to be
  integers.  In some cases,  you won't be able to divide exactly.

_What angle did you use for the swirly one?_

> I think I used (/ pi 32)..

> The original "painting" was made by selecting left:100, top: 50, 
  width: 200, height:260. 

> When replacing, I used left: 110, top: 60, width: 180, height: 240,
  which I think preserved the aspect ratio of the image.

Contrasting `map`, `for-each`, `repeat`, and recursion
------------------------------------------------------

`map`:

* Input: function and one or more lists
* Output: list
* Operation: It applies the function to each element of the list.
  The ith element of the output list is the result of applying the function
  to the ith element of the input list.
* Complexity (multiple lists): `(map + (list 1 2 3) (list 4 5 6))`
  For multiple lists, it takes the ith element of each input list and
  then applies the function.  
* Complexity: If the lists are different lengths, it tells you that you
  need the lists to have the same length lists.
* Complexity: The procedure needs to expect the appropriate number of
  parameters.

`for-each`:

* Input: function/procedure and one or more lists
* Output: We don't care; called for side effects
* Operation: It applies the function to each element of the list, ignoring
  the result.  (In contrast to `map`, which shoves the results together into
  a list).

`repeat`:

* Input: an integer (n), a procedure of zero or more parameters (proc),
  potential parameters to that procedure (val1, val2, val3, ...)
* Note: The procedure can have no parameters.
* Output: Irrelevant; called for the effect of calling procedure.
* Operation: Repeats exactly the same step again and again and again (n
  times)  Only useful if we have operations with side-effects.

`recursion`:

* Problem: No such function; It's more of a technique
* Input: Almost anything
* Output: Almost anything
* Operation: Repeatedly do something

If you go from a list to a list of the same length: `map`

If you do things mostly for side effects: `for-each` or `repeat`

General case: recursion

* Lists to numbers
* Numbers to lists
* Lists to different length lists
* Numbers to numbers
* ...

Lab
---

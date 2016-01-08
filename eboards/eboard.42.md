CSC151.01 2015F, Class "The Answer": Trees
==========================================

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

* Congratulations to MN!  (No, not to EG's home state.)
* A moment of silence for the peoples of Beirut and Paris, and to the
  many others who will be affected by the events there and the responses
  to those events.
* Exams returned at the end of class.
* Review sessions this week:
    * Monday, 8pm (Zachary)
    * Wednesday, 8pm (Caleb)
    * Thursday, 10am (SamR)
    * Thursday, 8pm (Erin)

### Upcoming Work

* Project Proposal: TONIGHT at 10:30 p.m.
* Project Pictures: Tuesday at 10:00 a.m.
* Projects: Next Tuesday at 10:00 a.m.
* Reading for Tuesday:
  [Higher-Order Procedures](../readings/hop-reading.html)
* Today's Lab writeup (due before class Wednesday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 42 (Your Names)_
    * Exercises: Exercise 4

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* Learning Deconstructed Workshop Series, Tuesdays at 11 in JRC 209.
* CS Table Tuesday: Social Media and Emergency Response
* *Scholars' Convocation Thursday: Cosmic Secrets: Soviet Space Exploration,
  Censorship, and the Cold War*.
* *Metropolitan Opera Simulcast, November 21, 11:30 a.m. Lulu by Berg, 
  Harris Cinema*.

#### Peer Support

* *Translations (a play).  7:30 p.m. Thursday through Saturday,
  2:00 p.m. Sunday.  Tickets at the Box Office*.

#### Regular Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included; felines only), and Mondays at 4:45.  Requires sign up in 
  advance.    MORE HELP NEEDED!
* Socrates Cafe', Saturdays, Younker, 2pm.
* Pun Club, Saturdays, 4pm, Way over Younker.

#### Upcoming Peer Support

* Women's Basketball vs. Beloit, Nov. 28 at 3:00 p.m.
* Women's Basketball vs. St. Norbert, Dec. 5 at 3:00 p.m.
* One-act Festival Dec. 5 & 6.
* Grinnell Singers, Dec. 6
* Women's Basketball vs. Carroll, Dec. 12 at 3:00 p.m.

### Questions

_Will you penalize me for missing class next Wednesday because the
 idiotic College thinks that noon buses are a good idea on a day
 when we have classes?_

> No.

_Will you still teach something that day that I'm expected to know?_

> Yes.  Do the lab on your own.

_I've discovered that you can `seed` the random number generator. 
 If you give it the same seed, it gives you the same sequence of
 numbers.  Can I use that idea?_

> I suppose so.  But you should still have something other than
  the randomly generated numbers that is computed based on N and
  guarantees 1000 different images.

_Do you have a good sample proposal?_

> No.

_How detailed should the initial technical statement be?_

> It can be pretty high-level.  Make sure you indicate the three different
  techniques and how you are using them.  Make sure to argue for 1000
  different images using something other than "predictably random".

Lab
---

Helper recursion will not work well for `sum`.  Use direct recursion,
using the pattern you've seen.

`number-tree-largest` will need a variant of tree recursion.  (You'll
need to think about different base cases and different recursive cases.)

* There are probably two base cases
    * The empty tree is an error
    * ...
* There are probably three recursive cases
    *
    *
    *

Make sure to check `(number-tree-largest (leaf -3))`, which should be -3.

`number-tree?` can be written elegantly using `and` and `or`.

Writeup: Exercise 4.

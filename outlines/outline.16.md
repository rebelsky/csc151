Outline 16: Homogeneous Lists: Making and Manipulating Groups of Drawings 
==========================================================================

Held: Wednesday, 25 September 2013

Back to [Outline 15 - Transforming Images](outline.15.html).
On to [Outline 17 - Anonymous Procedures](outline.17.html).

**Summary**

Today we explore Scheme's *list* data structure and some ways
to use lists to make interesting images.

**Related Pages**

* Reading: [Making and Manipulating Homogeneous Lists](../readings/homogeneous-lists-reading.html)
* Lab: [Making and Manipulating Lists of Drawings](../labs/lists-of-drawings-lab.html)
* [EBoard](../eboards/16.md) 
  ([HTML](../eboards/16.html))
  ([PDF](../eboards/16.pdf))

**Overview**

* Context: What and Why Lists?
* Building Lists.
* Mapping Lists.
* Other List Operations.
* Lab.

**Administrivia**

* I realize that there's crud going around campus.  Do yourself and your
  classmates a favor and get rest if you are sick.  Drop me a note to let
  me know.
* We have a new homework assignment.  The only thing my random procedure
  paid attention to was whether or not you asked to work alone.
* Continue lab partners!
* I'm going to have an optional class this Thursday at 1:15 (and, I hope, most
  Thursdays) as a chance to talk to folks about more things that might be
  useful or interesting.
    * We won't have the optional class Thursday the 3rd, as I'll be
      unavailable.
* Work for Friday: 
    * Review [the homework assignment](../assignments/assignment.04.html)
    * Read [Anonymous Procedures](../readings/anonymous-procedures.html)
    * Do lab writeup 5 if you haven't done so already.
    * Do lab writeup 6: Etercise 5 from the Lists of Drawings Lab
        * Due before class on Friday.  
        * Title: "CSC 151.02 Lab Writeup 6: Lists (NAME)".
* EC Opportunities:
    * CS Extras Thursday @ 4:30: Jennelle Nystrom on working at Microsoft
    * CS Table Friday (The Story of Mel)
    * Football, 1pm, Saturday against Beloit
    * Orchestra, 2pm, Saturday, Sebring-Lewis or somewhere similar
    * Folksyish music with Seth at Relish, Wednesday at 10pm
    * Knitting club, Saturday at 10am.  Do good and have fun!
    * More ...?
* Other things you might do (no EC, but possibly a good idea)
    * Facing the Bear, 7-9 pm Wednesday
    * Swipe your P-Card at the Football or Soccer game
    * Poweshiek CARES March Thursday.  Leave from Herrick at 4:45 p.m.
      Email chenjerem@gmail.com for more info.  I can also forward
      you the email.
    * Poweshiek CARES March Thursday, Oct. 3.  Meet at Drake Library at 5 p.m.
    * GHS Homecoming Parade Thursday, Oct. 3.  If you've never seen a 
      small-town homecoming parade, it's worth it.  (And last year's
      homecoming queen is a current Grinnell student.)


Context: What Are Lists?
------------------------

* Issue: We'd like to make images with lots and lots of similar shapes.
* Problem: How to do so systematically.
* Solution: Scheme's list data structure and some related procedures.
* We're learning a new type, so it's useful to figure out some basic
  issues.
  
Building Lists
--------------

* `(list val1 val2 ... valn)`
* `(make-list n value)`
* `(iota n)`

Mapping Lists
-------------

* Basic operation: `(map func lst)`.  Apply a function to
  each element of a list.
* For images, we'll find it easier to do something like <br>
  `(map drawing-transform list-of-drawings list-of-values)`

Other List Operations
---------------------

* `(append *lst1* *lst2*)` - join two lists
* `(reverse *lst*)` - just what it sounds like
* `(list-take *lst* *n*)` - take the first *n* elements of a list
* `(list-drop *lst* *n*)` - drop the first *n* elements of a list

Lab
---

* Do [the lab](../labs/lists-of-drawings-lab.html).
* Be prepared to reflect.



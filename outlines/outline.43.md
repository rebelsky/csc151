Outline 43: Association Lists
=============================

Held: Tuesday, 19 November 2013

Back to [Outline 42 - Analyzing Procedures](outline.42.html).
On to [Outline 44 - Higher-Order Procedures, Revisited](outline.44.html).

**Summary**

We consider *association lists*, a simple, but useful, technique
for organizing tables of information.

**Related Pages**

* Reading: [Association Lists](../readings/association-lists-reading.html)
* Lab: [Association Lists](../labs/association-lists-lab.html)
* [EBoard](../eboards/43.md) 
  ([Source](../eboards/43.md))
  ([HTML](../eboards/43.html))
  ([PDF](../eboards/43.pdf))

**Overview**

* Storing information in tables.
* Representing table entries as lists.
* Representing tables as lists.
* Association lists: Scheme's standard table representation.
* Implementing key association list procedures.

**Administrivia**

* Today's lab writeup (#25): Turn in 4, 5d, 6c
* There seem to be some occasional bugs in image-compute that result
  in square blocks of "noise" appearing in the image.  If this happens
  to you, please send me the code that does it.
* Upcoming extra credit opportunities:
    * CS Talk, Wednesday, noon, Noyce 3821.
      Writing Bug-Free Code with Theorem Proovers.
    * Hamlet, Friday (7:30pm), Saturday (7:30pm), Sunday (2pm).
    * Typhoon Halyan Relief benefit show, Sunday, November 24th from 7-9pm
      in Harris.  (If the entry fee is a burden, let me know and I'll
      give you the money.)
    * "Data Sovreignty: The Challenge of Geolocating Data in the Cloud",
      November 25, 4:15 JRC 101
    * Showing of "Gold Fever" by Andrew Shurburne '01 or so, 7:00 p.m.
      Monday, November 25, ARH 302
    * Tuesday, November 26, 4:15 p.m., JRC 209  a gaming event with the 
      game [d0x3d!]   Popcorn will be served.

Simple Database Problems
------------------------

* Databases are among the most common applications of computers. 
    * After all, there's a reason that Larry Ellison is nearly as rich
    as Bill Gates.
* A database is a mechanism for storing data
  so that you can easily access the data you need.
* One simple database activity is looking up values by *keys*.
* Databases that provide only that activity are called *dictionaries*.

Association Lists
-----------------

* In Scheme, dictionaries are typically implemented with a data structure
  known as the *association list*.
* An association list is a list of elements each of which
  has a key as its car.
* You can use the `(assoc *key* *list*)`
  procedure to look up values by key.

Searching in Association Lists
------------------------------

* Suppose Scheme didn't include `assoc`.  How would you write
  it?  Probably *recursively*.
* If the list is empty, it does not contain the value.
* If the key of the first element in the list is the key we're
  looking for, return the corresponding value.
* Otherwise, look in the rest of the list.
* This technique is called *sequential search*.

Variants of Association Lists
-----------------------------

* Given that we can write our own `assoc` procedure, we can
  easily implement a number of interesting variants of association lists.
* For example, if the same key appears multiple times in the association list, we might return *all* matching values (rather than the *first* matching value).
* Similarly, instead of searching by key, we might search by predicate.

Lab
---

* Do [the lab](../Labs/association-lists-lab.html)



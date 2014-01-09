Outline 36: Vectors
===================

Held: Wednesday, 6 November 2013

Back to [Outline 35 - Trees](outline.35.html).
On to [Outline 37 - Randomized (Unpredictable) Drawing](outline.37.html).

**Summary**

We consider <em>vectors</em>, an alternative to lists for
storing collections of data.  

**Related Pages**

* Reading: [Vectors](../readings/vectors-reading.html)
* Lab: [Vectors](../labs/vectors-lab.html)
* [EBoard](../eboards/36.md) 
  ([Source](../eboards/36.md))
  ([HTML](../eboards/36.html))
  ([PDF](../eboards/36.pdf))

**Overview**

* Problems with lists.
* A solution: Vectors.
* Behind the scenes: How Scheme implements vectors.
* Important vector procedures.

**Administrivia**

* Today's writeup: Exercise 6
* New assignment: Mostly building color trees.
* Upcoming extra credit opportunities:
    * Any one Grinnell prize event this week.
    * Thursday extras next week: Reports from internships (I think)
    * Grinnell Town Hall Meeting, Nov 13 noon or 7:30, I believe
    * CS Table, Friday: TBD (it's been a bad week)

Data Types
----------

* At the start of the semester, we decided that "basic values and 
  operations on those values" are key to writing algorithms.
    * We tend to use the word "type" to express these two concepts.
* We've seen a variety of characteristics of types in 151.
    * Some types are defined in terms of a list of possible values or a simple construction method: Character, Boolean, RGB color, etc.
    * Some types that can potentially be defined recursively: Drawings-as-value,
    Maybe integers, Lists.
    * Some types are designed to collect other kinds of values: Lists.  (Okay, maybe that's it for now.)
* We're about to learn a few more.  Vectors today.  Pair structures (particularly trees) on Monday.

List Deficiencies
-----------------

* Now that we've worked with lists for a while, we've identified
  some things that make lists inappropriate for some situations.
    * List are *expensive* to use; to find the length of a list
    or to access an element late in the list, you need to cdr down the
    list.
    * Lists are *fixed*; you can't easily change an element of a
    list.
* At the same time, there are some advantages to lists:
    * Lists are *dynamic*; it is easy to grow and shrink a list.
    * Lists are *inherently recursive*; the type is defined
    recursively.
    * Lists are *simple*; you can build almost every list operation
    through just a few basic operations (<code>car</code>, <code>cdr</code>,
    <code>null</code>, and <code>null?</code>).

An Alternative: Vectors
-----------------------

* Vectors provide an alternative to lists.  
* They have two primary advantages:
    * Vectors are *indexed*: You can quickly access elements by number.
    * Vectors are *mutable*: You can change the elements of a vector.
* In order to obtain these benefits, vectors lack some key features of lists.  In particular,
    * Vectors are *static*: Once you've created a vector, you cannot change its length.
* Some key vector procedures:
    * <code>(vector *val1* ... *valn*)</code>: Create a vector
    * <code>(make-vector *length* *val*)</code>: Make a vector of specified length, with duplicates of *val* as the contents.
    * <code>(vector-ref *vector* *position*)</code>: Extract a value from a vector.
    * <code>(vector-set! *vector* *position* *newvalue*)</code>: Change an element of a vector.
    * <code>(vector-length *vector*)</code>

Implementing Vectors
--------------------

* To be done live in class: Memory layout and more.

Lab
---

* Do [the lab](../Labs/vectors-lab.html)



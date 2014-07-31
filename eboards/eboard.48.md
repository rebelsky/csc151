CSC151.02 2014S, Class 48: Insertion Sort
=========================================

_Overview_

* Preliminaries.
    * Admin.
    * Questions.
* Questions about insertion sort.
* Quiz prep.
* Quiz.
* Lab.

Preliminaries
-------------

### Admin

* Exam 3 is ready.

### Upcoming Work

* Reading for Monday: Merge Sort
* Homework for next Thursday: Exam 3.
* Writeup: 6e and 8f.

### Extra Credit

* Iowater project April 26 - Tag drains.  Mail [iowater] for details.
* Dance shows, 7:30 p.m. Friday, Saturday, 2:00 pm Sunday
* Titular Head, 8ish, Saturday
* Field Day

### Questions

Preparation: A Few Questions on Insertion Sort
----------------------------------------------

* What is the central idea in insertion sort?
    * Basic operation: Insert a value into a sorted list
    * Overall strategy: Start with empty list, insert each value from the
      unsorted list, one by one
* Why do we provide you with three different kinds of list-based insertion 
  sort (and four kinds of insertion sort)?
    * `numbers-insertion-sort`
    * `list-insertion-sort`
    * `list-keyed-insertion-sort`
    * `vector-insertion-sort!`
* Responses
    * Some of these are more general than others
    * Do some only work for lists of lists?  Everything but numbers works for
      everything
    * keyed assumes we want to extract a 'key' from each value (e.g,. movie
      reviews by title or reviewer or average score or ...)
    * We may do insertion sort differently in vectors and lists, so we have
      different procedures
* How does insertion sort differ in lists and vectors?
    * See whiteboard

Lab
---

* Do [the lab on isertion sort](../Labs/insertion-sort-lab.html).
* Be prepared to reflect.


Analyzing insertion sort
------------------------


CSC151.02 2014S, Class 46: Binary Search
========================================

_Overview_

* Preliminaries.
    * Admin.
    * Questions.
* The problem of searching.
* Analyzing algorithmic efficiency.
* Making searching more efficient using divide-and-conquer.
* A demo: Destructive binary search.
* Considering the parameters to binary search.
* Lab.

Preliminaries
-------------

### Admin

* Sugar!
* Quiz!

### Upcoming Work

* Reading for Wednesday: No reading.
* Homework for Thursday: Projects.
* Lab writuep (class 46): Problem 5.

### Extra Credit

* Any pride week activity.
* Town hall Wednesday noon or 7:30 p.m. (the fiction of work/life balance)
* Math Extra, Thursday.  Sphere packing.
* Dance shows, 7:30 p.m. Thursday, Friday, Saturday, 2:30 pm Sunday
* Jazz combo Bucksbaum Thursday 7-8 Bucksbaum 152
* ISO Cultural Show Friday night, 7-9, Harris
* Iowater project April 26 - Tag drains.  Mail [iowater] for details.

### Questions

The problem of searching
------------------------

* Representing compound data is useful.
* In Scheme, lists are our friend
    * We can represent one "item" with a list 
        * '("APL" "Apple Computer Corp" 300.0 )
        * '("CSC 151" "Functional Problem Solving" ("Rebelsky" "Weinman" "Davis") ("Hard" "Awesome" "Pretty" "No good jokes"))
    * We can represent collections of items with a list
* The assoc procedure provides one way to look through collections.
* Generalize!

Here's a list of people

    (define people
      (vector 
        ("Aanderson" "Aan"    2017 4114 "x4410")
        ("Brown"     "Bruin"  2016 8123 "x9000")
        ("Doe"       "J"      2018 9999 "none")
        ("Smith"     "Kieran" 2015 4112 "x9231")
        ("Taylor"    "Mic"    2017 1234 "x0001")
        ...
      ))

Some questions for looking up

* What class years do my students have?
* What class year does "this student" have?
    * What is "Mic"s class year?
    * What is "Smith"'s class year?
* How many students are in the class of 2017?
* Which students are in the class of 2017?

Some other questions

* Could you please arrange these by box number so that I can distribute
  assignments more quickly.

(At least) two issues in searching:

* What part of the data are we using as the search term ("key")?
* What part of the data do we want to return?

We could generalize assoc to a searching routine

   (define search
     (lambda (lst key extract-key)

Analyzing algorithmic efficiency
--------------------------------

We want faster ways to search.

This is a "linear" algorithm: If I double the number of items, I (approximately)
double amount of work.

Making searching more efficient using divide-and-conquer
--------------------------------------------------------

* Given a big problem, break it into smaller problems.
* An idea so simple that even a computer can use it
* If the values in the list (vector) arranged from smallest to largest,
  look in the middle
    * The thing you're looking for is there
    * The thing you're looking for is in the second half: Throw away the
      first half
    * The thing you're looking for is in the first half: Throw away the
      second half
* Suppose we have 1000 names ordered alphabetically.  How many do we have to 
  look at to find a particular one?
  * 1000 -> 500 -> 250 -> 125 -> 63 -> 32 -> 16 -> 8 -> 4 -> 2 -> 1
* Suppose we have 2000 names ordered alphabetically.  How many do we have to 
  look at to find a particular one?
* Suppose we have 1mil names ordered alphabetically?  About 20.

A demo: Destructive binary search
---------------------------------

* Ma
* Cronin
* Fertig
* Herzberg
* Gilley
* Gamble
* Fritshe
* Frerick
* Found

Considering the parameters to binary search
-------------------------------------------

    ;;; Procedure:
    ;;;   binary-search
    ;;; Parameters:
    ;;;   vec, a sorted vector of elements
    ;;;   key, the thing we're looking for
    ;;;   get-key, a procedure that, given an element, gets the key
    ;;;   may-precede?, a predicate that compares keys
    ;;;

Lab
---

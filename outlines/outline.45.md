Outline 45: Binary Search
=========================

Held: Friday, 22 November 2013

Back to [Outline 44 - Higher-Order Procedures, Revisited](outline.44.html).
On to [Outline 46 - Introduction to Sorting](outline.46.html).

**Summary**

We consider the general problem of searching and *binary search*,
one of the most efficient algorithms for searching.

**Related Pages**

* Reading: [Search Algorithms](../readings/searching-reading.html)
* Lab: [Binary Search](../labs/binary-search-lab.html)
* [EBoard](../eboards/45.md) 
  ([Source](../eboards/45.md))
  ([HTML](../eboards/45.html))
  ([PDF](../eboards/45.pdf))

**Overview**

* The problem of searching.
* Analyzing algorithmic efficiency.
* Making searching more efficient using divide-and-conquer.
* A demo: Destructive binary search.
* Considering the parameters to binary search.

**Administrivia**

* Today's lab writeup (#27): Turn in 5
* There is no reading for Monday.
* Dr. Davis moved the quiz to Monday, and so I will, too.  We'll use the
  extra time to talk a bit more about binary search.
* Note: If you're using turtles for part of your drawing, we'll understand
  if they don't take aspect ratio into account.  (Everything else should take
  aspect ratio into account.)
* Why are there four+ concerts on the same weekend as Hamlet?
* Upcoming extra credit opportunities:
    * Hamlet, Friday (7:30pm), Saturday (7:30pm), Sunday (2pm).
    * Swimming, Saturday, 10am.
    * Chamber Ensemble, Saturday, 7:30 pm.
    * Typhoon Halyan Relief benefit show, Sunday, November 24th from 7-9pm
      in Harris.  (If the entry fee is a burden, let me know and I'll
      give you the money.)
    * "Data Sovreignty: The Challenge of Geolocating Data in the Cloud",
      November 25, 4:15 JRC 101
    * Showing of "Gold Fever" by Andrew Shurburne '01 or so, 7:00 p.m.
      Monday, November 25, ARH 302
    * Tuesday, November 26, 4:15 p.m., JRC 209  a gaming event with the 
      game [d0x3d!]   Popcorn will be served.

Common Problems and Algorithms
------------------------------

* As we discussed early in the semester, a key aspect of computer
  science is the design of *algorithms*, formalized processes
  that provide solutions to problems.
* There are a number of common problems for which computer scientists
  have developed common solutions.
* We'll visit two problems over the next few days: searching and
  sorting.
* As we develop algorithms, we'll consider intuitive ways that one
  might come up with the algorithms.

Searching
---------

* Goal: Find a value in a collection.
* Typically, the collection is *linear*: A vector or list.
* Sometimes, the collection is also *unordered*.  That is, there is no
  known arrangement to the list.  For example, the books on the MathLan
  book shelves are not in an arrangement that would make it easy to
  search for a book with a particular title or by a particular author.
* For unordered collections, the typical search is *sequential
  search*, look at each element in turn.
* Sometimes, the collection is *sorted*.  That is, the collection
  is organized by the primary key in which we search.  
    * For example, a phone book is sorted by name.
* However, we can also use something known as *binary search*:
    * Look in the middle of the collection.
    * If the middle is too small, anything smaller is also too small,
    so discard and try again.
    * If the middle is too large, anything larger is also too large,
    so discard and try again.
    * If the middle is just right, you're done.

Demonstration: Destructive Binary Search
----------------------------------------

* We'll do a quick demonstration of binary search

Exploring the Search API
------------------------

Suppose we have data for various students on campus: Last Name (string),
First Name (string), Graduation Year (integer), Box Number (integer),
and Phone number (string).  We might search by any of the four criteria
(and by other criteria) and we might therefore order in various ways.

    (define people
      (vector 
        ("Aanderson" "Aan"    2017 4114 "x4410")
        ("Brown"     "Bruin"  2016 8123 "x9000")
        ("Doe"       "J"      2018 9999 "none")
        ("Smith"     "Kieran" 2015 4112 "x9231")
        ("Taylor"    "Mic"    2017 1234 "x0001")

      ))

* Right now, we have things sorted by last name (and, surprisingly, by
  first name), so we might search by last name (or by first name).  
* If we wanted to search by year, we'd order by year (although that's 
  not likely to give particularly useful results).
* If we wanted to search by box number, we'd order by box number.
* Our search algorithm needs to know how to find the key in an entry
    * Last name: car
    * First name: cadr
    * Year: caddr
    * Box number: cadddr
* Our search algorithm needs to know how the keys are ordered
    * Traditionally, strings are ordered alphabetically
    * Traditionally, numbers are ordered numerically, from smallest to largest
* So our binary search algorithm needs four parameters:
    * The vector to search
    * The key to search for
    * The instructions for getting a key from each element
    * The mechanism used to order the elements
* All of this is a bit more complicated if we have a compound key,
  such as "last name plus first name plus phone number"

Lab
---

* Do [the lab](../Labs/binary-search-lab.html)
* Be prepared to reflect.



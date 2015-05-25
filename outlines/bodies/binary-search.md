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
* For unordered collections, the typical search is *sequential::N
  search*, look at each element in turn.
    * If we distribute things between multiple computers, we can spend
      the same total computing effort, but significantly less time.
* Sometimes, the collection is *ordered*.  That is, the collection
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
        ("Taylor"    "Mic"    2017 1234 "x0001")))

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

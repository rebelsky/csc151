Outline 44: Binary Search
=========================

Held: Wednesday, 20 November 2013

Back to [Outline 43 - Higher-Order Procedures, Revisited](outline.43.html).
On to [Outline 45 - Time to Work on Projects](outline.45.html).

**Summary**

We consider the general problem of searching and <em>binary search</em>,
one of the most efficient algorithms for searching.

**Related Pages**


**Overview**

* The problem of searching.
* Analyzing algorithmic efficiency.
* Making searching more efficient using divide-and-conquer.

**Administrivia**


Common Problems and Algorithms
==============================
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
=========
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

Lab
===
* Do [](../Labs/binary-search-lab.html)The lab</a>.
* Be prepared to reflect.



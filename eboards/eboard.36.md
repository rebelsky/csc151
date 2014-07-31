CSC151.02 2014S, Class 36: Pairs and Pair Structures
====================================================

_Overview_

* Preliminaries.
    * Admin.
    * Questions.
    * Quiz.
* Representing lists: Pairs and cons cells.
* Why care about the underlying representation?
* Lab!

Preliminaries
-------------

### Upcoming Work

* Reading for Monday: Trees
* Homework for next Tuesday: HW 8: Producing Playful Polygons
* Today's lab writeup: Exercise 4

### Admin

* When I send you criticisms on lab writeups, there is no need to redo the writeup.
* I've returned most HW 7's.  Sorry for the difficult parts (which weren't
  intentionally difficult)
* Continue this week's partner assignments.
* Extra credit:
    * Math/Stats seminar monday: Cuong Nguyen '14, Noon, somewhere in Math/Stat

### Questions

_Can you talk about backslashes in strings and characters?_

> Characters.  Problem: Distinguish the character a from the string a from the
  symbol a from the name a.  Scheme decided: characters #\a, "a", 'a, a.

> Strings.  Sequences of characters surrounded by double-quotation marks.
  "KimS is so excited."  If quotation marks appear within a string, preface
  them with a backslash.  "Kim S says \"I'm so excited!\""  And when things
  are in quotation marks, you don't need the #\.

> Whoops.  Backslash has a special meaning.  So .... to represent backslash
  in a string, write \\.  This lets us distingish "\\" "\""

_What does `(list-drop lst n)` do?_

> Creates a new list by removing the first `n` elements of `lst`.  You can also
think of this as `(cdr (cdr (cdr ... (cdr lst))))`, with `n` calls to `cdr`.

### Quiz

Wasn't that fun?

Representing lists: Pairs and cons cells
----------------------------------------

Why care about the underlying representation?
---------------------------------------------

* Some people think better from pictures.
* Helps us understand why some things work the way they do.
* Reminds us about costs.

Lab
---

Correction: NO LAB WRITEUP!


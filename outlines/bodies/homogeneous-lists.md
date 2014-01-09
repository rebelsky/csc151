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


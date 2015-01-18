Cons Cells
----------

* One set of interesting values in Scheme are the things that `cons` 
  creates.  We often call these *cons cells* or *pairs*
* The first value of a pair is a reference to the first parameter to cons.  
  The second value is a reference to the second parameter.
* I'll also draw some pictures of these things in class.

Dotted Pairs
------------

* Although we've used lists as the second parts of each cons cell, you 
  can use other values.  If the second part of a cons cell is not a list, 
  you get what is called a *dotted pair*.
* The shorthand for a dotted pair is
  `'(x . y)`.
* You'll also see the dot at the end of a long sequence of cons cells.
* Why is the dot there?  
    * To distinguish things close to lists from lists.
* Why is it right before the last element, and not earlier?  
    * Because we don't know until we hit the end that it's not a list.

Why Care?
---------

* *Why should we care about the underlying structure used for lists?*
* Because it helps explain why Scheme does some things the way it does.
* Because it helps us understand the hidden costs associated with some operations.
* Because it helps us better understand recursion over lists.
* Because it provides background for future discussions.

Lab
---

* Any preliminary questions?
* Do [the lab](../Labs/pairs-lab.html)the lab.
* Be prepared to reflect.

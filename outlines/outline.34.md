Outline 34: Pairs and Pair Structures
=====================================

Held: Monday, 4 November 2013

Back to [Outline 33 - Characters and Strings](outline.33.html).
On to [Outline 35 - Trees](outline.35.html).

**Summary**

We consider *pairs*, the basic data type used to build
lists and other structures in Scheme.  We also consider why it
is useful to understand about pairs.

**Related Pages**

* Reading: [Pairs and Pair Structures](../readings/pairs-reading.html)
* Lab: [Pairs and Pair Structures](../labs/pairs-lab.html)
* [EBoard](../eboards/35.md) 
  ([Source](../eboards/35.md))
  ([HTML](../eboards/35.html))
  ([PDF](../eboards/35.pdf))

**Overview**

* Representing lists: Pairs and cons cells.
* Why care about the underlying representation?
* Lab.

**Administrivia**

* No writeup for today!
* It's almost time for preregistration.  Are you enjoying CS?  You should
  continue.
    * CSC 161, Imperative Problem Solving, is the next course.  
       * It focuses on on something closer to the Turtle model
       * That is, in 161 we worry much more about sequencing operations and
         we worry about the state of the system.
       * In 161, we also look much more "behind the scenes" (somewhat like
         what we're doing today).
       * 161 uses C as the programming language.
    * MAT/CSC 208, Discrete Structures, is also useful.  It introduces
      you to some of the mathematics you need to better understand and
      analyze algorithms and data structures.
    * CSC 195 is my "pre-research" course, but it's open to all comers.
* It might also be worthwhile to start thinking about next summer (whether
  or not you are continuing in CS).  You only get three summers of college,
  so you should make the most of them.
    * (Story about NYTimes internship.)
    * Using summer well: 
        * Explore potential directions (it's fine to have many, but the only 
          way to narrow is to explore).
        * Build skills.
        * Build your resume.
    * If you're interested in CS, you should go to this week's CS extra
      and the week 14 CS extra on "Summer Opportunities in CS".
    * In any case, you should make the time to visit with the CDO.
* I'll reserve time for general exam questions.
* Upcoming extra credit opportunities:
    * Any one Grinnell prize event this week.
    * Thursday extras next week: Reports from internships (I think)
    * Grinnell Town Hall Meeting, Nov 13 noon or 7:30, I believe
    * CS Table, Friday: TBD

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
* Do [the lab](../Labs/pairs-lab.html)the lab</a>.
* Be prepared to reflect.



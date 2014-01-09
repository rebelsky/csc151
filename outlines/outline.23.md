Outline 23: Revisiting Lists
============================

Held: Tuesday, 8 October 2013

Back to [Outline 22 - Conditionals](outline.22.html).
On to [Outline 24 - Recursion Basics](outline.24.html).

**Summary**

We explore further details of Scheme's lists.  Lists are an important
mechanism for structuring data.  We also consider how lists can be used
to represent drawings.

**Related Pages**

* Reading: [Heterogeneous Lists](../readings/heterogeneous-lists-reading.html)
* Lab: [Heterogeneous Lists](../labs/heterogeneous-lists-lab.html)
* [EBoard](../eboards/23.md) 
  ([Raw](../eboards/23.md))
  ([HTML](../eboards/23.html))
  ([PDF](../eboards/23.pdf))

**Overview**

* Lists, revisited.
* New list operations.
* Drawings as values.
* Lab.

**Administrivia**

* Choose your own partners for today and the rest of this week.
* Upcoming EC opportunities
    * Tuesday, 7 pm, Road to Rio at pool
    * Thursday extra at 4:15: Grad school in CS
    * Friday CS Table: Reports from Hopper
    * Friday film: Codebreaker, 7pm, Harris
    * Post-Codebreaker discussion
    * Wit, the play, opens Thursday.
    * Any Queeer Culture Week Activity
       * E.g., Wednesday at 7:30, Consent, Negotiation, and BDSM,
    * ...
* Other upcoming stuff
    * Review session 1:15 pm Thursday
    * Mentor session 7:30 pm Thursday
    * Mentor session 7:00 pm Sunday
    * ...

Lists
-----

* Original notion of lists:
    * Collection of values
    * Homogeneous: All the values in a list are the same type
    * Used primarily with `map` and `for-each`
* Extending that notion
    * Can also be *heterogeneous*: Values in the list may have multiple types.
    * Can examine individual elements with `car`, `cdr`, and `list-ref`.
    * Can be extended (creating new lists) with `cons`.
* Why is the new view important?
    * It will soon give us the opportunity to manipulate lists in new
    and interesting ways.

Implementing Drawings
---------------------

* We can (and do) use lists to implement drawings.
* The reading considers a simplified representation, in which the width
  and height of a drawing are the same.
* But the general process is the same
    * Group the values in a list
    * When we need to render or manipulate a drawing, use the list operations
    to extract parts.

Lab
---



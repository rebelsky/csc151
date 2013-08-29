Outline 24: Revisiting Lists
============================

Held: Wednesday, 9 October 2013

Back to [Outline 23 - Testing Your Procedures](outline.23.html).
On to [Outline 25 - Recursion Basics](outline.25.html).

**Summary**

We explore further details of Scheme's lists.  Lists can be a key
mechanism for structuring data.  We also consider how lists can be
used to represent drawings.

**Related Pages**


**Overview**

* Lists, Revisited
* New List Operations
* Drawings as Values

**Administrivia**


Lists
=====
* Original notion of lists:
    * Collection of values
    * Homogeneous: All the values in a list are the same type
    * Used primarily with <code>map</code> and <code>for-each</code>
* Extending that notion
    * Can also be *heterogeneous*: Values in the list may have
    multiple types
    * Can examine individual elements with <code>car</code>, <code>cdr</code>,
    and <code>list-ref</code>.
    * Can be extended (creating new lists) with <code>cons</code>.
* Why is the new view important?
    * It will soon give us the opportunity to manipulate lists in new
    and interesting ways.

Implementing Drawings
=====================
* We can (and do) use lists to implement drawings.
* The reading considers a simplified representation, in which the width
  and height of a drawing are the same.
* But the general process is the same
    * Group the values in a list
    * When we need to render or manipulate a drawing, use the list operations
    to extract parts.



Lists
-----

* Our first encounters with lists.
    * Collection of values
    * Homogeneous: All the values in a list are the same type
    * Used primarily with `map`
* Extending that notion
    * Can also be *heterogeneous*: Values in the list may have multiple types.
    * Can examine individual elements with `car`, `cdr`, and `list-ref`.
    * Can be extended (creating new lists) with `cons`.
    * There's an empty list: `null`.
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


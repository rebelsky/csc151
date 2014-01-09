Key Ideas of Merge Sort
-----------------------

* Divide and conquer is often a useful design strategy.
* For sorting, natural division is "first half" / "second half".
* What do we do after sorting the two halves?  Merge 'em.

An Alternate Implementation
---------------------------

* We can do something very much like merge sort while avoiding the
  splitting step.
* We start with a list of sorted lists, and repeatedly merge neighboring
  pairs.
* This technique is slightly easier to implement.
* This technique is much easier to analyze.

The Costs of Merge Sort
-----------------------

* What's the running time?  We do approximately
  *N**log<sub>2</sub>*N* comparisons.
* The analysis:
    * *N* steps to merge 2 sorted lists of length *N/2*
    * *N* steps to merge 4 sorted lists of length *N/4* into those
    two sorted lists.
    * *N* steps to merge 8 sorted lists of length *N/8* into those
    four sorted lists.
    * And so on and so forth.
* Can we do better?  Not if our sorting is based on comparing values to each
  other.

Lab
---

* Do [the lab](../Labs/mergesort-lab.html)
* Pause to reflect.


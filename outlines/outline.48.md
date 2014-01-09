Outline 48: Merge Sort
======================

Held: Wednesday, 27 November 2013

Back to [Outline 47 - Insertion Sort](outline.47.html).
On to [Outline 49 - File Basics](outline.49.html).

**Summary**

We continue our exploration of sorting by considering the applicability of
divide-and-conquer to the problem of sorting.  We look at one particular
divide-and-conquer algorithm, *merge sort*.  We explore how the running
time for that algorithm varies based on the number of values we are
sorting.

**Related Pages**

* Reading: [Sorting](../readings/mergesort-reading.html)
* Lab: [Insertion Sort](../labs/mergesort-lab.html)
* [EBoard](../eboards/48.md) 
  ([Source](../eboards/48.md))
  ([HTML](../eboards/48.html))
  ([PDF](../eboards/48.pdf))

**Overview**

* More efficient sorting techniques.
* Divide and conquer, revisited.
* Merge sort.
* Analyzing merge sort.

**Administrivia**

* [Exam 3](../assignments/exam.03.html) is ready.
* For people who attended class today and worked on the lab in class, there
  is no writeup.
* People who did not show up to today's class are expected to do 
  lab writeup 29: Problems 6 and extra 1.
* Upcoming extra credit opportunities:
    * Any self-care week activity during purgatory week.
    * _One Grinnell_ rally on December 4 at 4pm.
        * And yes, I have contacted Dean Arora about the timing.

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



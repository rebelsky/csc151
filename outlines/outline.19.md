Outline 19: Iteration
=====================

Held: Tuesday, 1 October 2013

Back to [Outline 18 - Exam 1 Discussion](outline.18.html).
On to [Outline 20 - Naming Local Values](outline.20.html).

**Summary**

We consider a technique for stepping through the values in a list,
and doing some action (e.g., moving a turtle or drawing something
with the GIMP tools) for each value in the list.

**Related Pages**


**Overview**

* A Problem: Drawing Spirals
* A Useful Tool: <code>for-each</code>

**Administrivia**


The Problem: Making Spirals
===========================
* We ended the turtles lab trying to make spirals.
* Basically, you need to move forward a little and turn a little
* Three possible strategies:
    * Move the same amount each time and turn the same amount each time
    * Move a little more each time, and turn the same amount each time
    * Move the same amount each time, and turn a different amount each
    time
* The first strategy procedures a circle, and is possible to do with
  <code>repeat</code>.  
* The other two strategies seem difficult to do without a *lot* of 
  hand coding.

The <code>for-each</code> Function
==================================
* We'd like to use <code>map</code>, but there are two problems.
    * Officially, you don't know the order in which the function is
    applied when you do a <code>map</code>; it could be first to last,
    it could be last to first; it could be all at the same time.
    * We get back a list, which we really don't need.
* Scheme provides <code>for-each</code> for situations like this.
* Like <code>map</code>, but for sequences of actions.
    * <code>for-each</code> is guaranteed to work in order.
    * <code>for-each</code> doesn't return anything.



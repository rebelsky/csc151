Outline 15: Homogeneous Lists: Making and Manipulating Groups of Drawings 
==========================================================================

Held: Tuesday, 24 September 2013

Back to [Outline 14 - Documenting Programs and Procedures](outline.14.html).
On to [Outline 16 - Anonymous Procedures](outline.16.html).

**Summary**

Today we explore Scheme's <em>list</em> data structure and some ways
to use lists to make interesting images.

**Related Pages**


**Overview**

* Context: What and Why Lists?
* Building Lists.
* Mapping Lists.
* Other List Operations.

**Administrivia**


Context: What Are Lists?
========================
* Issue: We'd like to make images with lots and lots of similar shapes.
* Problem: How to do so systematically.
* Solution: Scheme's list data structure and some related procedures.

Building Lists
==============
* <code>(list val1 val2 ... valn)</code>
* <code>(make-list n value)</code>
* <code>(iota n)</code>

Mapping Lists
=============
* Basic operation: <code>(map func lst)</code>>.  Apply a function to
  each element of a list.
* For images, we'll find it easier to do something like <br>
  <code>(map drawing-transform list-of-drawings list-of-values)</code>

Other List Operations
=====================
* <code>(append *lst1* *lst2*)</code> - join two lists
* <code>(reverse *lst*)</code> - just what it sounds like
* <code>(list-take *lst* *n*)</code> - take the first *n* elements of a list
* <code>(list-drop *lst* *n*)</code> - drop the first ** elements of a list



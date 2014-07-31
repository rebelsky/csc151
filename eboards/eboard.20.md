CSC151.02 2014S, Class 20: Naming Local Values
==============================================

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming work.
    * Pre-quiz Questions.
    * Quiz.
* Topics.
    * Why name things.
    * Naming things with `let`.
    * Naming things with `let*`.
    * Naming procedures.
* Lab.

Preliminaries
-------------

### Admin

* Extra credit: 
    * Improv Saturday 9 at Loose.
    * Tuesday Town Hall noon and 7pm.
    * Thursday CS Extras: New CS Curriculum.

### Upcoming Work.

* Reading for Monday: Anonymous Procedures
* Writeup: Exercises 6d and 7b
    * Subject: CSC 151.02 Writeup 13: Let (OPTIONAL NAMES)
* Homework 5 is ready.  Pick your own groups.

### Pre-quiz Questions

_What are the differences between `if` and `cond`?_

> If asks you to choose between two options, cond lets you do as many as you want.

> Nesting ifs lets you achieve the "as many as you want

    (if (test1)
        consequent1
        (if (test2)
            consequent2
            (if (test3)
                consequent3
                alternate)))

    (cond
      [(test1) consequent1]
      [(test2) consequent2]
      [(test3) consequent3]
      [else alternate])

> For choosing between two things, most people find the if easier.  For more
  than two choices, most people find cond easier.

> Another advantage to cond: Multiple consequents

    (cond
      [(test1) consequent1a consequent1b]
      [(test2) consequent2a consequent2b consequent2c]
      [(test3) consequent3]
      [else alternate])

> When is when you have one test, several consequents, no alternate.

### Quiz

Lab
---

Note: Scheme likes parentheses, so

    (let ((NAME VAL))
      EXP)

Alternately

    (let ([NAME VAL])
      EXP)

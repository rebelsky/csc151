Outline 14: Documenting Programs and Procedures
===============================================

Held: Monday, 23 September 2013

Back to [Outline 13 - Transforming Images](outline.13.html).
On to [Outline 15 - Homogeneous Lists: Making and Manipulating Groups of Drawings ](outline.15.html).

**Summary**

We consider documentation for your programs - Why to write it, when to
write it, how to write it.

**Related Pages**


**Overview**

* The need for documentation.
* The Six P's - a strategy for documenting procedures.
* Practice.

**Administrivia**


Documentation
=============
* Why document?  Text is often easier to read than code.
* Who is your audience?  You have many audiences.
    * People who must *maintain* and *update* your code.
    * People who must *use* your code.
    * People who *incorporate* your code into a bigger package
    (arguably, these are people who do both of the previous things).
* You write comments *within* code for those who must maintain
  and update your code.  You often also write a *big picture*
  statement for such folks.
* Most of the comments you write in this class will be for people who
  are likely to use your code.  We call these your *client
  programmers*.
* For such folks, we focus on *what* your procedures do.

The Six P's
===========
* I prefer to document procedures for client programmers using a
  careful system, in which we always describe six aspects of the
  procedure: The name, the parameters, the purpose, the value the
  procedure produces, the preconditions, and the postconditions.
* The *Purpose* is intended to give a short, informal,
  summary of what the procedure does.
* The other three of the first four parameters are used to name things,
  so that we can refer to them elsewhere.
* The *Preconditions* formalize requirements that must be met in order
  for the procedure to function correctly.
* The *Postconditions* formalize the results of the procedure.
  They are often expressed in a combination of mathematics, Scheme, 
  and English.
* Remember: The six-P's are supposed to give the *what* not
  the *how*.
* Remember: Your goal is to provide enough information that the client
  can use the procedure, but not so much that it overly limits your
  implementation.

Practice
========
* We'll try writing documentation collaboratively for a variety of 
  procedures.
* <code>(sqrt val)</code>
* <code>(rbg-redder val)</code>
* <code>(max val1 val2 ... valn)</code>
* ...



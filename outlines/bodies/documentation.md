Documentation
-------------

* As we've started to see, programming languages provide a way to
  communicate not only with the computer, but also with other people.
* But sometimes we want to add some English text which we call
  *documentation*.
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
  programmers* or simply just *clients*.
* For such folks, we focus on *what* your procedures do.

The Six P's
-----------

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
    * I'll say that again: Focus on what your procedure does, not
      how it achieves the result.
* Remember: Your goal is to provide enough information that the client
  can use the procedure, but not so much that it overly limits your
  implementation.
* We also have a variety of other P's to use.
    * Practicum: Examples
    * Process: The how.  (Sometimes useful)
    * Philosophy: Bigger poicture
    * Problems: When things don't work
    * Props: Citations
    * ...

Practice
--------

* We'll try writing documentation collaboratively for a variety of 
  procedures.
* <code>(sqrt val)</code>
* <code>(rbg-redder val)</code>
* <code>(max val1 val2 ... valn)</code>
* ...


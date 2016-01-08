Output
------

* Use `display` to print values.
* Use `newline` to print a newline.

Using Output to Trace Program Behavior
--------------------------------------

* By inserting appropriate calls to `display` and `newline`, we can
  better see what our program does.

Input
-----

* Read a line of text with `read-line`.
* Read the next Scheme value with `read`.
* Use these to write interactive programs.
* We'll revisit these again in the future as we learn more copmlicated
  forms of Scheme expressions.

Side Effects
------------

* All of these procedures are procedures with *side effects* - in addition
  to returning a value (assuming they return a value) they also change
  the state of the environment.
* Procedures with side effects tend to complicate our understanding of
  programs and can sometimes lead to unexpected behavior.

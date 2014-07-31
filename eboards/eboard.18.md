CSC151.02 2014S, Class 18: Boolean Values and Predicate Procedures
==================================================================

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming work.
    * Questions on the HW.
* Boolean values.
* Predicates - Procedures that return Boolean values.
* Combining booleans and other values with `and` and `or`.
* Lab.

Preliminaries
-------------

### Admin

* Cookies!
* It's "Pick your own partner" week.
* I apologize for the problems in MathLAN.  (They are not my fault, but
  I do worry that they affect your ability to get work done.)
    * I have made HW 4 optional.
* I have virtual computers for 151 that you can run on your own computer.
    * Get a flash drive from Ajuna.
    * Use the file called Xubuntu151-v1.2.vba.o??, open it with VirtualBox.
    * See instructions at 
      <https://github.com/GlimmerLabs/virtual-mediascheme/blob/master/UserGuide.md>
    * I'll also email a link.
* Some folks have asked me about the email posters around campus.  Do you
  want me to give my perspective on these matters?
* Extra credit: 
    * Thursday extra: Technical Interviews.
    * Friday CS Table: Skip Lists.
    * Improv Saturday, 7pm, Younker.

### Upcoming Work

* Reading for Wednesday: Conditionals
* NO WRITEUP, Except for the people who failed to read this.
* Today's lab writeup: Exercises 4a, 4b, and 5
    * Subject: CSC 151.02 Writeup 13: Booleans and Predicates (OPTIONAL NAME)
* Review exam answer key.
* Sign up for a meeting if you invoked "there's more to life" (sign up sheet
  outside my office)

### Questions on the homework?

Boolean values
--------------

What questions do we ask when we learn a new data type?

* What are they?
    * Truth!
* What do we use them for?
    * To make decisions
* What are the legal values?
    * True and false
    * In Scheme, there's false and "everything else"
* How do we express them?
    * `#t`
    * `#f`
* How does the computer display/show the data types to us?
    * `#t`
    * `#f`

Predicates - Procedures that return Boolean values
--------------------------------------------------

* Questions we can ask
    * Is x < 2?
    * Is this an RGB color?
    * Is this an active image?
* Some built in
* Some we write

Combining booleans and other values with `and` and `or`
-------------------------------------------------------

`and` combines two (or more values)

* Gives true if all of the things are true
* Gives false if any of the things are false
* What if some are neither true nor false?
    * If all of them are trueish, it returns the last one.

`or` combines two (or more values)

* If any of them are truish, returns the first truish one.
* Returns #f if all of the values are false.

What do expect to get for

* (or)
* (and)

Lab
---

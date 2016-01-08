CSC151.02 2015F, Class 23: Revisiting Lists
===========================================

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Questions.
* Lab.

Preliminaries
-------------

### Admin

* Continue partners!
* Quiz 5 returned.
* Upcoming review sessions
    * Wednesday at 8pm
    * Thursday at 10am
    * Thursday at 8pm

### Upcoming Work

* Reading for Wednesday:
  [Recursion Basics](../readings/recursion-basics-reading.html) 
    * Warning! For some, this will be even more confusing than
      `section`.  For others, it will be intuitive.  We will spend
      a few weeks trying to make it intuitive for everyone.
* [HW 5](../assignments/assignment.05.html) due Wednesday.
* No Lab Writeup Today.
* [Exam 2](../assignments/exam.02.html) distributed.
    * We'll go through it quickly.
    * I'm not sure when CC is posting his version, but our problems should
      be the same even if our policies aren't necessarily.
    * Probably lots of opportunities for corrections :-)

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* CS Extras Thursday: Blake Creasey on Watson

### Other Good Things

* Poet 8pm Thursday somewhere on campus.  Probably at Bucksbaum.  Look
  for the huge crowds that poets normally draw at Grinnell.
* Friends of Drake Library book sale this weekend.  Community room.
  Friday 5-8 pm.  Saturday 8am-2pm.  Admission $3 on Friday and $0 
  on Saturday.  HC $1, PB $0.50.  Books usually $1/box after some time
  on Saturday (noon?).
* Social event known as 10-10.  Please behave responsibly; do not 
  over-consume know your limits, CONSENT IS NECESSARY (and difficult 
  if impaired)
* Spanish speaker (in Spanish) 4pm in ARH 102 on Dueling as a writing
  process (or vice versa)

### Questions

_When I'm picking the random column and row, what range should I choose from?_

> For the column, it should be a number between left and left+width-1.

_But `random` only gives me a value between 0 and n-1._

> Think about how to transform one range to another.  (Hint: Addition.)

_Do I need to document the procedures in part 3?_

> Yes.  But you can use just 4P's.

Lab
---

No Lab Writeup Today!

Lesson 1: You can only take the `car` of non-empty lists and things created
with `cons`.

Lesson 2: You can only use up to four middle letters in the silly `cddddr` 
procedures.

Lesson 3: Computer scientists often start numbering at 0, rather than 1.
That's somewhat nice for how we write procedurees, since to get element
5 of a list, we have to call cdr 5 times.  

Lesson 4: Scheme lets you create things that aren't lists.  These things
show up with a dot in the middle.  *Be careful* when you have such things;
they will sometimes, but not always, lead to errors when you use them
like lists.

        > (cons 1 (cons 2 3))
        > (append (iota 50) 1)

Lesson 5: `car` and `cdr` work with the "not quite list" things.  They
are officially defined with the rules

        (car (cons a b)) = a
        (cdr (cons a b)) = b

Note 6: For problem 5, consider

        (cons 'drawing (cons 'rectangle (cddr drawing)))

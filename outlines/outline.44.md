Outline 44: Higher-Order Procedures, Revisited
==============================================

Held: Wednesday, 20 November 2013

Back to [Outline 43 - Association Lists](outline.43.html).
On to [Outline 45 - Binary Search](outline.45.html).

**Summary**

We revisit the topic of *higher-order procedures*, one of the most
important techniques in languages like Scheme.  Higher-order procedures
are procedures -- like `map`, `left-section`, or `compose` -- that
take other procedures as parameters, return other procedures as values,
or both.

**Related Pages**

* Reading: [Higher-Order Proceduers](../readings/hop-reading.html)
* Lab: [Higher-Order Procedures](../labs/hop-lab.html)
* [EBoard](../eboards/44.md) 
  ([Source](../eboards/44.md))
  ([HTML](../eboards/44.html))
  ([PDF](../eboards/44.pdf))

**Overview**

* Some program design principles.
* Thinking about repetition.
* Procedures as first-class values.

**Administrivia**

* Today's lab writeup (#26): Turn in 3, 4.
* There seem to be some occasional bugs in image-compute that result
  in square blocks of "noise" appearing in the image.  If this happens
  to you, please send me the code that does it.
* I hope to get you
* Upcoming extra credit opportunities:
    * Basketball tonight at 5:30 pm.
    * Seth performs at Relish tonight at 10pm.
    * CS Table, Friday, The New Curriculum.
    * Hamlet, Friday (7:30pm), Saturday (7:30pm), Sunday (2pm).
    * Chamber Ensemble, Saturday, 7:30 pm.
    * Typhoon Halyan Relief benefit show, Sunday, November 24th from 7-9pm
      in Harris.  (If the entry fee is a burden, let me know and I'll
      give you the money.)
    * "Data Sovreignty: The Challenge of Geolocating Data in the Cloud",
      November 25, 4:15 JRC 101
    * Showing of "Gold Fever" by Andrew Shurburne '01 or so, 7:00 p.m.
      Monday, November 25, ARH 302
    * Tuesday, November 26, 4:15 p.m., JRC 209  a gaming event with the 
      game [d0x3d!]   Popcorn will be served.

Background: Guiding Principles
------------------------------

* *Write less, not more*
* *Refactor* 
    * Don't write repetitious code 
    * If you are programming by copy-paste-change, you're probably wasting
      time.
* *Name appropriately*
    * Good names for things that need names
    * No names for things that don't need names

Background: The Value of Repetition
-----------------------------------

* The following is variant of something John Stone says ...
* The first time you read a new procedure structure 
  (such as recursion over a list), you learn something.
* The second time you read the same structure, you learn something else.
* The third time, you learn a bit more.
* After that, reading doesn't give much benefit.
* The first time you write the same structure, you learn something more
  about that structure
* The second time, you learn even more.
* The third time, you learn a bit more.
* After that, there's no benefit.
* So ... extract the common code so you don't have to write it again.

Procedures as First-Class Values
--------------------------------

* The big picture ideas: 
    * You can write procedures (like `map`) that take other procedures as parameters.
    * You can write procedures (like `left-section`) that return other procedures.
    * Doing so makes your code better.
* So, procedures are, in effect, a new type of value.  What are the questions
  we normally ask about new types of values?
* Taking a procedure as a parameter is easy.  You just include it as a normal
  parameter and use it as a normal procedure.
<pre>
(define apply-to-2-and-3
  (lambda (proc)
    (proc 2 3)))
</pre>
* Returning procedures is a bit harder.  You usually just return an anonymous
  procedure.  That means you'll have multiple lambdas.
<pre>
(define adder
  (lambda (n)
    (lambda (x)
      (+ x n))))
(define inc (adder 1))
</pre>

Old Notes
---------

_The following are notes I wrote for past versions of the course.  I probably
won't discuss any/all in class._

### Two Motivating Examples

* `all-real?` and `all-integer?`
* `add-5-to-each` and `multiply-each-by-5`

### Procedures as Parameters

* We've been writing it a lot.
* Useful
* Concise
* Supports refactoring

### Procedures as Return Values

* Another way to create procedures (anonymous and named).
* Strategy: Write procedures that return new procedures.
* These procedures can take plain values as parameters:
<pre>
(define redder
  (lambda (amt)
    (lambda (color)
      (rgb ...))))
</pre>
* How to think about this:
    * a procedure that takes *amt* as a parameter,
    * returns a new procedure that takes *color* as a parameter
* Can also take procedures as parameters
* One favorite: `compose`
<>boxcode
(define compose
  (lambda (f g)
    (lambda (x)
      (f (g x)))))
</pre>
* Examples
    * sine of square root of x: `(compose sin sqrt)`
    * last element of a list: `(compose car reverse)`
* Another: `left-section`
<pre>
(define left-section
  (lambda (func left)
    (lambda (right)
      (func left right))))
(define l-s left-section)
</pre>
* Examples: 
    * add two: `(l-s + 2)`
    * double: `(l-s * 2)`
* Not mentioned int he reading, but there's a corresponding right-section
<pre>
(define right-section
  (lambda (func right)
    (lambda (left)
      (func left right))))
(define r-s right-section)
</pre>

### Encapsulating Control

* Possible for complex common code, too (particularly control).
* `map` is the standard example.  
<pre>
(define map
  (lamda (fun lst)
     (if (null? lst)
         null
         (cons (fun (car lst))
               (map fun (cdr lst))))))
</pre>
* Another issue: Checking the type of elements in a list
<pre>
(define all-numbers?
  (lambda (lst)
    (or (null? lst)
        (and (pair? lst)
             (number? (car lst))
             (all-numbers? (cdr lst))))))
(define all-symbols?
  (lambda (lst)
    (or (null? lst)
        (and (pair? lst)
             (symbol? (car lst))
             (all-symbols? (cdr lst))))))
</pre>
* Common code
<pre>
(define all
  (lambda (test? lst)
    (or (null? lst)
        (and (pair? lst)
             (test? (car lst))
             (all test? (cdr lst))))))
</pre>

### Concluding Comments

* Yes, skilled Scheme programmers write this way.
    * It's quick.
    * It's clear (at least to skilled Schemers).
    * It reduces mistakes.
* The ability to encapsulate control in this way is fairly unique to Scheme
  (well, to functional languages).
* It's one of the reasons we love it at Grinnell.
    * Or at least a reason I love it.



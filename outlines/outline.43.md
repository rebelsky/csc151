Outline 43: Higher-Order Procedures, Revisited
==============================================

Held: Tuesday, 19 November 2013

Back to [Outline 42 - Association Lists](outline.42.html).
On to [Outline 44 - Binary Search](outline.44.html).

**Summary**

We revisit the topic of <em>higher-order procedures</em>, one of the most
important techniques in languages like Scheme.  Higher-order procedures
are procedures -- like <code>map</code>, <code>left-section</code>, or 
<code>compose</code> -- that take other procedures
as parameters, return other procedures as values, or both.

**Related Pages**


**Overview**

* Elegance.
* Procedures as parameters.
* Procedures as return values.
* Writing <code>map</code>.
* Writing <code>all?</code>.

**Administrivia**


Background: Guiding Principles
==============================
* *Write less, not more*
* *Refactor*
* *Name appropriately*
    * Good names for things that need names
    * No names for things that don't need names

Background: A Related Philosophy
================================

*The following is variant of something John Stone says ...*
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
d yes, you learn something

Two Motivating Examples
=======================
* <code>all-real?</code> and <code>all-integer?</code>
* <code>add-5-to-each</code> and <code>multiply-each-by-5</code>

Procedures as Parameters
========================
* We've been writing it a lot.
* Useful
* Concise
* Supports refactoring

Procedures as Return Values
===========================
* Another way to create procedures (anonymous and named).
* Strategy: Write procedures that return new procedures.
* These procedures can take plain values as parameters:
<boxcode>
(define redder
  (lambda (amt)
    (lambda (color)
      (rgb ...))))
</boxcode>
* How to think about this:
    * a procedure that takes *amt* as a parameter,
    * returns a new procedure that takes *color* as a parameter
* Can also take procedures as parameters
* One favorite: <code>compose</code>
<boxcode>
(define compose
  (lambda (f g)
    (lambda (x)
      (f (g x)))))
</boxcode>
* Examples
    * sine of square root of x: <code>(compose sin sqrt)</code>
    * last element of a list: <code>(compose car reverse)</code>
* Another: <code>left-section</code>
<boxcode>
(define left-section
  (lambda (func left)
    (lambda (right)
      (func left right))))
(define l-s left-section)
</boxcode>
* Examples: 
    * add two: <code>(l-s + 2)</code>
    * double: <code>(l-s * 2)</code>
* Not mentioned int he reading, but there's a corresponding right-section
<boxcode>
(define right-section
  (lambda (func right)
    (lambda (left)
      (func left right))))
(define r-s right-section)
</boxcode>

Encapsulating Control
=====================
* Possible for complex common code, too (particularly control).
* <code>map</code> is the standard example.  
<boxcode>
(define map
  (lamda (fun lst)
     (if (null? lst)
         null
         (cons (fun (car lst))
               (map fun (cdr lst))))))
</boxcode>
* Another issue: Checking the type of elements in a list
<boxcode>
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
</boxcode>
* Common code
<boxcode>
(define all
  (lambda (test? lst)
    (or (null? lst)
        (and (pair? lst)
             (test? (car lst))
             (all test? (cdr lst))))))
</boxcode>

Concluding Comments
===================
* Yes, skilled Scheme programmers write this way.
    * It's quick.
    * It's clear (at least to skilled Schemers).
    * It reduces mistakes.
* The ability to encapsulate control in this way is fairly unique to Scheme
  (well, to functional languages).
* It's one of the reasons we love it at Grinnell.
    * Or at least a reason I love it.



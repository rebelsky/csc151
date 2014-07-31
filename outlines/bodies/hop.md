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

* The following is variant of something my colleague John Stone says ...
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
    * You can write procedures (like `map`) that take other procedures 
      as parameters.
    * You can write procedures (like `left-section` and `compose`) that 
      return other procedures.
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


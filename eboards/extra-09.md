Extra topics, Week 09
=====================

_Overview_

* Prelim.
    * Admin.
    * About the quiz.
* Q & A
    * How do we draw box and pointer diagrams?
    * How do we recurse over trees?
    * Emptiness.
    * Review vectors vs. lists.
    * Recursion over vectors.

_Admin_

* Upcoming extra credit
    * CS table tomorrow
    * Grinnell town hall, noon or 7:30 on Nov. 13

What might be on the quiz?
--------------------------

* Characters and strings.
* Box-and-pointer diagrams.
* Trees and recursion over trees.
* Vectors.

Box-and-Pointer Diagrams
------------------------

* Represents the structures created using cons.
    * Explicit cons, as in (cons 1 2)
    * Implicit cons, as in (list 1 2 3)
* Basic model: One "pair" (cons cell) for each cons
* How do we turn something we see in Scheme/Racket into a box and
  pointer diagram?
    * List: Draw the spine.  If there are N elements in the list, there
      are N cons cells.
         * Each cons cell holds one element of the list (plus reference
           to the next thing)
         * Exercise: Draw '(1 (2 (3 (4))))
    * For each null, just put a slash in the corresponding cell in
      the diagram
         * Exercise: Draw '(1 () () () 2)
    * If you ever see a dot, use the value following the dot as the
      RHS of the cons cell.
         * Exercise: Draw '(1 . 2)
         * Exercise: Draw '(1 2 3 . 4)
         * Exercise: Draw '(1 (2 . 3) ())
         * Exercise: Draw '(() ())

Recursion over Trees
--------------------

* Helper recursion (with "so-far") generally won't work because you need
  to process both the left and right subtrees.  

A slightly more complex pattern

    (define proc
      (lambda (tree)
        ; Recursive case: It's a cons-cell/pair/node: Recurse on
        ; both halve, then do something with the result
        (if (pair? tree)
            (combine (proc (car tree))
                     (proc (cdr tree)))a
            (base-case tree))))

An example that was almost on the quiz: Count how many times a value
appears in the tree

    (define tree-tally
      (lambda (tree value)
        (if (pair? tree)
            (+ (tree-tally (car tree) val)
               (tree-tally (cdr tree) val))
            (if (equal? value tree) 1 0))))

Emptiness
---------

* What is an empty vector?
    * `(vector)`
    * `'#()`

Review vectors vs. lists
------------------------

* Vectors and lists: Both collect values
* Getting an element
    * (vector-ref vec i) - really fast
    * (list-ref lst i) - really slow
* Changing an element
    * (vector-set! vec i newval) - really fast
    * NOT AVAILBLE FOR LISTS - you must build a new list
* Prepending an element
    * (cons val lst) - fast
    * WRITE YOUR OWN CODE FOR VECTORS - slow

What is more valuable, programmer time or computer time?

* It varies

CSC151.01 2015F, Class 48: Binary Search
========================================

* Continue partners (as best as possible)!
    * We'll need to rearrange a bit due to absences.

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* The problem of searching.
* Analyzing algorithmic efficiency.
* Making searching more efficient using divide-and-conquer.
* A demo: Destructive binary search.
* Considering the parameters to binary search.

Preliminaries
-------------

### Admin

* Cupcakes (thanks JM!)
* What food would you like for Monday's crit session?
    * Strawberries
    * Grapes
    * Bagels
    * Banana bread
    * Clementines/Mandarines
    * OJ, Diet Coke, Sprite
* Today's class is discussion, rather than lab.
* PSA

### Upcoming Work

* No reading during break.
* No lab writeup.
* No quiz this week.
* Exam 4 prologue due Friday, Dec. 4.
* Exam 4 due Monday, Dec. 7.  Email it to me as an attachment.
* Exam 4 cover sheet due Tuesday, Dec. 8.
* Exam 4 epilogue due Tuesday, Dec. 8.

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* Future of the Libraries Talk, December 3, Noon, JRC 101.

#### Peer Support

* Women's Basketball vs. Beloit, Nov. 28 at 3:00 p.m.
* December 1 at 4pm in Cultural Education Center, JM live translates!

#### Regular Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included; felines only), and Mondays at 4:45.  Requires sign up in 
  advance.    MORE HELP NEEDED!
* Socrates Cafe', Saturdays, Younker, 2pm. (Not this weekend.)
* Pun Club, Saturdays, 4pm, Way over Younker. (Not this weekend.)

#### Upcoming Peer Support

* Women's Basketball vs. St. Norbert, Dec. 5 at 3:00 p.m.
* One-act Festival Dec. 5 & 6.
* Choir Concert, Dec. 6 at 2pm in Herrick.
* Women's Basketball vs. Carroll, Dec. 12 at 3:00 p.m.

#### Miscellaneous

* Choosing a Major, December 1 at 11 a.m.
  (Yes, you can come even if you've already chosen a major; you'll just
  serve as a resource for the students who are thinking about choosing
  a major.)

### Other Good Things (No Extra Credit)

* Jingle Bell Holiday December 4.

### Questions

The problem of searching
------------------------

Computer science is ... the study of algorithms and data

* We've looked a lot at organization of data.
* We've written a lot of algorithms.
* Computer scientists often try to write general algorithms.
    * Instead of `darkest-color`, we might write `extreme` (needs list
      and also a way of comparing two elements of the list).


        (define extreme
          (lambda (values compare)
            ...))

        > (extreme (list 87 1 2 6 3) >) ; finds the largest integer
        > (extreme list-of-colors irgb-darker?) ; find the darkest color
        > (extreme list-of-numbers (lambda (val1 val2) 
                                      (< (abs val1) (abs val2))))
          ; finds closest to zero

        (define best
          (lambda (values better?)
            (let kernel ([guess (car values)]
                         [remaining (cdr values)])
               (cond
                 [(null? remaining)
                  guess]
                 [(better? guess (car remaining))
                  (kernel guess (cdr remaining))]
                 [else
                  (kernel (car remaining) (cdr remaining))]))))

Computer scientists often look for class of problems.

Two common classes:

* Searching for information in a collection of information.
* Sorting: Organize a collection of information (often for searching)

Analyzing algorithmic efficiency
--------------------------------

Once we've created an algorithm for solving a problem, we want to consider
how many resources are required to run the algorithm.  (Number of steps,
amount of memory.)

Two versions of reverse on Monday's lab.

* reverse-1, for a list of size n, required about n(n+1)/2 calls to
  append.
* reverse-2, for a list of size n, required about n calls to kernel

Whenever we find an algorithm, we consider its efficiency and then ask
if we can do it better.

A demo: Destructive binary search
---------------------------------

        Look in the middle.
        If the thing you are looking for is there, you are done!
        Throw away the half that's irrelevant
        Do it again.
        Eventually you are left with one item (or none)
        You are done.

Making searching more efficient using divide-and-conquer
--------------------------------------------------------

* We have about 1800 students at Grinnell.  How many student
  names do I have to look at?
* 1800 -> 900 -> 450 -> 225 -> 112 -> 56 -> 28 -> 14 -> 7 -> 3 -> 1 ?
    * About 10
* We're in Manhattan.  There are 3,000,000 people in the phone book.
  How many steps?  About 22.
* "The number of times you divide n by 2 in order to reach 1."
* That's log base 2 of n.

Considering the parameters to binary search
-------------------------------------------

<pre class="programlisting">
;;; Procedure:
;;;   binary-search
;;; Parameters:
;;;   vec, a vector
;;;   get-key, a function that extracts the important part (the "key"
;;;     from an entry)
;;;   may-precede?, a binary (two-parameter) predicate that let us
;;;     decide which part to throw away
;;;     (e.g., for numbers use < and for strings use string<=?
;;;   key, the key we are looking for
;;; Purpose:
;;;   Find the element with key key in vec.
;;; Produces:
;;;   ???, a ???
(define binary-search
  (lambda (vec get-key may-precede? key)
    ; Search a portion of the vector from lower-bound to upper-bound
    (let search-portion ([lower-bound 0]
                         [upper-bound (- (vector-length vec) 1)])
      ; If the portion is empty
      (if (> lower-bound upper-bound)
          ; Indicate the value cannot be found
          -1
          ; Otherwise, identify the middle point, the element at that 
          ; point and the key of that element.
          (let* ([midpoint (quotient (+ lower-bound upper-bound) 2)]
                 [middle-element (vector-ref vec midpoint)]
                 [middle-key (get-key middle-element)]
                 [left? (may-precede? key middle-key)]
                 [right? (may-precede? middle-key key)])
            (cond
              ; If the middle key equals the value, we use the middle value.
              [(and left? right?)
               midpoint]
              ; If the middle key is too large, look in the left half
              ; of the region.
              [left?
               (search-portion lower-bound (- midpoint 1))]
              ; Otherwise, the middle key must be too small, so look 
              ; in the right half of the region.
              [else
               (search-portion (+ midpoint 1) upper-bound)]))))))
</pre>

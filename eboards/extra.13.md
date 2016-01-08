CSC151 2015F, Review Session Week 13 - 2015-12-03
=================================================

_Overview_

* We look at general quiz issues.
* We do some sample quiz questions.
* We look at general exam issues.
* You ask about general issues.

_Admin_

* I have an 11 a.m. meeting, so will have to leave right at 10:50.
* I did not have the opportunity to prepare questions in advance.

About the Quiz
--------------

Topics

* Algorithm analysis
* Association lists
* Binary search

Types of Questions

* What is the value of this expression?
* What does this procedure do?
* Show the steps in evaluating this procedure.
* How many calls to this function will this expression take?
* Fill in the blanks to finish the definition.
* Write a procedure to do the following.
* Find the errors in the following procedure.

Sample Quiz Questions
---------------------

### Helper Info

Here's our original vector

    (define zu
      '#(("Aardvark"   "Amy"    "x2314")
         ("Anteater"   "Adam"   "x1234")
         ("Bison"      "Billy"  "x999")
         ("Buffalo"    "Barrett" "x1111")
         ("Buffalo"    "Betty"  "x1111")
         ("Chinchilla" "Charlie" "x4121")
         ("Citten"     "Caggie"  "x1111")))

### Sample call

Suppose we have a procedure, `(linear-search vec get-key key)` with
the "obvious" parameters, write a call to find the entry with name "Betty"
in `zu`.

#### A Solution

   (linear-search zu cadr "Betty")

### Fill in the blanks

Fill in the blanks in the following procedure that does linear search
in a vector, rather than a list, and returns the entry that contains
the desired key (if found) or reports an error if the key is not found.

    (define linear-search
      (lambda (vec get-key key)
        (let kernel ([pos 0])
          (cond
            [(= pos (- (vector-length vec) 1))
             (error "You idiot," key "is not in the vector")]
            [(equal? key (get-key (vector-ref vec pos)))
             (vector-ref vec pos)]
            [else
             (kernel (+ 1 pos))]))))

Note: equal? is your friend.

### Counting Steps

Consider the following two expressions

    (append (list 1) (append (list 2) (append (list 3) (list 4))))
    (append (append (append (list 1) (list 2)) (list 3)) (list 4))

What do the two expressions compute?

The first one: 

    (append '(1) (append '(2) '(3 4)))
    (append '(1) '(2 3 4))
    '(1 2 3 4) 

The second one

    (append (append '(1 2) '(3)) '(4))
    (append '(1 2 3) '(4))
    '(1 2 3 4)

Which one has fewer calls to `cons`?

    [x] The first one (three calls)
    [ ] The second one (six calls)
    [ ] They both have the same number!

`append` is usually defined as

    (define append
      (lambda (lst1 lst2)
        (if (null? lst1)
            lst2
            (cons (car lst1) (append (cdr lst1) lst2)))))

Here's the code we used to test on the computer.

<pre>
(define append
  (lambda (lst1 lst2)
    (if (null? lst1)
        lst2
        ($cons (car lst1) (append (cdr lst1) lst2)))))


(define cons-counter (vector 0))
(define count-cons (lambda () (vector-set! cons-counter 0
                                           (+ (vector-ref cons-counter 0) 1))))
(define $cons
  (lambda (left right)
    (count-cons)
    (cons left right)))
</pre>

### Show Steps

Suppose we are searching for the Anteater in zu using binary search.
What entries do we look at?

Suppose we are searching for "Professor" in zu.  What entries do we
look at?

### What else?

You may have an `assoc` question.  

Suppose the zu were a list, can you use `assoc` to find "Betty"?

What is `(assoc "Bear" zu)`?

General Questions
-----------------

_What do you mean when you say "binary search"?_

> An approach to finding information.  We assume that the information is
  stored in order (e.g., alphabetical, numeric, alphabetical by first name,
  alphabetical by last name, numerical by GPA).  We look for something in
  the data by repeatedly looking in the middle and throwing away half.

_What do we do in binary search when there are multiple entries with the
 same key, and we care about more than just the key?  (E.g., we know
 things are sorted by last name, so we search for "Buffalo", but we really
 want Betty Buffalo.)

> There are multiple possible approaches.  If it's sorted by both last name
  and first name, we could use something like
  `(lambda (person) (string-append (car person) ", " (cadr person))` as
  our `get-key`, and search for "Buffalo, Betty".

> If it's only sorted by last name, once we find one matching last name,
  we have to do linear search in both direction.

_When there are multiple entries with the same key, which one does it
 find?  It seems like it should find the middle one._

> It finds the one that the algorithm leads it to, which is sometimes
  the middle, sometimes the first, sometimes the last, sometimes one of
  the others.

> For example, if we have 40 things, and the identical entries are at
  positions 14, 15, 16.  Where does it look?

> First lower bound is 0, upper bound is 39, middle is 19.  We'll assume
  that the thing is to the left (because we know it is).

> Next, lower bound is 0, upper bound is 18, middle is 9.  The entries are
  to the right.

> lower bound is 10, upper bound is 18, middle is 14.  It found the first.

> Suppose the identical entries were at 12, 13, 14.  It found the last.

> "It depends."

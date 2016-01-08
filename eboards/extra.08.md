CSC151 2015F, Review Session Week 08 - 2015-10-29
=================================================

_Overview_

* We look at general quiz issues.
* We do some sample quiz questions.
* We gather additional questions and arrange them.
* I attempt answers.
* More Q&A, as appropriate.

About the Quiz
--------------

Topics

* Recursion
* Recursion with helper procedures
* List recursion
* Numeric recursion
* Patterns of recursion

Some things to know about

* Direct recursion vs. helper recursion
* Patterns of recursion
* The three key ideas of recursion: Base case, simplify, recursive case.

Types of Questions

* What is the value of this expression?
* What does this procedure do?
* Show the steps in evaluating this recursive procedure.
* Fill in the blanks to finish the definition.
* Write a procedure to do the following.
* Find the errors in the following procedure.

Sample Quiz Questions
---------------------

*There are enough of these that you should check the eboard.*

### Implement a procedure

Without using `list-ref`, write a procedure, `(my-list-ref lst n)`,
that extracts element `n` of a list. For example,

    > (my-list-ref (list "red" "orange" "yellow" "green" "blue" "indigo" "violet") 5)
    "indigo"
    > (my-list-ref (list "red" "orange" "yellow" "green" "blue" "indigo" "violet") 0)
    "red"

#### A Solution

* What is our base case?
* If we can solve the recursive case, how does that help us find the
  overall solution?
* How do we simplify/change the parameters for the recursive case.
* Check your answer!


   (define my-list-ref
     (lambda (lst n)
       (display (list 'my-list-ref lst n)) (newline)
       (if (zero? n)
           (car lst)
           (my-list-ref (cdr lst) (- n 1)))))

    > (my-list-ref (list "red" "orange" "yellow" "green" "blue" "indigo" "violet")
                   0)
    (my-list-ref (red orange yellow green blue indigo violet) 0)
    "red"
    > (my-list-ref (list "red" "orange" "yellow" "green" "blue" "indigo" "violet")
                   1)
    (my-list-ref (red orange yellow green blue indigo violet) 1)
    (my-list-ref (orange yellow green blue indigo violet) 0)
    "orange"
    > (my-list-ref (list "red" "orange" "yellow" "green" "blue" "indigo" "violet")
                   5)
    (my-list-ref (red orange yellow green blue indigo violet) 5)
    (my-list-ref (orange yellow green blue indigo violet) 4)
    (my-list-ref (yellow green blue indigo violet) 3)
    (my-list-ref (green blue indigo violet) 2)
    (my-list-ref (blue indigo violet) 1)
    (my-list-ref (indigo violet) 0)
    "indigo"

### Find the errors

Identify the errors in the following procedure, which is supposed
to count the number of odd values in a list of integers.

    (define tally-odd
      (lambda (lst)
        (tally-odd-kernel 0 lst)))

    (define tally-odd-helper
      (lambda (lst tally)
        (cond
          [(null? lst)
           0]
          [(odd? (car lst))
           (+ 1 tally)]
          [else
           (tally-odd helper lst tally)])))

#### A Solution

* Name change from `tally-odd-kernel` to `tally-odd-helper`
* `tally-odd helper` should be `tally-odd-helper`.
* Parameters are in the wrong order.
* When the car is odd, we still need to recurse, so it should be
  `(tally-odd-helper (cdr lst) (+ 1 tally))`.
* For the `else` clause, we want the cdr of the list.
* The base case should probably be `tally`.

### Show the steps

Consider the following procedure

    (define fun
      (lambda (lst)
        (if (null? lst)
            0
            (- (car lst) (fun (cdr lst))))))

Show the steps in evaluating `(fun '(1 2 3 4 5))`.  You need not show
the evaluation of `if`, `car`, and `cdr`; just show the results.  For
example,

    (fun '(1 2 3 4 5))
    => (- 1 (fun '(2 3 4 5)))

### Show the steps

Consider the following procedure

    (define fun
      (lambda (lst)
        (funner (cdr lst) (car lst))))

    (define funner
      (lambda (lst val)
        (if (null? lst)
            val
            (funner (cdr lst) (- val (car lst))))))

Show the steps in evaluatng `(fun '(1 2 3 4 5)`.  You can immediately
evaluate `car`, `cdr`, and `if`.  

### Complete the code

Finish the instructions for the `tally-odd` procedure below.

    (define tally-odd
      (lambda (lst)
        (cond
          [(null? lst)
           _____]
          [(odd? (car lst))
           _____ (tally-odd (cdr lst))]
          [else
           _____ (tally-odd (cdr lst))])))

#### A solution

    (define tally-odd
      (lambda (lst)
        (cond
          [(null? lst)
           0]
          [(odd? (car lst))
           (+ 1 (tally-odd (cdr lst)))]
          [else
           (tally-odd (cdr lst))])))

Would also accept the last line as the following.  (But it's somewhat
silly to add 0, it's just extra code and extra work.)

           (+ 0 (tally-odd (cdr lst)))])))

### Document

Fill in the Six P's for the following procedure

    (define whatzitdo
      (lambda (lst)
        (whatzitdotwo lst null)))

    (define whatzitdotwo
      (lambda (lst val)
        (if (null? lst)
            val
            (whatzitdotwo (cdr lst) (cons (car lst) val)))))


### Evaluate

Consider the following procedure

    (define whatzitdo
      (lambda (lst)
        (whatzitdotwo lst null null)))

    (define whatzitdotwo
      (lambda (lst foo bar)
        (if (null? lst)
            (list (reverse foo) (reverse bar))
            (whatzitdotwo (cdr lst)
                          (cons (car lst) bar)
                          foo))))

What is the value of `(whatzitdo '(1 2 3 4 5))`?

#### A Solution

    (whatzitdo '(1 2 3 4 5))
    => (w2 '(1 2 3 4 5) '() '())
    => (w2 '(2 3 4 5) '(1) '())
    => (w2 '(3 4 5) '(2) '(1))
    => (w2 '(4 5) '(3 1) '(2))
    => (w2 '(5) '(4 2) '(3 1))
    => (w2 '() '(5 3 1) '(4 2))
    => '((1 3 5) (2 4))
    ; It split the list in half, using alternating positions!

### Show steps

Consider the following procedure.

   (define fun
     (lambda (a b)
       (if (> a b)
           null
           (cons a (fun (+ a 1) b)))))

Show the steps in evaluating `(fun 5 9)`.

#### A Solution

   (fun 5 9)
   (cons 5 (fun 6 9))
   (cons 5 (cons 6 (fun 7 9)))
   (cons 5 (cons 6 (cons 7 (fun 8 9))))
   (cons 5 (cons 6 (cons 7 (cons 8 (fun 9 9)))))
   (cons 5 (cons 6 (cons 7 (cons 8 (cons 9 (fun 10 9))))))
   (cons 5 (cons 6 (cons 7 (cons 8 (cons 9 null)))))
   (cons 5 (cons 6 (cons 7 (cons 8 '(9)))))
   (cons 5 (cons 6 (cons 7 '(8 9))))
   (cons 5 (cons 6 '(7 8 9))))
   (cons 5 '(6 7 8 9))
   '(5 6 7 8 9))

### Evaluate

Consider the following procedure.

   (define fun
     (lambda (a b)
       (if (> a b)
           null
           (cons a (fun (+ a 1) b)))))

What is the result of `(fun -3 8)`?

#### A Solution

   '(-3 -2 -1 0 1 2 3 4 5 6 7 8)

### Document

Document the following procedure, which takes two integers as input.

   (define fun
     (lambda (a b)
       (if (> a b)
           null
           (cons a (fun (+ a 1) b)))))

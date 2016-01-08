CSC151 2015F, Review Session Week 11 - 2015-11-19
=================================================

_Overview_

* We look at general quiz issues.
* We do some sample quiz questions.
* You ask about general issues.

_Admin_

* I have an 11 a.m. meeting, so will have to leave right at 10:50.
* Warning!  There's a chance of snow tomorrow.

About the Quiz
--------------

Topics

* Trees
* Higher-Order Procedures
* File Input and Output

Types of Questions

* What is the value of this expression?
* What does this procedure do?
* Show the steps in evaluating this procedure.
* Fill in the blanks to finish the definition.
* Write a procedure to do the following.
* Find the errors in the following procedure.
* Draw a picture of this tree.
* Turn this tree into the corresponding Scheme expression.

Sample Quiz Questions
---------------------

*There are enough of these that you should check the eboard.*

### Draw a Picture

Sketch the following tree.

    (node 'z empty (node 'a (node 'b empty (leaf 'c)) (leaf 'd)))

### Identify Errors

Give two trees for which the following procedure will fail to work
correctly.

    (define tree-smallest
      (lambda (tree)
        (if (leaf? tree)
            (contents tree)
            (min (tree-smallest (left tree))
                 (tree-smallest (right tree))))))

### Identify Errors

Identify errors in the following procedure and indicate how to fix them.

    (define map
      (lambda (proc lst)
        (cond
          [(null? lst)
           (proc null)]
          [else
           (apply proc lst)
           (map proc (cdr lst))])))

### Show Output

Consider the following procedure

    (define whatzitdo!
      (lambda (f g)
        (let kernel ([i (- (vector-length g) 1)])
          (when (>= i 0)
            (vector-set! g i (f (vector-ref g i)))
            (kernel (- i 1))))))

What is the value of `vec` after each of the following expressions?

    (define vec (list->vector (iota 6))
    (whatzitdo! square vec)
    (whatzitdo! increment vec)
    (whatzitdo! (l-s - 3) vec)

#### A Solution

    (define vec (list->vector (iota 6))
    ; '#(0 1 2 3 4 5)
    (whatzitdo! square vec)
    ; f is square
    ; g is vec
    ; kernel 
    ; i is 5 (- (vector-length #(0 1 2 3 4 5) 1)
    ; (f (vector-ref g i))) is 25
    ; (vector-set vec 5 25) is the next step
    ; vec is now #(0 1 2 3 4 25)
    ; kernel with i of 4
    ; (f (vector-ref g i))) is 16
    ; vec is now #(0 1 2 3 16 25)
    ...
    ; vec will now be #(0 1 4 9 16 25)
    (whatzitdo! increment vec)
    ; vec will now be #(1 2 5 10 17 26)
    (whatzitdo! (l-s - 3) vec)
    ; vec will now be #(2 1 -2 -7 -14 -23)
    
### Document the Procedure

Document the previous procedure.

### A Solution

    ;;; Procedure:
    ;;;   vector-map!
    ;;; Parameters:
    ;;;   proc, a procedure
    ;;;   vec, a vector
    ;;; Purpose:
    ;;;   Map the procedure to each element in the vector.
    ;;; Produces:
    ;;;   [Nothing; called for the side effect]
    ;;; Preconditions:
    ;;;   proc is a unary (one-parameter) procedure
    ;;;   proc can be safely applied to each element of vec
    ;;; Postconditions:
    ;;;   For any position, p, value at p at the end is (proc (value at
    ;;;    p in the beginning))

### Write a Procedure

Write a procedure to count how many times the value `empty` appears at
the bottom of a tree.

#### A Solution

Look at our pattern for tree recursion.

    (define count-empty?
      (lambda (tree)
        (if (empty? tree)
            __________
            (_________ (count-empty? (left tree))
                       (count-empty? (right tree))))))

Might also use `(contents tree)`, but that doesn't seem relevant here.
              
    (define count-empty?
      (lambda (tree)
        (if (empty? tree)
            1
            (+ (count-empty? (left tree))
               (count-empty? (right tree))))))

Here's the procedure in action.

     (count-empty (node d (node g empty empty) empty))
     => (+ (count-empty (node g empty empty)) 
           (count-empty empty))
     => (+ (+ (count-empty empty)
              (count-empty empty))
           (count-empty empty))
     => (+ (+ 1
              (count-empty empty))
           (count-empty empty))
     => (+ (+ 1
              1)
           (count-empty empty))
     => (+ 2
           (count-empty empty))
     => (+ 2
           1)
     => 3


### Fill in the Blanks

Fill in the blanks to complete the definition of `tree-largest`

    (define tree-largest
      (lambda (tree)
        (cond
          [__________
           (error "Cannot find the largest value in an empty tree!")]
          [(leaf? tree)
           __________]
          [(empty? (left tree))
           (_________ (contents tree)
                      (tree-largest (right tree)))]
          [(empty? (right tree))
           (_________ (contents-tree)
                      (tree-largest (left tree)))]
          [else
           (_________ ___________________________
                      ___________________________
                      ___________________________)])))

#### A Solution

    (define tree-largest
      (lambda (tree)
        (cond
          [(empty? tree)
           (error "Cannot find the largest value in an empty tree!")]
          [(leaf? tree)
           (contents tree)]
          [(empty? (left tree))
           (max (contents tree)
                (tree-largest (right tree)))]
          [(empty? (right tree))
           (max (contents tree)
                (tree-largest (left tree)))]
          [else
           (max (contents tree)
                (tree-largest (left tree))
                (tree-largest (right tree)))])))

### Write a procedure

Write a procedure `(xorify p1? p2?)` that takes two predicates as input
and returns a predicate that takes one input and holds only when
exactly one of the predicates holds on that input.

    (define xorify
      (lambda (p1? p2?)
        ...))

    > (define f (xorify odd? (r-s > 0)))
    > (f 3)     ; Both hold
    #f
    > (f 4)     ; Second holds
    #t
    > (f -1)    ; First holds
    #t
    > (f -2)    ; Neither holds
    #f

#### A Solution

    (define xorify
      (lambda (p1? p2?)
        (lambda (val)
          (or (and (p1? val) (not (p2? val)))
              (and (p2? val) (not (p1? val)))))))

### Fill in the blanks

You've seen a variety of procedures, such as `largest` and `sum`, that
take a list of numbers and reduce that list to a single number by 
applying the same procedure again and again and again and again.

For example:

    (sum (list 5 1 8 2 5 3)) 
    = (+ (+ (+ (+ (+ 5 1) 8) 2) 5) 3)
    (largest (list 5 1 8 2 5 3)) 
    = (max (max (max (max (max 5 1) 8) 2) 5) 3)

Finish the following definition of `(reduce binproc lst)`, which,
given a list of the form `(v1 v2 ... vn)`, computes
`(binproc (binproc ... (binproc (binproc v1 v2) v3) ...) vn)`

    (define reduce
      (lambda (binproc lst)
        (let kernel ([remaining _________]
                     [so-far    _________])
          (if (________________)
              so-far
              (kernel (cdr remaining)
                      ___________________)))))

### Parse the Tree

Write a Scheme expression that corresponds to the following tree.  The
`@` symbols corespond to the empty value.


                   aardvark
                  /       \
            baboon       chinchilla
             /   \         /      \
        dingo    emu      @     ferret
        /   \    /  \          /     \
     gibbon  @  @    @       hippo    @
     /   \                   /  \
    @     @                 @    @

### Find the Errors

Identify the errors in the following procedure that is supposed to multiply
together all the numbers in a tree.  Indicate how to fix those errors.

    (define tree-product
      (lambda (tree)
        (if (empty? node)
            0
            (* (tree-product (left node))
               (tree-product (right node))))))

### Define a Procedure

You may recall that we wrote the procedure `all-irgb?` as follows.

    (define all-irgb?
      (lambda (lst)
        (or (null? lst)
            (and (irgb? (car lst))
                 (all-irgb? (cdr lst))))))

Using that as a pattern, write a procedure, `(all pred? lst)`, that
determines whether or not `pred?` holds on every element of `lst`.

### Define a Procedure

Finish the definition of the procedure, `(read-word FILE)`, that reads
the first word (sequence of non-space characters) in `FILE`.

    (define read-word
      (lambda (filename)
        (let ([source (open-input-file (filename))])
          (let kernel 

### Define a Procedure

Define a procedure, `(force-save text filename)` that opens the named
file, saves the given text to the file, and closes the file.  
Overwrite the file if it exists already.

Other Questions
---------------

* A *file* is a collection of data stored on your computer.
* Each file has one or more file names (also path).
* In Scheme, the file names are strings.
* To access the contents of the file, we need to turn the name into a "port".
* If we want to write to the file, it's an "output port"; if we want to
  read from the file, we call it an "input port".
* In Scheme, we use `(open-input-file FILENAME)`, which gives us an input
  port, and `(open-output-file FILENAME)`, which gives us an output port.
* We need to name the ports using normal Scheme strategies `define` or
  `let`.
* We can use input ports with `read`, `read-char`, and `read-line`.
* We can use output ports with `display`, `write`, and `newline`.


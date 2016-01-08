CSC151 2015F, Review Session Week 10 - 2015-11-12
=================================================

_Overview_

* We look at general quiz issues.
* We do some sample quiz questions.
* You ask about general issues.

_Admin_

* I have an 11 a.m. meeting, so will have to leave right at 10:50.

About the Quiz
--------------

Topics

* `random`
* Pairs and pair structures
* Vectors
* Trees (maybe - only draw a picture; no tree recursion)

Types of Questions

* What is the value of this expression?
* What does this procedure do?
* Show the steps in evaluating this procedure.
* Fill in the blanks to finish the definition.
* Write a procedure to do the following.
* Find the errors in the following procedure.
* Draw a picture of this pair structure.
* Turn this pair structure into the corresponding Scheme expression.

Sample Quiz Questions
---------------------

*There are enough of these that you should check the eboard.*

### Draw/Write Pair Structures

Consider the following pair structure

    (cons (cons 'a 'b) (cons 'c (cons null (cons 'd null))))

a. Draw the pair structure.

b. How will Scheme output this pair structure?

#### Solution

a. Is on the whiteboard and students' notes

b. 

    '((a . b) c () d)

#### A Variant

    (cons (cons 'a 'b) (cons 'c (cons null (cons 'd 'e))))

    '((a . b) c () d . e)

### Draw Pair Structures

Draw the result of the following expression.

    (list 'a null (list 'c 'd (cons 'e 'f)))

### Find the Errors

The following code is supposed to create a procedure that finds the
sum of three six-sided dice.  Identify all of the errors in the code.  

    (define roll-three-dice
      (lambda (roll)
        (let [roll (+ 1 (random 6))]
          (+ roll roll roll))))

### Write a Procedure

Write a procedure to choose a random even number between 0 and 20, inclusive,
each with equal probability.

### Fill in the Blanks

Fill in the blanks for the following procedure that is supposed to
sum all of the values in a vector.

    (define vector-sum
      (lambda (vec)
        (let kernel ([pos ___________________________]
                     [sum 0])
          (if (= pos ___)
              sum
              (kernel (- pos 1) (+ sum ___________________))))))

#### A Solution

    (define vector-sum
      (lambda (vec)
        (let kernel ([pos (- (vector-length vec) 1)]
                     [sum 0])
          (if (= pos -1)
              sum
              (kernel (- pos 1) (+ sum (vector-ref vec pos)))))))

### Fill in the Blanks

Fill in the blanks for the following procedure that is supposed to
find the largest value in a vector.

    (define vector-max
      (lambda (vec)
        (letrec ([kernel (lambda (pos)
                           (if (= pos ___________________)
                               (vector-ref vec pos)
                               (max _____________________
                                    (kernel (+ pos 1)))))])
          (kernel ____))))

#### A Solution

Think it through

    (kernel ___)
    => (max __________ (kernel (+ __ 1)))
    => (max __________ (max _______ (kernel (+ ___ 2))))
    ...

What should we start at? 0

    (kernel 0)
    => (max ____0_____ (kernel 1))
    => (max ____0_____ (max ___1___ (kernel 2)))
    ...

When should we stop?  When pos is vector-length of vector (or + 1 or -1)

    (define vector-max
      (lambda (vec)
        (letrec ([kernel (lambda (pos)
                           (if (= pos ___________________)
                               (vector-ref vec pos)
                               (max _____________________
                                    (kernel (+ pos 1)))))])
          (kernel ____))))

It looks like we should stop when we hit the length of the vector -1 because
the consequent uses the position


                           (if (= pos (- (vector-length vec) 1))


What should we check at each step?  The current element of the vector.

    (define vector-max
      (lambda (vec)
        (letrec ([kernel (lambda (pos)
                           (if (= pos (- (vector-length vec) 1))
                               (vector-ref vec pos)
                               (max (vector-ref vec pos)
                                    (kernel (+ pos 1)))))])
          (kernel 0))))

This is why we tend to use named `let` rather than `letrec`.  It's
also why we tend to carry along intermediate computations - it's easier
to think about.

### Show the Steps

Show output of the following procedure when called on the vector `'#(a
b c d e f)` and the value `0`.  You should include both the output from
`display` and the final result.

    (define vector-something!
      (lambda (vec val)
        (let kernel ([pos (- (vector-length vec) 1)])
          (display (list pos vec val)) (newline)
          (when (>= pos 0)
            (vector-set! vec pos val)
            (kernel (- pos 1))))))
            
    > (vector-something! (vector 'a 'b 'c 'd 'e 'f) 0)

#### A Solution

    > (vector-something! (vector 'a 'b 'c 'd 'e 'f) 0)
    => '(5 '#(a b c d e f) 0)
    => '(4 '#(a b c d e 0) 0)
    => '(3 '#(a b c d 0 0) 0)
    => '(2 '#(a b c 0 0 0) 0)
    => '(1 '#(a b 0 0 0 0) 0)
    => '(0 '#(a 0 0 0 0 0) 0)
    => '(-1 '#(0 0 0 0 0 0) 0)

Oh, it's `vector-fill!`

### Show the Steps

Show output of the following procedure when called on the vector 
`'#(a b c d e f)`.  You should include both the output from `display`
and the final result.

    (define vector-something!
      (lambda (vec)
        (let ([last (- (vector-length vec) 1)])
          (let kernel ([pos (quotient last 2)])
            (display (list pos vec)) (newline)
            (when (>= pos 0)
              (let ([tmp (vector-ref vec pos)])
                (vector-set! vec pos (vector-ref vec (- last pos)))
                (vector-set! vec (- last pos) tmp)
                (kernel (- pos 1))))))))

    > (vector-something! (vector 'a 'b 'c 'd 'e 'f))

### Draw a Picture

Sketch the following tree.

    (node 'a (node 'b empty (leaf 'c)) (leaf 'd))

### Whatzitdo?

What does the following procedure do?

    (define whatzitdo?
      (lambda (vec)
        (let kernel ([pos 0])
          (and (< pos (vector-length vec))
               (or (odd? (vector-ref vec pos))
                   (kernel (+ pos 1)))))))

#### A Solution

Determines if anything is odd in the vector.

### Picture to Scheme

Write the `cons` expression and the final displayed expression for the
following pair structure.

    +---+---+   +---+---+   +---+---+
    | * | *---> | * | *---> | * | * |
    +-|-+---+   +-|-+---+   +-|-+-|-+
      v           v           v   v
    +---+---+     B           C +---+---+
    | * | / |                   | / | / |
    +-|-+---+                   +---+---+
      v
      A

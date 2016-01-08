CSC151 2015F, Review Session Week 09 - 2015-11-05
=================================================

_Overview_

* We look at general quiz issues.
* You ask some exam questions.
* You ask about general issues.
* We do some sample quiz questions.

About the Quiz
--------------

Topics

* `letrec` and named `let`
* Turtles
* Iteration with `repeat` and `for-each`

Types of Questions

* What is the value of this expression?
* What does this procedure do?
* Show the steps in evaluating this recursive procedure.
* Fill in the blanks to finish the definition.
* Write a procedure to do the following.
* Find the errors in the following procedure.
* Sketch the result of some turtle code.
* Translate from `letrec` to named `let` (or vice versa)

Exam 3 Questions
----------------

_Will we need to use pairs on the exam?_

> No.

_Will we need to use `random` on the exam?_

> Yes.  Problem 6 is all about randomness.

_What does it mean when you say "don't use explicit recursion"?_

> It means that you can't write a procedure that calls itself (or a
  helper/kernel that calls itself).  But it's okay to use `map` or
  `repeat` or `for-each`, each of which is implemented recursively.

_For problem 2, what are we looking for?_

> The color that is furthest (in the color-space model) from the original
  colors.  The result is an integer-encoded RGB color.

_Can there be too much documentation?_

> I've rarely seen a CSC 151 student write too much documentation.

> You can send me your documentation in advance and say "Is this enough?"

_For turtles, positive angles clockwise or counter clockwise?_

> Clockwise.  Remember that evil Sam made things upside-down.

> Turn right is positive, turn left is negative.  From the perspective
  of the turtle.

Topics You'd Like To Discuss
----------------------------

_How do you repeat a set of instructions that have no parameter?_

> Put a `(lambda () ...)` around the instructions.  For example 

    > (repeat 5 (lambda () (turtle-forward! t 25) (turtle-turn! t 72)))

_What does `turtle-teleport!` do?_

> Moves the turtle to a particular location?

_What turtle procedures do you expect us to know?_

> `turtle-set-brush!`, `turtle-forward!`, `turtle-turn!`, 
  `turtle-teleport!`, `turtle-face!`, `turtle-up!`, 
  `turtle-down!`, `turtle-col`, `turtle-row`, `turtle-angle`.

_Can we vary both distance and angle in a turtle with `for-each`?_

   (for-each
     (lambda (distance angle)
       (turtle-forward! t distance)
       (turtle-turn! t angle))
     (list 10 20 30 40 50)
     (list 90 -90 90 -90 90))

_Can we go over letrec?_

_Can we go over turtles?_

_Can we go over numeric recursion?_

_Can we go over iteration?_

Sample Quiz Questions
---------------------

*There are enough of these that you should check the eboard.*

### Write code

Write instructions to make the following figure.   Assume the edges have
lengths 50, 40, 30, 20, 10, starting with the top edge.  Assume that 
the turtle is facing right and starts at the top-left corner and has 
the brush down. (no, it does not have to be dashed)

    ---------+
             |
      +---   |
      |      |
      +------+

      (define t (turtle-new world))
      (turtle-forward! t 50)
      (turtle-turn! t 90)
      (turtle-forward! t 40)
      (turtle-turn! t 90)
      (turtle-forward! t 30)
      (turtle-turn! t 90)
      (turtle-forward! t 20)
      (turtle-turn! t 90)
      (turtle-forward! t 10)
      (turtle-turn! t 90)

      (for-each (lambda (distance)
                  (turtle-forward! t distance)
                  (turtle-turn! t 90))
                (list 50 40 30 20 10))

### Write code

Write a procedure to make a dashed line of length 10*n, where every dash
is 8 pixels long and followed by a space of 2 pixels.

### Sketch a drawing

Sketch the drawing the results from the following commands.

    > (define canvas (image-show (image-new 200 200)))
    > (define t (turtle-new canvas))
    > (turtle-teleport! t 100 100)
    > (turtle-set-brush! t "2. Hardness 100" 0.5)
    > (for-each (lambda (n) (turtle-forward! t (* n 10)) (turtle-turn! t 90))
                (iota 5))

How does the drawing differ if we use `(reverse (iota 5))`?

### Rewrite code

Rewrite the following set of instructions to use iteration

        (turtle-forward! t 50)
        (turtle-turn! t 90)
        (turtle-forward! t 44)
        (turtle-turn! t 90)
        (turtle-forward! t 18)
        (turtle-turn! t 90)
        (turtle-forward! t 123)
        (turtle-turn! t 90)
        (turtle-forward! t 20)
### Write a procedure

Write a procedure, `(turtle-square turtle edge-length)` to make
the given turtle draw a square of the given edge length.  The square
should be oriented in whatever direction the turtle is currently
facing, so don't turn it or teleport it before drawing the square.

### Sketch a drawing

Sketch the drawing that results from the following commands.

    > (define canvas (image-show (image-new 200 200)))
    > (define t (turtle-new canvas))
    > (turtle-teleport! t 100 100)
    > (turtle-set-brush! t "2. Hardness 100" 0.5)
    > (repeat 5 (lambda () (turtle-forward! t 25) (turtle-turn! t 72)))

How does the drawing differ if we change the angle from 72 to 144?

### Convert code

Consider the following procedure

    (define tally-odd?
      (lambda (lst)
        (letrec ([kernel 
                  (lambda (remaining tally)
                     (if (null? remaining)
                         tally
                         (kernel (cdr remaining)
                                 (+ tally (if (odd? (car remaining)) 1 0))))))])
          (kernel lst 0))))

Rewrite the procedure using named `let` instead of `letrec`.

Converting from letrec to named let.  Form

        (let name ([param initial-value]
                   [param initial-value])
           body)

Let's look at the procedure above.

* Name: kernel
* Parameter: remaining
* Initial value of remaining is lst
* Parameter: tally
* Initial value of tally is 0

    (define tally-odd?
      (lambda (lst)
        (let kernel ([remaining lst]
                     [tally 0])
          (if (null? remaining)
              tally
              (kernel (cdr remaining)
                      (+ tally (if (odd? (car remaining)) 1 0)))))))

### Evaluate code

Consider the following procedure

    (define nuf
      (lambda (lst)
        (let kernel ([in lst]
                     [out null])
          (if (null? in)
              out
              (kernel (cdr in) (cons (car in) out))))))

What is the value of `(nuf (iota 5))`?

### Rewrite code

Rewrite the definition of `nuf` from the previous problem to use `letrec`
rather than named `let`.

### Fill in the blanks

Fill in the blanks to complete the definition of `(words-join words)`,
which takes a list of strings and joins them together with spaces in
between.

    (define words-join
      (lambda (words)
        (let kernel ([sentence (car words)]
                     [remaining __________])
          (if _____________
              sentence
              (kernel (string-append ________________
                                     " "
                                     ________________)
                       ______________)))))

#### A solution

    (define words-join
      (lambda (words)
        (let kernel ([sentence (car words)]    ; string
                     [remaining (cdr words)])  ; list of strings
          (if (null? remaining)
              sentence
              (kernel (string-append sentence
                                     " "
                                     (car remaining))
                      (cdr remaining))))))

### Interpret code

What is printed by the following code?

    > (define canvas (image-show (image-new 200 200)))
    > (define t (turtle-new canvas))
    > (turtle-teleport! t 100 100)
    > (turtle-set-brush! t "2. Hardness 100" 0.5)
    > (repeat 5 (lambda () 
                  (display (turtle-angle t)) (newline)
                  (turtle-forward! t 25) 
                  (turtle-turn! t 72)))



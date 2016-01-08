CSC151 2015F, Review Session 01
===============================

_Overview_

* You ask questions, I attempt answers.
* I ask questions, you attempt answers.
* We do some sample quiz questions.

Your Questions
--------------

_How do we think about algorithms and the parts of an algorithm?_

> Algorithms are (generalized) instructions for accomplishing some (category)
  of task.

> We already know how to express instructions in English.

> Our challenges this semester: Express algorithms in a language the computer
  understand.  (Scheme)  Develop our skills at designing, expressing, and
  analyzing algorithms.

> To do all that, we should think about what might go into an algorithm.

> The parts of an algorithm tell you what kind of things you can expect to
  learn (or need to learn) this semester in order to express algorithms
  in Scheme.  "What are my tools?"

> *Naming*.  Natural in English, more formal in programming languages.
  In Scheme, we know one way to name things `(define NAME VALUE)`.  
  We can also use `(define NAME EXPRESSION)` to compute a value that we
  then name.  These are one kind of *variable*.  (The name is the variable.)

> We also name the inputs to our algorithms.  We do not yet know how to do
  that.  These are the *parameters* to our algorithm (or subroutine).
  For example, "to average two numbers, a and b, add a and b and then divide
  by 2"  a and b are parameters.

> If we said "let x be the sum of a and b, divide x by 2", then x would be
  a variable.

> *Sequencing*.  We need to be able to do steps in order.  We've seen two
  ways that steps are sequenced in Scheme.  First, operations are done in
  the order we present them in the interactionns pane or definitions pane.

        > (define a 2)
        > (define b 3)
        > (define x (+ a b))
        > (/ x 2)

> We also saw sequencing in `(max (min val upper) lower)`.  In this case,
  we do the inner computation before the outer computation.  Here's a simpler
  one: `(* 10 (+ 3 4))` - add three and 4 before multiplying by 10.
  `(/ (+ a b) 2)` - add a and b before dividing by 2.

> *Basic operations and values*: Scheme already knows how to add, multiply,
  interpret most numeric notations, etc.  Throughout the semester, we we 
  learn new kinds of values and the operations on them.  You will want to
  note to yourself how to express those values and what operations you can do.

> *Conditionals*: We will need to make choice.  To compute `(mod x y)` - if
  'y' is positive and `x` is positive, use `(remainder x y)` if `y` is positive
  and `x` is negative, use `(+ y (remainder x y))`.

> *Repetition*: We may have to do an operation again and again and again.
  For example, to multiply 5 by 7, we can add 5 to itself 7 times.  To
  find the remainder of dividing 100 by 3, we repeatedly subtract 3 until we 
  we get a number less than 3.

> *Subroutines*: When we do similar/identical operations again and again, but
  in slightly different contexts, we want to express those operations as
  a separate algorithm.

_Do we need to know exact definitions?_

> No.

_Can we use the computer during quizzes?_

> No.

_What's going on with negative mods?_

> `(modulo x y)` when `y` < 0 is `(- (modulo (- x) (- y)))`

        > (modulo 10 3)
        1
        > (modulo -10 3)
        2
        > (modulo 10 -3)
        -2
        > (modulo -10 -3)
        -1

> While we may have a negative dividend on the quiz, we will not have a negative 
  divisor on the quiz.

Sample Quiz Questions
---------------------

Consider the following definitions

        (define kumquat (sqrt 10))
        (define tangerine -17.2)
        (define peach 17/3)
        (define pear 11)

        > (floor kumquat)
        3.0 ; the .0 indicates that we started with an inexact number,
            ; and so still have an inexact number
        > (floor peach)
        5 ; 17/3 is exact, so the result is exact
        > (floor pear)
        11
        > (floor tangerine)
        -18.0
        > (round tangerine)
        -17.0
        > (round peach)
        6
        > (round kumquat)
        3.0     ; 3^2 is 9, 4^2 is 16
        > (ceiling tangerine)
        -17.0
        > (ceiling peach)
        6
        > (exact? pear)
        #t
        > (exact? kumquat)
        #f
        > (exact? peach)
        #t


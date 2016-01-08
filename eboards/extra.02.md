CSC151 2015F, Review Session 02 - 2015-09-10
============================================

_Overview_

* We gather preliminary questions and arrange them.
* I attempt answers.
* More Q&A, as appropriate.
* Optionally: I ask questions, you attempt answers.
* We do some sample quiz questions.

Questions and Answers
---------------------

_Is there a reason that you don't order things well?  Do you really
 intend us to stay here all night?_

> I try to order things well.  If you find that you that you are stuck,
  stop! and ask for help.  There are tutors and mentors here Sunday
  through Thursday 7-10 p.m.  We also have review sessions 8-9 pm
  on Wednesday and Thursday.

_Do we need to know what's going on behind the scenes (e.g., "How
 Scheme Evaluates Expressions")?_

> You should realize that it has to look up the values that correspond
  to variables and parameters somewhere.

> You should know that Scheme evaluates inside-out, and that parentheses
  often mean "Look!  It's a procedure."

> I might say, given '(+ (* 3 (- (* x 2) 4)))`, what value is computed
  first?

> If I write `(define x 2) (* x 3)`  Next week, I'll expect you to understand
  the naming that happens with parameters in lambda expressions.

_Is there a preference on `(* x 3)` or `(* 3 x)`_

> For - and / it matters.  For * and +  it doesn't.  So we strive for
  clarity.

> To average `x` and `y`, we can write `(/ (+ x y) 2)` or `(* 1/2 (+ x y))`
  or `(* (+ x y) 1/2)`

_I know how to do the stuff on the computer.  What do you expect for
 writing it down?_

> I expect you to be able to read "straightforward" Scheme expressions
  using the procedures we've seen.  

> I expect that you know the math operations, `section`, `irgb`, 
  `o`, and such.  I don't expect you know the details of `irgb-redder`.

> For example, "Suppose `irgb-redder` adds 32 to the red component of
  an RGB color, keeping the other two constant.  What will you get
  for `(irgb->string (irgb-redder (irgb 0 50 11)))`.  Answer: `"32/50/11"`

_Will the quiz be cumulative or mostly focus on the more recent stuff?_

> Mostly more recent stuff: irgb colors, some things about transforms
  (If you don't remember one and we don't tell you, tell us what you 
  think it does.)  `o` and `section`.

> From past weeks, you know the form of Scheme values/expression and
  you know math operations.

> We will generally focus on recent things, with some "big picture" things
  continuing from week to week.

_How can I practice?_

> The mentors sometimes write sample quizzes for review sessions.

> You can try to write your own.

> There will always be some at the end of the review session.

_Can we look at `image-variant`?_

<pre>
> (image-show (color-grid 3 10 10 "red" "green" "blue" "yellow"))
1
> (image-show (color-grid 20 20 3 "red" "green" "blue" "yellow"))
2
> (image-show (color-grid 50 50 3 "red" "green" "blue" "orange" "magenta" "yellow"))
3
> (image-show (color-grid 50 50 3 "red" "green" "blue" "orange" "magenta" "yellow" (irgb 200 0 50) (irgb 50 0 200)))
4
> (irgb->string (irgb-complement (irgb 200 0 50)))
"55/255/205"
> (image-show (image-variant 4 irgb-complement))
5
> (image-show (image-variant 4 (o irgb-darker irgb-darker)))
6
</pre>

_What does `section` do?_

> For example, we want to build a procedure that multiplies by 1/2.
  If feels like we should just write `(* 1/2 __)` for "I'll fill in
  the ___" later.  But Scheme treats `(* ...)` as "Do the multiplication
  now."  We need a notation for telling Scheme "Wait!  Do it later."
  Section provides that notation.  We write `(section * 1/2 <>)`.
  Scheme thinks of this as "A procedure that needs one parameter and,
  when we get that parameter, multiplies it by 1/2."  It builds this
  as `(lambda (x) (* 1/2 x))`.

<pre>
> (define half (section * 1/2 <>))
> half
#<procedure:half>
> (half 6)
3
> (half half)
. . *: contract violation
  expected: number?
    given: #<procedure:half>
    argument position: 2nd
    other arguments...:
    1/2
> (half 15.2)
7.6
</pre>

> Section builds procedures by filling in *part* of a call to another
  procedure.

_Will we need to know `irgb-average`?_

> Approximately.  It makes a new color by averaging the components of
  two irgb colors.

<pre>
> (irgb->string (irgb-average (irgb 255 100 0) (irgb 5 200 50)))
"130/150/25"
> (image-variant 4 (section irgb-average (irgb 255 255 255) <>))
7
> (image-show 7)
7
</pre>

Sample Quiz Questions
---------------------

Given the `o` and the `increment` procedure which adds 1 to its parameter,
write a procedure `add3` that adds 3 to its parameter.

    (define add3 (o increment increment increment))

Given `section` and the `+`, write a procedure `add3` that adds 3 to 
its parameter.

    (define add3 (section + 3 <>))

Write a procedure that multiplies its parameter by 3 and then adds 1

    (define fun (o increment (section * 3 <>)))

    (define fun (o (section + 1 <>) (section * 3 <>)))

Suppose `increment` were not defined.  Define it.

Consider the following procedure and expressions.  Give the value of
the expressions

    (define silly (section / 2 <>))
    (silly 5) ; 2/5
    (silly 2) ; 1
    (silly 0) ; 2/0 - error

Consider the following procedures and expressions.  Give the value of
each expression.

    (define what (o square square))
    (define ever (section mod <> 10))
    (define whatever (o what ever)) 
    (define everwhat (o ever what)) 

    (what 5)
    (ever 5)
    (whatever 5)
    (everwhat 5)

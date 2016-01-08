CSC151 2015F, Review Session 03 - 2015-09-17
============================================

_Overview_

* We gather preliminary questions and arrange them.
* I attempt answers.
* More Q&A, as appropriate.
* We do some sample quiz questions.

Questions and Answers
---------------------

_Can we look at lambda expressions and do some practice._

> Let's think about procedures.  Procedures typically have
  about three important parts.

> 1. *A name*; something we can refer to it by.

> 2. *Instructions* that explain how the procedure accomplishes its goal

> 3. *Inputs* (*Parameters*) that we use as we accomplish our goal.  We
     name the parameters so that we can refer to them in the instructions.

> Better programmers have at least three other parts.

> 4. Preliminary documentation that explains purpose, expected inputs,
  output, etc.

> 5. Tests that help us have confidence that the procedure works correctly.

> 6. Something else that I'll remember later.

> We'll focus on the first three.  We need rules in the language for
  how we put those together.

        (define NAME
          (lambda (PARAM1 PARAM2 PARAM3)   ; Names of parameters sep by spaces
            EXPRESSION
            EXPRESSION
            EXPRESSION))

> Examples

        (define square
          (lambda (x)
            (* x x)))

         (define silly
           (lambda (x)
             "Hello"))

         (define black
           (lambda (x)
             (irgb 0 0 0)))
         (image-variant img black)

> If you have more than one expression, it evaluates each in turn and
  gives the value of the last.  They get evaluated in order from top to
  bottom - sequencing.

> Sometimes, this makes the expressions pointless

        (define irgb-variant
          (lambda (color)
            (irgb-redder color) 
            (irgb-complement color)
            (irgb-darker color)))
        > (irgb->string (irgb-variant (irgb 128 128 128)))

> If we wanted to do all three, with each working on the result of the last, 
  we could write

        (define irgb-variant
          (lambda (color)
            (irgb-darker (irgb-complement (irgb-redder color)))))

> We could also write

        (define irgb-variant
          (lambda (color)
            ((o irgb-darker irgb-complement irgb-redder) color)))))

> Or even

        ;;; Parameters:
        ;;;   color, an integer-encoded RGB color
        (define irgb-variant
          (o irgb-darker irgb-complement irgb-redder))

> We can see that things happen by using procedures with side effects,
  such as `display` or `color-swatch`

        (define something
          (lambda (color)
            (image-show (color-swatch (irgb-redder color)))
            (image-show (color-swatch (irgb-complement color)))
            (image-show (color-swatch (irgb-darker color)))))
        > (something (irgb 50 100 200))

_Can we have lambdas within lambda?_

> Yes, but it will make your brain hurt right now.

_Do other languages use lambdas?_

> Many do, but not all.  Some decide to be less confusing and use the
  word `function`.

_Can we talk more about preconditions and postconditions._

> Goal: Talk less casually about the inputs and results.

> First four P's give us informal definitions.

> Preconditions and postconditions build upon those to let us be precise
  and careful.

> Preconditions: Additional requirements that someone might not expect
  from just reading the parameters.

        ;;; Parameters
        ;;;   x, an integer
        ;;; Preconditions:
        ;;;   x is between 0 and 100

> Here's one you'll never have to write, but which is probably reasonable
  for new programmers to read

        ;;; Parameters:
        ;;;   img, an image
        ;;; Preconditions:
        ;;;   img was created by (image-load FILENAME) where FILENAME
        ;;;     names a jpeg file
        ;;;   The user has not shown img and clicked the close button.

> "What does the world have to be like in order for my procedure to work
  correctly?"

> Postconditions: Get all of the subtleties in the procedure down.

        ;;; Procedure:
        ;;;   irgb-redder
        ;;; Parameters:
        ;;;   color, an integer-encoded RGB color
        ;;; Purpose:
        ;;;   Compute a redder version of color.
        ;;; Produces:
        ;;;   redder, an integer-encoded RGB color.
        ;;; Preconditions:
        ;;;   [No additional]
        ;;; Postconditions:
        ;;;   If (irgb-red color) < (255-32)
        ;;;     (irgb-red redder) = (+ 32 (irgb-red color))
        ;;;   Otherwise
        ;;;     (irgb-red redder) = 255
        ;;;   The green and blue components of redder are the same as
        ;;;     those of color.

> Alternate

        ;;; Postconditions:
        ;;;    The red component of redder is no smaller than the red
        ;;;      component of color.
        ;;;    The green component of redder is no larger than the green
        ;;;      component of color
        ;;;    The blue component of redder is no larger than the blue
        ;;;      component of color
        ;;;    If color is not (irgb 255 0 0), at least one component
        ;;;      has changed.

_Why use three semicolons?_

> Multiple types of documentation.  The three semicolons remind me that
  it's preliminary documentation on a procedure.

> One semicolon might be copied code, or a short note to yourself, or ...

### Quiz Questions

_Are there questions with `display` and `newline`?_

> No

_Are there questions with hue, saturation, and value?_

> No

_Is there a chance we'll have a documentation problem?_

> 100%

_Is there a chance we'll have to write a procedure with `lambda`?_

> 100%

### Exam Questions

_Do we have to document procedures that say "don't document"?_

> No

_Can we be more casual in grammar on the prologue?_

> Yes.  The intent is notes for yourself.

_Can we be more casual in grammar on the epilogue?_

> No.  The intent is notes for me.

_I think that a lot of the exam questions seem to correlate to ideas
 on the homework.  Is that really true._

> Yes.

_How do I cite myself in an anonymous situation?_

> "My partner and I";  "Student 451231 and partner"

Sample Quiz Questions
---------------------

> Document (pick one of the irgb-procedures).

> Documenting irgb-add would be good, since it's a lab writeup.

> Write a procedure to compute x^3 using lambda

> Write a procedure to compute the average of three numbers

> (Probably too much: Write a procedure to take three inputs, lower, val, and upper and bound val so that the result is ...)

> Read the following procedure and write six-P style documentation for it.

        (define fun
          (lambda (x)
            (irgb x x x)))

        (define fun
          (o irgb-complement irgb-redder irgb-complement))

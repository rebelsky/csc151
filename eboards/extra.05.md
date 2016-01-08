CSC151 2015F, Review Session 05 - 2015-10-01
============================================

_Overview_

* We do some sample quiz questions.
* We gather preliminary questions and arrange them.
* I attempt answers.
* More Q&A, as appropriate.

Sample Quiz Questions
---------------------

Topics

* map (o and section)
* homogeneous lists
* drawings-as-values
* conditionals
* GIMP tools

Types of Questions

* What is the value of this expression?
* Write a procedure to ____.
* Document.

What is the value of each of these expressions?

        (iota 10)
        (append (iota 5) (iota 5))
        (reverse (append (iota 5) (iota 5)))
        (reverse (reverse (iota 3)))
        (list 1 2 3)
        (make-list 5 "hello")
        (reverse (append (make-list 2 'b) (make-list 3 'a)))
        (map * (list 1 2 3) (list 4 5 6))
        (map - (list 1 2 3) (list 4 5 6))
        (map / (list 1 2 3) (list 4 5 6))

        ; The following is a group
        (define f (lambda (x y) (+ (* 2 x) (* 3 y))))
        (map f (iota 3) (reverse (iota 3)))

        ; The following is a group;  Sketch the result
        (define canvas (image-new 200 200))
        (image-select-ellipse! canvas REPLACE 10 20 30 40)
        (context-set-fgcolor! "red")
        (image-fill! canvas)

        ; More "simple" ones
        (map (section / 1 <>) (list-drop (iota 5) 1))
        (map (o (section / 1 <>) (section + <> 1)) (iota 4))

Write a procedure to ...

        Draw a moon! (using GIMP tools; useful procedures are ...)
        Given a list of integers, double each of othem

                (define double-list
                  (lambda (lst)
                    (map (section * <> 2) lst)))

        Given two integers, x and y, return 
          The word "smaller" if x < y
          The word "equal", if x = y
          The word "greater", if x > y

                (define compare
                  (lambda (x y)
                    (if (< x y)
                        "smaller"
                        (if (= x y)
                            "equal"
                            "greater"))))

                (define compare
                  (lambda (x y)
                    (cond
                      [(< x y)
                       "smaller"]
                      [(= x y) 
                       "equal"]
                      [(> x y)
                       "greater"]
                      [else
                       "confusing"])))


Questions
---------

_Why would you have multiple consequents in a cond?_

        (define draw-something
          (lambda (image thing)
            (cond
              [(equal? thing "moon")
               (image-select-ellipse! image REPLACE 20 30 40 50)
               (image-select-ellipse! image SUBTRACT 30 30 40 50)
               (context-set-fgcolor! "green")
               (image-fill! image)]
              [(equal? thing "football")
               (image-select-ellipse! image REPLACE 20 30 40 50)
               (image-select-ellipse! image INTERSECT 30 30 40 50)
               (context-set-fgcolor! "brown")
               (image-fill! image)]
              [else
               (display "You idiot, I don't know how to draw ")
               (display thing)
               (newline)
               (display "Try again")
               (newline)])))

_What are the differences between `cond`, `if`, `when`?_

> If you have multiple tests, `cond` is generally easier to read.  If you
  have only test, `if` or `when` are probably better.

> If you have multiple things to do, `if` only allows one consequent and
  one alternate; `cond` and `when` allow multiple consequents.

_Can you give an example of when?_

        ; Only selects the ellipse when it's within the box
        (define image-select-ellipse-new!
          (lambda (image left top width height)
            (when (and (> left 0) (> top 0)
                       (< left (image-width image))
                       (< top (image-height image)))
               (image-select-ellipse! image REPLACE left top width height))))

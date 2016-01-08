CSC151.01 2015F, Class 30: Other Forms of List Recursion
========================================================

* New partners!

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Recursion, revisited.
* Key ideas from pre-break lab.
* Lab.

Preliminaries
-------------

### Admin

* Welcome back from break!
* Lots of pre-lab stuff today.  Sorry.
* Thanks for putting up with my absence.  My talk went okay, and my students
  appreciated having me there.
* Please don't leave pictoral class lists in the classroom.
* You should have received current grades in the class over the weekend.
  I'm happy to discuss any questions you have on those grades via email
  or in office hours.
* Exam 2 will be returned on Friday.  I will make exceptions for folks
  who needed to invoke "There's More to Life".
    * I won't provide notes on the exam until Friday.
* Review sessions this week
    * Monday 8pm (Zachary)
    * Wednesday 8pm (Caleb)
    * Thursday 8pm (Erin)
* Quizzes returned.  We'll talk about the number of squares

### Upcoming Work

* Reading for Tuesday:
  [Numeric Recursion](../readings/numeric-recursion-reading.html) 
* [HW 6](../assignments/assignment.06.html) is ready in draft form
    * Pick your own partners (or work alone)!
    * We'll discuss it in more depth tomorrow.
* Today's Lab writeup (due before class Wednesday)
    * Email to <rebelsky@grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 30 (Your Names)_
    * Exercises: A *good* question on today's lab.  (Alone or with partner.)

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* Any of the Grinnell Prize Week Activities this week.
* CS Table Tuesday: Hear about the Grace Hopper Celebration of Women 
  in Computing.
* Grinnell Town Hall Wednesday at noon or 7pm: Self-Gov.
* Conversation about Study Abroad at AIT in Hungary: Wednesday at 4:15 in 3821.
* Convocation Thursday at 11: Contesting Muhammad: Contermporary Controversies
  in Historical Perspective
* CS Extras Thursday at 4:15pm in 3821: Algorithms for Assembling the Tree
  of Life.
* What's the Deal with the Digital Liberal Arts?  Thursday at 4:15 in
  the D-Lab.  With Autumnal snacks!

#### Peer Support

* YZ on "Rainbow Ramsey Theory" Tuesday at 11 a.m. 2517.
* Thursday at 7pm, Womens BBall Scrimmage against some pointless team that
  will lose.  Games start Nov. 15.
* One-act Festival Dec. 5 & 6.
* Spark Tank, Wednesday, 7pm in Roberts Theatre in Bucksbaum.
* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included), Sunday at 4:45, and Mondays at 4:45.  Requires sign up in 
  advance.  
* Pun Club, Saturdays, 4pm, Way over Younker.

### Questions

Recursion, revisited
--------------------

Two minutes with partner: 

* What are the key ideas of recursion?
* What questions do you still have? (Write them on cards and give to
  the mentors.)

Key Ideas: 

* A mechanism for solving problems.
* Base case: Something that you test to make sure that the problem is
  simple enough that we can come up with an answer immediately.
* If it's not simple, we break up the problem (e.g., for a list we take
  the car and the cdr).  You then run part of the broken-up problem
  through the same algorithm again.  
    * Often build up an answer from the solution to the broken-up problem.
    * (Not always required.)
* Idea: The procedure keeps calling itself on simpler and simpler inputs
  until it reaches the base case.
* Sometimes it's useful to build an extra function that does the recursion
  and takes extra parameters.
* Key aspects for recursive step: simplify, recurse, and combine

When is it useful to have a helper function?  Here's an example: Sum

> Often makes it easier to think about solving the problem.  Also other
  issues that we'll discuss in a few minutes.

        (define sum
          (lambda (lst)
            (sum-kernel lst 0)))

        (define sum-kernel
          (lambda (lst running-sum)
            (if (null? lst)
                running-sum
                (sum-kernel (cdr lst) (+ (car lst) running-sum)))))

What kinds of parameters can you use for recursion?  Can you just do
recursion on lists?

> We can do recursion on all sorts of things.  You'll learn about recursion
  with numbers tonight!

Why does helper recursion give us lists backwards?

        (define select-odd-1
          (lambda (lst)
            (cond 
              [(null? lst)
               null]
              [(odd? (car lst))
               (cons (car lst)
                     (select-odd-1 (cdr lst)))]
              [else
               (select-odd-1 (cdr lst))])))

        (define select-odd-2
          (lambda (lst)
            (select-odd-kernel lst null)))

        (define select-odd-kernel
          (lambda (lst odds-so-far)
            (cond
              [(null? lst)
               odds-so-far]
              [(odd? (car lst))
               (select-odd-kernel (cdr lst)
                                  (cons (car lst) odds-so-far))]
              [else
               (select-odd-kernel (cdr lst)
                                  odds-so-far)])))

        (select-odd-2 '(5 2 1 3 4 7))
        -> (select-odd-kernel '(5 2 1 3 4 7) null)
        -> (select-odd-kernel '(2 1 3 4 7) '(5))
        -> (select-odd-kernel '(1 3 4 7) '(5))
        -> (select-odd-kernel '(3 4 7) '(1 5))
        -> (select-odd-kernel '(4 7) '(3 1 5))
        -> (select-odd-kernel '(7) '(3 1 5))
        -> (select-odd-kernel '() '(7 3 1 5))
        -> '(7 3 1 5)

Can we do the non-helper version?
                
        (define select-odd-1
          (lambda (lst)
            (cond 
              [(null? lst)
               null]
              [(odd? (car lst))
               (cons (car lst)
                     (select-odd-1 (cdr lst)))]
              [else
               (select-odd-1 (cdr lst))])))

        (select-odd-1 '(3 4 1 2 5))
        -> (cons (car '(3 4 1 2 5)) (select-odd-1 (cdr '(3 4 1 2 5))))
        -> (cons 3 (select-odd-1 (cdr '(3 4 1 2 5))))
        -> (cons 3 (select-odd-1 '(4 1 2 5)))
        -> (cons 3 (select-odd-1 (cdr '(4 1 2 5))))
        -> (cons 3 (select-odd-1 '(1 2 5)))
        -> (cons 3 (cons (car '(1 2 5)) (select-odd-1 (cdr '(1 2 5)))))
        -> (cons 3 (cons 1 (select-odd-1 '(2 5))))
        -> (cons 3 (cons 1 (select-odd-1 (cdr '(2 5)))))
        -> (cons 3 (cons 1 (select-odd-1 '(5))))
        -> (cons 3 (cons 1 (cons (car '(5)) (select-odd-1 (cdr '(5))))))
        -> (cons 3 (cons 1 (cons 5 (select-odd-1 null))))
        -> (cons 3 (cons 1 (cons 5 null)))
        -> (cons 3 (cons 1 '(5)))
        -> (cons 3 '(1 5))
        -> '(3 1 5))

When we use helpers with lists, should we reverse them at the end?

> Probably.  It depends on the goals of the procedure.

        (define select-odd-2
          (lambda (lst)
            (reverse (select-odd-kernel lst null))))

        (define select-odd-kernel
          (lambda (lst odds-so-far)
            (cond
              [(null? lst)
               odds-so-far]
              [(odd? (car lst))
               (select-odd-kernel (cdr lst)
                                  (cons (car lst) odds-so-far))]
              [else
               (select-odd-kernel (cdr lst)
                                  odds-so-far)])))

> If the goal was to reverse, then probably not

Why is `(and)` #t and `(or)` #f?

> `(or ...)` is #t if *any* of its parameters are true.  
  `(or ...)` is false otherwise.
  None of the parameters to `(or)` is true.

> `(and ...)` is #f if *any* of its parameters are false.
  `(and ...)` is #t (or truish) otherwise.
  None of the parameters to `(and)` are false.  So it must be true.

Key ideas from pre-break lab
----------------------------

Two minutes with partner: 

* What's wrong with this code?
* What are two ways we can fix it?

        (define irgb-brightest
          (lambda (colors)
            (cond
              [(null? (cdr colors))
               (car colors)]
              [(>= (irgb-brightness (car colors)) 
                   (irgb-brightness (irgb-brightest (cdr colors))))
               (car colors)]
              [else
               (irgb-brightest (cdr colors))])))

What's wrong?

How to fix?

Lab
---

Not done.  Please read over and send questions!

CSC151.01 2015F, Class 31: Numeric Recursion
============================================

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* More Discussion of Recursion.
* Lab.

Preliminaries
-------------

### Admin

* Continue partners.
* I brought another food-like substance.
* New method for calling on students.
* Still some pre-lab stuff this week.
* Review sessions this week
    * Wednesday 8pm (Caleb)
    * Thursday 10am (SamR)
    * Thursday 8pm (Erin)

### Upcoming Work

* Reading for Wednesday:
  [Naming Local Procedures](../readings/letrec-reading.html) 
* Quiz Friday: Recursion, Recursion, and more Recursion
* [HW 6](../assignments/assignment.06.html) is ready.
    * We'll look at a few issues.
    * Pick your own partners (or work alone)!
* Today's Lab writeup (due before class Friday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 31 (Your Names)_
    * Exercises: 3

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* Any of the Grinnell Prize Week Activities this week.
* CS Table TODAY: Hear about the Grace Hopper Celebration of Women 
  in Computing.
* Grinnell Town Hall Wednesday at noon: Self-Gov.
* *Conversation about Study Abroad at AIT in Hungary: 
  Wednesday at 4:15 in 3821.*
* Convocation Thursday at 11: Contesting Muhammad: Contermporary Controversies
  in Historical Perspective
* CS Extras Thursday at 4:15pm in 3821: Algorithms for Assembling the Tree
  of Life.
* What's the Deal with the Digital Liberal Arts?  Thursday at 4:15 in
  the D-Lab.  With Autumnal snacks!
* Sexual Misconduct at Grinnell College: Results from the 2013 and 2015 
  Sexual Conduct Surveys.  1-3 pm, November 8, JRC 101.
* R.L. Stephens II events Thursday and Friday.

#### Peer Support

* YZ on "Rainbow Ramsey Theory" Tuesday at 11 a.m. 2517.
* Thursday at 7pm, Womens BBall (scrimmage)
* Spark Tank, Wednesday, 7pm in Roberts Theatre in Bucksbaum.
* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included), Sunday at 4:45, and Mondays at 4:45.  Requires sign up in 
  advance.  
* Pun Club, Saturdays, 4pm, Way over Younker.

#### Upcoming Peer Support

* Women's Basketball Opening Game, 1pm, Nov. 15, vs. Silver Lake.
* One-act Festival Dec. 5 & 6.

### Good Things to Do, No EC

* 8:30 p.m. tonight in Loose Lounge: Campus Conversation on Healthy and
  Unhealthy Relationship Dynamics

### Questions

_What are you doing with our questions on lab 30?_

> Questions have started to arrive.  I am sending answers when I can.

> I am gathering all of the questions and answers in a document that
  I will release in class on Wednesday.  Make sure to get your questions
  in before then.

> It helps to try the lab.

_What should we do if we don't finish a lab or lab writeup in class?_

> Required: Finish the writeup.

> Preferred (but not required): Finish the lab.

> Preferred (but not required): With your partner.

Key ideas from pre-break lab
----------------------------

A few minutes with partner: Consider the following code.

    ;;; Parameters:
    ;;;   colors, a non-empty list of IRGB colors
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

* What's wrong with this code?
* What are three ways we can fix it?

What should this code do?

* Picks the brightest color in a list of colors.
* Does it accomplish the task: Yes!

What's wrong?

* It's *really* inefficient
* 1 element: 1 call
* 2 elements: 3 calls
* 3 elements: 7 calls
* 4 elements: 15 calls
* k elements: 2^k - 1 calls.  Ouch!

How would you figure out that your code was this inefficient?

* Could add a `display` procedure to see how many steps are taken.
* We'll also learn other techniques.

How to fix?

* "Make sure that there's only one recursive call per element in the list."

Technique one: Use a recursive kernel

    (define irgb-brightest
      (lambda (colors)
        (irgb-brightest-kernel (cdr colors) (car colors))))

     (define irgb-brightest-kernel
       (lambda (colors brightest-so-far)
         (cond 
           [(null? colors)
            brightest-so-far]
           [(>= (irgb-brightness (car colors))
                (irgb-brightness brightest-so-far))
            (irgb-brightest-kernel (cdr colors) (car colors))]
           [else
            (irgb-brightest-kernel (cdr colors) brightest-so-far)])))

Technique two: When you have repeated code, use `let` to name the
repeated code.

    (define irgb-brightest
      (lambda (colors)
        (if (null? (cdr colors))
            (car colors)
            (let ([brightest-in-rest (irgb-brightest (cdr colors))])
              (if (>= (irgb-brightness (car colors)) 
                      (irgb-brightness brightest-in-rest))
                  (car colors)
                  brightest-in-rest)))))

Technique three: Try to avoid the second recursive call by using another
helper procedure.

Lab
---

Writeup: Exercise 3

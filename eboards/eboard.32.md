CSC151.01 2015F, Class 2^5: Naming Local Procedures
==================================================

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Some incorrect implementations of `iota`.
* Lab.

Preliminaries
-------------

### Admin

* New partners.
* More not-quite food at the back of the room.
* More stuff before lab today
* Review sessions this week
    * Wednesday 8pm (Caleb)
    * Thursday 10am (SamR)
    * Thursday 8pm (Erin)
* [Notes on lab 30](../handouts/writeup.30.html) are now available.
* Named let is confusing.  It will make more sense as time goes on.

### Upcoming Work

* Reading for Friday:
  [Turtle Graphics](../readings/turtle-graphics-reading.html) 
* Quiz Friday: Recursion, Recursion, and more Recursion
  (but no `letrec` or named `let`).
* [HW 6](../assignments/assignment.06.html) due next Tuesday.
    * May be a few bugs in part A.
    * More examples may appear for part B.
* Today's Lab writeup (due before class Monday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 32 (Your Names)_
    * Exercises: 4ab

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* Any of the Grinnell Prize Week Activities this week.
* Grinnell Town Hall Wednesday at noon: Self-Gov.
* **Conversation about Study Abroad at AIT in Hungary: 
  Wednesday at 4:00 in 3821.**
* Convocation Thursday at 11: Contesting Muhammad: Contermporary Controversies
  in Historical Perspective
* CS Extras Thursday at 4:15pm in 3821: Algorithms for Assembling the Tree
  of Life.
* What's the Deal with the Digital Liberal Arts?  Thursday at 4:15 in
  the D-Lab.  With Autumnal snacks!
* R.L. Stephens II events Thursday and Friday.
* **Expressing Yourself Inside and Outside the Classroom: A Faculty Panel.
  Friday, noon, JRC 209. (With Prof. Katya, SamR, Prof. Praitis,
  Prof. Willig Onwuachi, and Prof. Byrd)**
* **Saturday at 3pm: Harry Potter and the Methods of Rationality
  discussion group.  <http://hpmore.com>.**
* CS Table Tuesday: Why people support and bully online.
* Sexual Misconduct at Grinnell College: Results from the 2013 and 2015 
  Sexual Conduct Surveys.  1-3 pm, November 8, JRC 101.

#### Peer Support

* Thursday at 7pm, Womens BBall (scrimmage vs MCC).  Sam will send out
  email once he hears more.
* Spark Tank, Wednesday, 7pm in Roberts Theatre in Bucksbaum.
* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included), Sunday at 4:45, and Mondays at 4:45.  Requires sign up in 
  advance.  
* Socrates Cafe', Younker, 2pm.
* Pun Club, Saturdays, 4pm, Way over Younker.

#### Upcoming Peer Support

* November 14, Orchestra Concert, Sebring Lewis, 7:30 p.m.
* Women's Basketball Opening Game, 1pm, Nov. 15, vs. Silver Lake.
* One-act Festival Dec. 5 & 6.

### Other Good Stuff to Do

* Women's Soccer Saturday
* Men's Soccer Saturday
* Halloween event Saturday
* Think good thoughts about EG on her Saturday birthday

### Questions

Some Incorrect Implementations of `iota`
----------------------------------------

A typical start

    (define my-iota
      (lambda (n)
        (if (zero? n)
            null
            (cons (- n 1) (my-iota (- n 1))))))

Problem.  It's backwards!  Here's an incorrect approach to fixing the
problem.

    (define my-iota
      (lambda (n)
        (if (zero? n)
            null
            (cons (- n 1) (reverse (my-iota (- n 1)))))))

What happens?

    (my-iota 1) => '(0)
    (my-iota 2) => (cons 1 (reverse '(0))) => '(1 0)
    (my-iota 3) => (cons 2 (reverse '(1 0))) => '(2 0 1)
    (my-iota 3) => (cons 3 (reverse '(2 0 1))) => '(3 1 0 2)


Maybe reverse is in the wrong place

    (define my-iota
      (lambda (n)
        (if (zero? n)
            null
            (reverse (cons (- n 1) (my-iota (- n 1)))))))

    (my-iota 1) => '(0)
    (my-iota 2) => (reverse (cons 1 '(0))) => (reverse '(1 0)) => '(0 1)
    (my-iota 3) => (reverse (cons 2 '(0 1))) => (reverse '(2 0 1)) => '(1 0 2)

Lab
---

You can use `all` and `any` to check a predicate on every member of a list

        > (all irgb? (list "a" "b" "c"))
        #f

        > (all irgb? (list (irgb 1 1 1)))
        #t

`let` vs `letrec` (aka Sam is evil)

    (define colonel
      (lambda (vals largest-so-far)
        0))
    
    (define largest
      (lambda (vals)
        (let ([colonel (lambda (vals largest-so-far)
                         (if (null? vals)
                             largest-so-far
                             (colonel (cdr vals) 
                                      (max (car vals) largest-so-far))))])
          (colonel (cdr vals) (car vals)))))

Exercise: 4 a/b

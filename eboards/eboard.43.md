CSC151.01 2015F, Class 43: Higher-Order Procedures, Revisited
=============================================================

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Quick summary.
* Lab.

Preliminaries
-------------

### Admin

* Continue partners!
* Reminder: If you meet with me for TMTL, please make sure to bring your
  exam and to have read through the answer key.
* Review sessions this week:
    * Wednesday, 8pm (Caleb)
    * Thursday, 10am (SamR)
    * Thursday, 8pm (Erin)

### Upcoming Work

* Project Pictures: NOW!
* Projects: Next Tuesday at 10:00 a.m.
* Reading for Wednesday (some parts will be familiar):
  [Files in Scheme](../readings/files-reading.html)
* Today's Lab writeup (due before class Friday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 43 (Your Names)_
    * Exercises: 5 and 6

### Extra Credit Opportunities

* If possible, send me these in advance.
* Note: You don't get extra credit for supporting yourself.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* Learning Deconstructed Workshop Series, Tuesdays at 11 in JRC 209.
* *CS Table TODAY: Social Media and Emergency Response*
* Scholars' Convocation Thursday: Cosmic Secrets: Soviet Space Exploration,
  Censorship, and the Cold War.
* Metropolitan Opera Simulcast, November 21, 11:30 a.m. Lulu by Berg, 
  Harris Cinema.

#### Peer Support

* Translations (a play).  7:30 p.m. Thursday through Saturday,
  2:00 p.m. Sunday.  Tickets at the Box Office.

#### Miscellaneous

* Noontime rally, Thursday, in support of the Missouri students and of our
  own students of color.

#### Regular Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included; felines only), and Mondays at 4:45.  Requires sign up in 
  advance.    MORE HELP NEEDED!
* Socrates Cafe', Saturdays, Younker, 2pm.
* Pun Club, Saturdays, 4pm, Way over Younker.

#### Upcoming Peer Support

* Women's Basketball vs. Beloit, Nov. 28 at 3:00 p.m.
* Women's Basketball vs. St. Norbert, Dec. 5 at 3:00 p.m.
* One-act Festival Dec. 5 & 6.
* Women's Basketball vs. Carroll, Dec. 12 at 3:00 p.m.

### Other Good Things (No Extra Credit)

* Jazz Band Wednesday
* Latin-American Ensemble Thursday
* Swim Meet Saturday

### Questions

Quick Summary
-------------

* Higher-order procedures are procedures that take other procedures
  as parameters or return other procedures as values.
    * Some are built-in
    * Some you define yourself
* Turtle script was an example from the exam.
* What are some of the built-in ones we've used this semester?
    * `(repeat NUM PROC)` or `(repeat NUM PROC VAL)`
        * In the first case, the procedure has no parameters
    * `(for-each PROC LIST)`
    * `(image-variant IMAGE PROC)`
    * `(map PROC LIST)`
    * `(image-compute TWO-PARAMETER-PROC WIDTH HEIGHT)`
        * The procedure needs to take two integers and return an
          integer-encoded RGB color
    * `(apply PROC LIST)` - a new one
    * `(any PRED? LIST)` and `(all PRED? LIST)`.
* Four of these generally return procedures
    * `(section PROC ...)`
    * `(l-s PROC VAL)` 
        * Must be a binary procedure
    * `(r-s PROC VAL)` 
    * `(compose PROC PROC)` and `(o PROC PROC)`
* When you pass in the procedure, you can pass in both a named procedure
  and an anonymous procedure.
* How do you write a procedure that returns a procedure?

        (define function
          (lambda (params)
            ...
            (lambda (other-params) ; THIS IS WHAT YOU ARE RETURNING
               instructions )))

Questions, Revisited
--------------------

_Can we write `map` together?_

        (define my-map
          (lambda (proc lst)
            (if (null? lst)
                null
                (cons (proc (car lst))
                      (my-map proc (cdr lst))))))

Lab
---

Writeup: 5 and 6

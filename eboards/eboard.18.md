CSC151.01 2015F, Class 18: Conditionals
=======================================

* New partners!

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Exam Note.
    * Questions.
* Lab!

Preliminaries
-------------

### Admin

* I hope you had a great family weekend, whether or not your family was
  able to visit.
* I mourn those of you who have become members of the undead.
* Review sessions
    * Wednesday at 8pm (Kumar)
    * Thursday at 10am (SamR)
    * Thursday at 8pm (some zombie)
* For the first time in a long time, I was unable to get the CSC 151
  quizzes or exams graded over the weekend.  A few other tasks with
  tight deadlines are coming up, so you probably won't get the exams
  back until Friday.  
    * I apologize.
    * I will get your quizzes back to you tomorrow.  We'll also
      discuss them.

### Upcoming Work

* Reading for Tuesday:
  [Anonymous Procedures](../readings/anonymous-procedures-reading.html) 
* [HW 4](../assignments/assignment.04.html) due Tuesday night.
* Today's Lab writeup (due before class Wednesday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 18 (Your Names)_
    * Exercise: 3c

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* EE's show in Smith
* CS Table: YouTube Content Identification.

#### Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included), Sunday at 4:45, and Mondays at 4:45.  Requires sign up in 
  advance.  
* PALS dinner Thursday night.  (Sam will treat if you find it a financial 
  burden.)
* Pun Club, Saturdays, 4pm, Way over Younker.

### An Exam Note

What should I do if I got the following as sample output on problem 3?

    > (seconds (add-times (time 0 0) (time 0 97)))
    37
    ...
    > (seconds (add-times (time 0 0) (time 0 97)))
    97

* The same procedure shouldn't give two different answers.
* In at least one case, it's not correct.
* One of the answers is probably not representative of the actual code.
* Maybe it was cut and paste (from the exam).

Excuses

* They generated the two outputs with different versions of the procedure.
* It must be accidental; no one would ever be stupid enough to forge output
  for Sam (or any other computer scientist).

### Questions

These can be on the homework, the reading, whatever.

_Can we use helper procedures?_

> Certainly?

_How much documentation should we use for helper procedures?_

> Preferred: Six P's.

> Because Preconditions/Postconditions are Painful Conditions, I'm okay
  with the 4P's.

> But because I primarily care that you think about inputs and outputs
  and what the procedure does, I might accept a variant.  (You'll find
  that most acceptable variants aren't much shorter than the 4P's)

_We think our code should work and it doesn't.  Why not?_

> Please send it to me and I'll see what I can figure out.  
  *HELP NEEDED on HW4* is a good subject.

_What radius should our circle of shapes be?_

> Whatever you find most convenient.

_Why didn't people ask those questions at the start of class?_

> I don't know.

Lab
---

Writeup is *3c*

What's better?

    (define irgb-brighter?
      (lambda (color1 color2)
        (if (> (irgb-brightness color1) (irgb-brightness color2))
            #t
            #f)))

    (define irgb-brighter?
      (lambda (color1 color2)
        (> (irgb-brightness color1) (irgb-brightness color2))))

ZS says "If you find yourself explicitly writing `#t` and `#f`, you
can probably write a better version!"
  

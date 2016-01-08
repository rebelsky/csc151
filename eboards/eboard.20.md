CSC151.01 2015F, Class 20: Naming Local Values
==============================================

* New partners!

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Lab.

Preliminaries
-------------

### Admin

* Review sessions
    * Wednesday at 8pm (Kumar)
    * Thursday at 10am (SamR)
    * Thursday at 8pm (Erin)
* Graders finally starting to send you things.  
    * Lots of gaps in the early labs.  I'll look at these issues over
      the weekend and suggest a solution on Monday.
* I'll send out a summary of grades on Sunday night.

### Upcoming Work

* Optional Re-Reading for Friday:
  [Anonymous Procedures](../readings/anonymous-procedures-reading.html) 
* [HW 5](../assignments/assignment.05.html) due Tuesday
    * To be released tonight
* Today's Lab writeup (due before class Monday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 20 (Your Names)_
    * Exercise: 5d and 6b
    * Warning! Sam just rewrote the lab.
* Quiz Friday
    * Homogeneous lists and `map` (know `section` and `o` for `map`)
    * Drawings as values
    * GIMP Tools
    * `if`, `when`, and `cond`

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery
* EE's show in Smith (closing tonight at 8pm)
* Convocation tomorrow at 11am
* Peter Coyote talk 7pm Thursday
* Liz Queathem talk 4pm Friday
* MET Livecast Saturday at noon at Harris Auditorium
* Peter Coyote workshop on Saturday 10-12 and 1-4

#### Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included), Sunday at 4:45, and Mondays at 4:45.  Requires sign up in 
  advance.  
* PALS dinner Thursday night.  (Sam will treat if you find it a financial 
  burden.)
* Pun Club, Saturdays, 4pm, Way over Younker.
* Mid-Autumn Festival, Saturday, Oct. 3, 6-8 p.m. in Harris Concert Hall.

### Other Good Things (No EC)

* VBall Saturday at 1pm in Darby
* American Football Saturday at 1pm at the football field
* Women's Unamerican Football Saturday at 11am
* Men's Unamerican Football Saturday at 1pm
* Women's Soccer Sunday at 11am
* Men's Soccer Sunday at 1pm
* Grinnell-Link Networking Reception Friday at 4:45pm JRC 2nd Floor Lobby

### Questions

Lab
---

_Other than these stupid problems, why would we use `let` outside a 
 procedure? (EG)_

> It's rare that we do so, but it's something useful to know.  See
  extra 1 for an example.

_For those of who are puzzled by bindings, can you give us some more questions?_

> What do you get for the following?

        (define alpha 3)

        (let ([alpha 5]
              [beta (+ alpha 1)])
           (list alpha beta))
        ; '(5 6)
        ; '(3 6)
        ; Error!
        ; '(3 4)

        (let* ([alpha 5]
               [beta (+ alpha 1)])
           (list alpha beta))

        (let ([delta 5]
              [epsilon (+ delta 1)])
          (list delta epsilon))

_Why would someone change an existing procedure?_

> Sometimes your users are evil.

_What is the lab writeup?_

> 5d and 6b

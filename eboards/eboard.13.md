CSC151.01 2015F, Class 13: Testing Your Procedures, Revisited
=============================================================

* Continue partners.

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
    * Quiz.
* Lab.

Preliminaries
-------------

### Admin

* Beware!  It's Friday the 13th (day of class)
* Friday PSA.

### Upcoming Work

* Reading for Monday
  [Boolean Values and Predicate Procedures](../readings/boolean-reading.html)
* [Exam 1](../assignments/exam.01.html) 
    * Prologue TONIGHT <http://bit.ly/151-2015F-exam1pro>
    * Electronic version next Tuesday: <http://bit.ly/151-2015F-exam1>
    * Epilogue next Tuesday <http://bit.ly/151-2015F-exam1epi>
    * Printed version next Wednesday
* Wednesday's Lab writeup (due before class Monday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 12 (Your Names)_
    * Exercise: Document `irgb-add` using six P's (alone or with partner
      or with some other people in class; limit to groups of 3)
* Lab writeup (due before class Tuesday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 13 (Your Names)_
    * Exercise: 3
* Do these lab writeups sooner rather than later, since they will help
  you on the exam.  
    * If you get me writeups by Sunday, I'll get you responses by Sunday 
      night.
    * You should do all of the testing lab before doing the testing
      problem on the exam.

### Extra Credit Opportunities

* I remain a little behind in responding to these.  Sorry!

#### Academic

* Art opening (or any visit to the art show): Friday and beyond
    * Talk, 4pm, Sept. 18
    * Opening Reception, 5:00-6:30 p.m., Sept. 18
* John Gerrard talk, "Corn Bomb", Monday at 8pm
* No CS Table next week - It's advising week!
* Wednesday CS Extra Next week, 4:15 in 3821: Ursula Wolz on Building
  Coding Communities
* Thursday CS Extra Next Week, 4:15 in 3821: SamR on The Architecture of
  Mediascript

#### Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included), Sunday at 4:45, and Mondays at 4:45.  Requires sign up in 
  advance.
* PALS Fundraiser prep: 824 High Street; Saturday 10:30 a.m.; Food!; 
  Don't come if you are allergic to animals
* Pun Club, Saturdays, 4pm, Way over Younker.
* Singers concert on Family weekend!  Sept. 26, 2pm., Sebring-Lewis
* Orchestra concert on Family weekend!  Sept. 26, 2pm., Sebring-Lewis
* Softball Alumna Game, 9am on Sunday
* Comedy show forthcoming in Bobs Underground on October 3rd.

### Questions

_Can I use two `<>`'s in section?_

> Yes, but you probably don't want to do that on problem 1.  `o` will
  be a much better strategy.

_Where can I go to think about problem 2?_

> Recent homework (3).

_What should our tests look like?_

> You should come up with a wide variety of examples so that if it passes
  those examples, you'll be relatively confident that it will work on 
  everything, unless the writer is incredibly malicious.

> For example

        (check-equal? (minutes (add-times (time 1 40) (time 2 40))) 4)

_I think your instructions on rackunit are incorrect._

> Probably.  We'll look at it.

_Can we assume that the parameters are all positive for problem 2?_

> Yes.

> But if you can get it to work with negative numbers, too, that would be
  really awesome.  (Not necessary, but like wicked neat.)

_Where do our examples go?_

> Right after your code, commented out by semicolons.  Then copy and paste.

_Should we cite our partner on assignment 3?_

> "Idea taken from problem 110213 on assignment 3, written by my partner
  and me"

### Quiz

Lab
---

"*Sketch* the preconditions/postconditions"

> Can be more informal than normal preconditions/postconditions.

"*Think about* other things to test"

> Write them out, in informal notation.  "I should test what happens
  when one color is black."

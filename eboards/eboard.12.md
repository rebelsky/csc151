CSC151.01 2015F, Class 12: Testing Your Procedures
==================================================

* New partners!
    * Grab a card from the stack.
    * Identify the location of the new computer.
    * Drop the card in the jar.
    * When both of you are at the computer, introduce yourselves.
* Grab a pink card, too!

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
    * About Exam 1.
* Documentation, Continued.
* Lab begins.

Preliminaries
-------------

### Admin

* Review sessions:
    * Wednesday, 8pm (Zachary)
    * Thursday, 10am (Sam)
    * Thursday, 8pm (Erin)
* Mentors and tutors cannot directly answer exam questions.  However, they 
  can go through any example from the readings and any problem from the
  homework.
* If you have questions you'd like me to answer, you can write them on
  blank index cards and hand them to the mentors.  I'll send out answers
  tomorrow.
* Today's lab is a multi-day lab.

### Upcoming Work

* Quiz Friday!
    * Procedures with lambdas
    * Maybe documentation
* No new reading for Friday!
  [Testing Procedures with Rackunit](../readings/rackunit-rgb-reading.html)
* [Exam 1](../assignments/exam.01.html) 
    * Prologue this Friday
    * Electronic version next Tuesday
    * Epilogue next Tuesday
    * Printed version next Wednesday
* Lab writeup (due before class Monday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 12 (Your Names)_
    * Exercise: Document `irgb-add`

### Extra Credit Opportunities

* I remain a little behind in responding to these.  Sorry!

#### Academic

* No CS Table next week - It's advising week!
* CS Extras today in 3821 at 4:15, Jonathan Wellons '04 from Google
* Convo tomorrow at 11 am in JRC 101: Mike Latham
* Art opening (or any visit to the art show): Friday and beyond
    * Talk, 4pm, Sept. 18
    * Opening Reception, 5:00-6:30 p.m., Sept. 18
* John Gerrard talk, "Corn Bomb", Monday at 8pm

#### Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am,
  Sunday at 4:45, and Mondays at 4:45.  Requires sign up in advance.
* Pun Club, Saturdays, 4pm, Way over Younker.
* Singers concert on Family weekend!  Sept. 26, 2pm., Sebring-Lewis
* Orchestra concert on Family weekend!  Sept. 26, 2pm., Sebring-Lewis
* Softball Alumna Game, 9am on Sunday

### Questions

### Exam 1 Distributed (electronically)

* It has a prologue and an epilogue.
* It has seven questions.
* It has a sanity clause.  "There's more to life than CS."
* It has way too many instructions.

Documentation Practice
----------------------

* Six P's
    * Procedure: The name
    * Parameters: The names of the inputs and their types
    * Purpose: Tells you what the procedure does
    * Produces: The name and type of the output, maybe a little more info about
      what kind of value we return
    * Preconditions: Give limitations, typically retrictions on the
      parameters that are required in order for the procedure to work.
      Those are sometimes covered when we add the data types under
      parameters.
    * Postconditions: Expectations/conditions of your output.  Once
      again, some get covered in the produces section.  Formalizes
      the results

`(max v1 v2)`

        ;;; Procedure:
        ;;;   max
        ;;; Parameters:
        ;;;   v1, a real number
        ;;;   v2, a real number
        ;;; Purpose:
        ;;;   Takes the maximum value of v1 and v2, whichever is larger
        ;;; Produces:
        ;;;   result, a real number, the larger of v1 and v2
        ;;; Preconditions:
        ;;;   [No additional]
        ;;; Postconditions:
        ;;;   result = v1 or result = v2
        ;;;   result >= v1
        ;;;   result >= v2
        ;;; Problems:
        ;;;   What happens if the two numbers are equal?  We can use
        ;;;     either of them, since that value will meet the postconditions
        ;;; Process:

* We can express these postconditions conditionally.
* We name the produced value so that we can use it in the postconditions.

`(irgb-average color1 color2)`

        ;;; Procedure:
        ;;;   irgb-average
        ;;; Parameters:
        ;;;   color1, a color
        ;;;   color2, a color
        ;;; Purpose:
        ;;;   Average the components of color1 and those of color2.
        ;;; Produces:
        ;;;   avecolor, an integer-encoded RGB color
        ;;; Preconditions:
        ;;;   color1 and color2 must be integer-encoded RGB colors
        ;;; Postconditions:
        ;;;   (irgb-red avecolor) = (floor (/ (+ (irgb-red color1) (irgb-red color2)) 2))
        ;;;   (irgb-green avecolor) = (floor (/ (+ (irgb-green color1) (irgb-green color2)) 2))
        ;;;   (irgb-blue avecolor) = (floor (/ (+ (irgb-blue color1) (irgb-blue color2)) 2))
        ;;; Problem: What if the two components sum to a value greater than 255?  
_When we say "integer-encoded RGB color", what do we mean?_

> One of those strange numbers given back by (irgb _ _ _)

_Why do we do this much work?  It seems like more work to write the
 documentation than it does to write the code?_

> Forces us to think more carefully about our procedures.

> What are the legal inputs?  (What form can they take?)

> What form does the output take?  Useful for two weeks from now when we
  don't remember.

> What might go wrong?

> Etc.

Lab
---

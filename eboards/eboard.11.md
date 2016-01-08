CSC151.01 2015F, Class 11: Documenting Programs and Procedures
==============================================================

* Continue partners!
    * We have some illnesses, so we may need to do a bit of swapping.
* Printed copies of tomorrow's reading are available near the crayons

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Pair programming.
* Documentation - A strategy.
* Practice.

Preliminaries
-------------

### Admin

* EG says "Computer science can be dangerous!"
* Review sessions:
    * Wednesday, 8pm (Zach)
    * Thursday, 10am (Sam)
    * Thursday, 8pm (Erin)
* Mentors and tutors cannot provide direct assistance on exam questions.  
  However, they can go through any example from the readings and any problem 
  from the homework.
* If you have questions you'd like me to answer, you can write them on
  blank index cards and hand them to the mentors.  I'll send out answers
  tomorrow.
    * I cleverly left yesterday's question at home.  I'll try to answer
      it tonight.
* Our graders are even slower than I am.  Sorry!
* Control-I is useful in the definitions pane - it reindents code based
  on the parenthesization.  
    * It makes your code easier to read
    * It tells you about possible parenthesization error

### Upcoming Work

* Read for Tuesday:
  [Testing Procedures with Rackunit](../readings/rackunit-rgb-reading.html)
* [Assignment 3](../assignments/assignment.03.html) due *Tonight* @ 10:30 p.m.
    * Your partner is the person who you worked with last Wednesday and Friday.
* Exam 1 to be distributed *Tomorrow*.
* Lab writeup (due before class Friday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 11 (Your Names)_
    * Exercise: NONE!

### Extra Credit Opportunities

* I'm a little behind in responding to these.  Sorry!

#### Academic

* Tuesday, noon, CS Table, JRC 224C.  Hacking Cars
* CS Extras, Wednesday, Jonathan Wellons '04 from Google, 4:15 3821
* Convo Thursday at 11 am in JRC 101: Mike Latham
* Art opening (or any visit to the art show): Friday and beyond

#### Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 1:30
  and Mondays at 4:45.  Requires sign up in advance.
* Pun Club, Saturdays, 4pm, Way over Younker.
* Singers concert on Family weekend!  Sept. 26, 2pm., probably JRC 101
* Orchestra concert on Family weekend!  Sept. 26, 2pm., probably Sebring-Lewis
* Softball Alumna Game, 9am on Sunday

### Questions

_Even though I've completely blown the *two days* policy for extra credit,
will you have sympathy on me because my sister burned her finger?_

> Yes

_What do you want me to write in the extra credit thing?_

> A reflection on the event.  A few sentences.

_Who do we send the extra credit responses to?_

> rebelsky@grinnell.edu

_Doesn't putting your email address on a Web page lead to spam?_

> Yes.

_Can we use your `irgb-average` on problem 4 from yesterday's lab?_

> Certainly!  The goal was to annotate, not to have to write from scratch.

_I think my procedures are right for HW3, but I'm having trouble
 converting to lambda._

> Sam's hypothesized example

        (define color1 (irgb 200 100 40))
        (define color2 (irgb 100 200 50))
        (define average (irgb (* 1/2 (+ (irgb-red color1) (irgb-red color2)))
                              (* 1/2 (+ (irgb-green color1) (irgb-green color2)))
                              (* 1/2 (+ (irgb-blue color1) (irgb-blue color2))))

> General model

        (define input1 ...)
        (define input2 ...)
        (define computedvalue EXPRESSION) 

        (define compute-value
          (lambda (input1 input2)
            EXPRESSION))

> Back to example
        (define my-irgb-average 
          (lambda (color1 color2)
            (irgb (* 1/2 (+ (irgb-red color1) (irgb-red color2)))
                  (* 1/2 (+ (irgb-green color1) (irgb-green color2)))
                  (* 1/2 (+ (irgb-blue color1) (irgb-blue color2))))))

_What's the relationship between this `color1` and `color2` and the 
 ones we defined earlier?_

> There is none.  Scheme will just use those names for *whatever*
  you provide as input to your procedure.

_Should we have parameters that have the same names as variables (or vv)?_

> It works, but it's probably not a good idea because it will confuse
  someone (maybe you, maybe me, maybe the grader)

> You should choose *good* names for your parameters and variables, even
  though it is possible to pick *really bad* ones.  Think of how hard
  it is to read

<pre>
(define irgb-munge
  (lambda (- whatever)
    (irgb (+ whatever (irgb-red -))
          (+ whatever (irgb-green -))
          (irgb-blue -))))
</pre>

_Can I use a procedure as an input to another procedure with lambda?_

> Yes!  As long as you use the parameter in the place we expect a
  procedure to be.

        (define apply-to-blue
          (lambda (transformation)
            (transformation (irgb 0 0 255))))

_Can we define using `lambda`?_

> Not right now.

Pair programming
----------------

_You have a classmate (or mentor) (or teacher) who has not read the 
article.  Your goal is to summarize the central points._

* Two people sit at the same computer and work together.
* They have two roles
    * Driver: One is writing the code
    * Navigator: One is looking over his/her/zir shoulder and making comments
      (checking correctness, suggesting other approaches, contribute
      ideas, etc.)  Also looks up information!
* Why do this?
    * Different knowledge combines well!  Think differently, compare
      perspectives.  Two heads are smarter than one.
    * More eyes catch more errors!
    * Pair pressure - it's better than peer pressure - you don't want
      to let your partner down; hold each other to higher standards
    * Get stuck less!
    * Explain to *anything* helps you understand a problem better; 
      explaining to a human being who can respond helps more!

Documentation
-------------

_You have a classmate who has not read the reading.  Your goal is to
summarize the central points._

* We document to clarify code for people who don't want to read code
* We document to force ourselves to think more carefully about the 
  code; what inputs are reasonable, what outputs are expected, what
  do we know about those output?
* Six P's
    * Procedure: The name
    * Parameters: The names of the inputs and their types
    * Purpose: Tells you what the procedure does
    * Produces: The name and type of the output, maybe a little more info about
      what kind of value we return

Documentation Practice
----------------------

`(max v1 v2)`

        ;;; Procedure:
        ;;;   max
        ;;; Parameters:
        ;;;   v1, a real number
        ;;;   v2, a real number
        ;;; Purpose:
        ;;;   Takes the maximum value of v1 and v2, whichever is larger
        ;;; Produces:
        ;;;    result, a number, the larger of v1 and v2
        ;;; Preconditions:
        ;;; Postconditions:

        ;;; Process:

_To be continued ..._

`(max v1 ... vn)`

`(irgb-average c1 c2)`


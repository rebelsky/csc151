CSC151.01 2015F, Class 06: Transforming Colors
==============================================

* New partners!  Please grab a card to identify your computer.

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * About Quiz 1.
    * Questions.
* Lab.
* Debrief (if time).

Preliminaries
-------------

### Admin

* Happy Labor Day!
* The grader email has been fixed.
* Quiz 1 returned.  If you had trouble on part 1, please try to speak
  with me.  We'll talk more about it in a few minutes.
* I've added additional office hours at 8:30-9:00 MWF to give you more
  opportunities to speak with me.  Still bookable at
  <https://rebelsky.youcanbook.me>.
* Before today's lab (and perhaps before every lab you do for the next
  week or so), please type the following command in the terminal window.

        /home/rebelsky/bin/csc151-update

### Upcoming Work

* One reading for Tuesday:
  [Transforming Images](../readings/transforming-images-early-reading.html)
* [Assignment 2](../assignments/assignment.02.html) due Tuesday at 10:30 p.m.  
    * I will take questions on the assignment at the start of class 
      today and Tuesday.
* Lab writeup (due before class Wednesday)
    * Email to <grader-151-01@cs.grinnell.edu> (not to me; don't forget the
      cs).
    * Subject: _CSC 151 Lab Writeup Class 6 (Your Names)_
    * Problems: ____

### Extra Credit Opportunities

#### Academic

* Tuesday, noon, CS Table, JRC 224C.  Mobile networks in developing countries.
* Convocation, Thursday at 11am, JRC 101.  
    * Sam's convocation spiel.

#### Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 1:30
  and Mondays at 4:45.  Requires sign up in advance.
* Pun Club, Saturdays, 4pm, Way over Younker

### Notes on Quiz 1

* Quizzes are ...
    * An opportunity for me to discover what you do and don't understand.
    * An opportunity for you to discover what you do and don't understand.
    * An incentive for you to review materials.
    * Intended to be relatively "low stakes".
* Note 1: Every real number in DrRacket is also rational.
* Note 2: `ceiling` gives an inexact output when given an inexact input.
* Note 3: Although I think of the card as the input to the algorithm in
  problem 2, I accepted anything that was argued well.

### Questions on HW2

_Is it okay that we don't have 0's after the decimal point for 2.5 or
something similar?_

> That's fine.  You can't force DrRacket to give you 0's at the end of
  an inexact number.

_Should we do one or two computations for computing total minutes and
total seconds?_

> Two separate computations.

_How should we submit?_

> Ideally, you will copy and paste from wherever into the body of an 
email message.

_What about the "how to add" part if we have pictures?_

> If you don't have pictures, copy and paste is better.

> If you do have pictures, an attachment is okay.

_Should we include the interactions when we try different contestants?_

> Yes.

### Additional Questions

Lab
---

* Brighter numbers have higher component values.  This seems counterintuitive
  until you realize that it's *more light* rather than *more paint*.
* Components are capped at 255.  If you use a component larger than 255, 
  you end up with 255.
* No lab writeup

Debrief - Some Points from Your Mentors
---------------------------------------

* Scheme model: Open paren, procedure, arguments, close paren
    * (+ 2 3)
    * (+ (2) (3))
* Procedures almost always appear immediately after an open paren
    * Exception: When used with `o`
* Sequencing: Scheme evaluates expressions inside out, which can seem
  backwards.
* There are different kinds of values:
    * Strings - surrounded by quotation marks
    * Numbers of all sorts
    * Images - represented by integers   
    * Color - represented by integers
    * The value `1`, could be one, or an image, or a color, ...
    * The value `123215413112` could be a large integer, or a color, or
      an image
* You can name things with define
    * `(define gold (color->irgb "gold"))`
    * `(define golds (color-swatch gold (irgb-darker gold) (irgb-lighter gold)))`
    * `(image-show golds)`


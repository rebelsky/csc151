CSC151.01 2015F, Class 06: Transforming Colors
==============================================

* New partners!  Please grab a card to identify your computer.
* Then drop your card in the bin.
* Then introduce yourself to your partner when he/she/zi appears.

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * About Quiz 1.
    * Questions.
    * A few notes from the morning session.
* Lab.
* Debrief (if time).

Preliminaries
-------------

### Admin

* Happy Labor Day!
* Quiz 1 returned.  If you had trouble on part 1, please try to speak
  with Prof. Curtsinger.  We'll also talk more about it in a few minutes.
* Before today's lab (and perhaps before every lab you do for the next
  week or so), please type the following command in the terminal window.

        /home/rebelsky/bin/csc151-update

* Prof. Curtsinger seems to have the old versions of today's lab and
  tomorrow's reading.  Grab the current ones at

  <http://www.cs.grinnell.edu/~rebelsky/Courses/CSC151/2015F/labs/transforming-rgb-early-lab.html>

  and

  <http://www.cs.grinnell.edu/~rebelsky/Courses/CSC151/2015F/readings/transforming-images-early-reading.html>

### Upcoming Work

* One reading for Tuesday:
  [Transforming Images](../readings/transforming-images-early-reading.html)
* [Assignment 2](../assignments/assignment.02.html) due Tuesday.  
    * I will take questions on the assignment at the start of class 
      today and Tuesday.
* Lab writeup (due before class Wednesday)
    * Problems: ____

### Extra Credit Opportunities

#### Academic

* Tuesday, noon, CS Table, JRC 224C.  Mobile networks in developing countries.
* Convocation, Thursday at 11am.
    * Sam's convocation spiel.

#### Peer Support

* Orchestra, Saturday, September 26th @ 2pm in Bucksbaum, Sebring-Lewis Hall
* Orchestra, Saturday, November 14th @ 7:30pm in Bucksbaum, Sebring-Lewis Hall
* Ultimate Tournament, September 19th and 20th

### Notes on Quiz 1

* Quizzes are ...
    * An opportunity for us to discover what you do and don't understand.
    * An opportunity for you to discover what you do and don't understand.
    * An incentive for you to review materials.
    * Intended to be relatively "low stakes".
* Note 1: Every real number in DrRacket is also rational.
* Note 2: `ceiling` gives an inexact output when given an inexact input.
* Note 3: Although I think of the card as the input to the algorithm in
  problem 2, I accepted anything that was argued well.

### Questions on HW2
 _What's the relationship between modulo and remainder?_ 
 
> Try positive and negative parameters 

> Try exact and inexact 

> Try integer and non-integer 

> We see some interesting things with modulo.  When the second number
  is positive, it breaks things into groups of 0 to (number-1)

> What about when the modulus is negative?  It seems that we always
  get a non-positive number back.  

> Sam's rule: When b is negative

        (modulo a b) = (- (modulo (- a) (- b)))

_Why use modulo rather than remainder (or vice versa)?_

> Modulo: Cyclic behavior

> Remainder: Doing "math as we expect it"

### A Few Notes from the Morning Class

* Scheme expressions have the form open paren, procedure, arguments,
  close paren.
    * Scheme assumes that anything that appears immediately after an
      open paren will be a procedure.  Don't use extra parens!
        * `(square (3))`
    * Procedures will generally be preceded by an open paren (an exception
      is when you're using the composition operation, `o`)
* Scheme works inside out, so operations will sometimes feel backwards.
* Scheme uses types, although not always as nicely as we'd like.
    * Strings have quotation marks.
    * Numbers look like numbers.
    * Images are also numbers.
    * Colors are also numbers.
    * 542 could be "five hundred and forty two" or a color or an image.

### Additional Questions

Lab
---

Debrief
-------

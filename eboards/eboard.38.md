CSC151.02 2014S, Class 38: On Two-Dimensional Design
====================================================

_Overview_

* Preliminaries.
    * Admin.
    * Questions.
* Background: About the project.
* General elements of design.
* Relationships between elements.
* Broader design principles.
* Some examples.

Preliminaries
-------------

### Upcoming Work

* Reading for Wednesday: Project Ideas
* Homework for tonight: HW 8: Producing Playful Polygons

### Admin

* No lab writeup.  (No lab whatsoever.)
* It's almost preregistration (new and improved).  I hope to see many of you
  go on to CSC 161.
* The best part of today: Watch Sam try to play DeckWars.

### Extra Credit

* <http://www.strikingly.com/pioneerweekend>
* Any one Spring into Humanities (or is it vice versa) talk.
* CS extra Thursday: Software to enhance wellness: The DavisJan team.
* CS table Friday: Java 8 and Lambda
* Tennis Saturday 10 am.
* CS extra next Monday: Walker and Liberto on bluetooth.
* Get and wear one of the "1 in 4" shirts next week.  Pick up shirt Tuesday
  through Thursday, wear on Friday.

### Questions

_Should we document our procedures?_

> Certainly.

_Can I resubmit?_

> Yes.

_Would it be nice if we suggested reasonable calls?_

    ; A square
    ; (define salamasond (image-show (image-new 200 200)))
    ; (define yertle (turtle-new salamasond))
    ; (turtle-polygon! yertle 4 100)

_Can I write a list of instructions for problem 7, or do you want a procedure, or
both or neither or?_

> I perfer a procedure, but do what you think is best.  And document.

_Questions about particular details_

> Email me.  Expect snarky response.

_Can we change turtle brushes and colors within prcoedures?_

> Yes.

Background: About the project
-----------------------------

Goal: "A procedure is worth a thousand pictures"

* Procedure: `(image-series! n width height)
    * Generate an "interesting" image
    * Same n, same image
    * Different n, different image (for n in 0..999)
    * Changing width and height should scale (as much as possible)
        * Without using the gimp-scale procedures
    * Using multiple techniques
* Preferably in groups
* Next Tuesday: Design statement and sample images (on GitHub)
* Following Tuesday: Code! (on GitHub)
* In class
    * Some cruel art faculty member or student critiques images
    * Sam critiques code
* Show at least three
    * Could be interesting alone
    * Could be interesting in combination

General elements of design
--------------------------

Relationships between elements
------------------------------

Broader design principles
-------------------------

Some examples
-------------

* Web site: <http://mediascripting.wordpress.com/>

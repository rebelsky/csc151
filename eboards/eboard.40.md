CSC151.01 2015F, Class 40: On Two-Dimensional Design
====================================================

* New partners!
* Pens!

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Background: About the project.
* General elements of design.
* Relationships between elements.
* Broader design principles.
* Some examples.

Preliminaries
-------------

### Admin

* Trees come back again and again and again in CS.
* We will do the trees lab next week (probably on Monday).
* Review sessions this week:
    * Wednesday, 8pm (Caleb)
    * Thursday, 10am (SamR)
    * Thursday, 8pm (Erin)
* Office hours this week and next: MWF 8:30-9:00, 11:00-11:45, 1:00-2:00;
  Tu 1:00-2:00.
* I've gotten reinforcement that Problem 5 is really easy once you think
  it through (of course, the statement was preceded by "Sam, you are evil").  
  So, to reiterate the Q&A section: 
    * `for-each` typically takes a procedure and a list as parameters.
    * Think about the form of the list that you will give as an argument to
      `for-each` in this problem.
    * Think about what type of value the procedure you give as an argument 
      to `for-each` will take as its input.
    * For example, what do you know about `x` in 
      `(for-each (lambda (x) ...) (iota 10))`?

### Upcoming Work

* Exam 3 (electronic): Thursday at 10:30 p.m.
* Exam 3 (printed): Friday at 10:00 a.m.
* Exam 3 epilogue: Friday at 10:30 p.m.
* Project Proposal: Monday at 10:30 p.m.
* Project Pictures: Tuesday at 10:00 a.m.
* Quiz Friday:
    * `random`
    * pairs and pair structures
    * vectors
    * trees (a bit)
* Readings for Friday:  
  [About the Project](../assignments/project.html) and
  [Project Ideas](../readings/project-ideas-reading.html)
* No lab writeup today!

### Extra Credit Opportunities

* If possible, send me these in advance.
* I apologize for any that I've left out.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* Learning Deconstructed Workshop Series, Tuesdays at 11 in JRC 209.
* Wilson talk Wednesday: Startup (in)Sanity.  7:30 p.m., ARH 102.
* CS Extras Thursday: Developing and Deploying Mobile Sensing Applications.
* Richard Russo talk Thursday night.
* Any of the long-string instrument events.
* CS Table Tuesday: Something Cheerful

#### Peer Support

* Orchestra Concert, November 14, Sebring Lewis, 7:30 p.m.
* Women's Basketball Opening Game, 1 pm, Nov. 15, vs. Silver Lake.
* ISO Food Bazaar.  Nov. 15, 5-7 pm, Harris Gym/Concert Hall.

#### Regular Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included; felines only), and Mondays at 4:45.  Requires sign up in 
  advance.    MORE HELP NEEDED!
* Socrates Cafe', Saturdays, Younker, 2pm.
* Pun Club, Saturdays, 4pm, Way over Younker.

#### Upcoming Peer Support

* Tranaslations (a play).  Nov 19-23 or so.
* One-act Festival Dec. 5 & 6.

### Questions

Background: About the project
-----------------------------

We have been thinking about problem solving.  Lots of our problems are
in the domain of image making.

You get to assign your own problem in the domain of image making.  I want
to explore "this concept" in "this computational way".

Creative: You get to make interesting images and you get to specify what
the creativity factor is.

Computational: 

* Get a number as input.  Make a different image for each number between
  0 and 999.  Easy way to vary: Choose three things that have ten
  choices, extract the three digits.
* Take width and height as input.  Needs to scale appropriately.
    * Turtle shapes do not need to change proportions, but do have
      to scale.
    * Brushes do not need to change proportions, but do have to scale.
* Use *at least three* different image-making techniques.
    * Drawings as values.
    * image-compute (iterating over positions)
    * Copy-paste (to vary images)
    * Gimp tools (image-select-ellipse!, image-draw-line!, image-fill!)
    * Turtles
    * image-variant / image-transform!

Design

* Use the three harmoniously
* To achieve the stated goal
* To give things that are "interesting"

Graded with a rubric

General elements of design
--------------------------

* Your goal: "Interesting" pictures - something that (someone) will want
  to look at for an extended period of time.
* Colors - Huge theory that we're not going to cover
* Line - straight, curved, explicit, implicit
* Shapes - regular, irregular, filled, empty
* Texture (usually from image-compute or lots of repetition) - solid, 
  patterned, etc.

Relationships between elements
------------------------------

* Repetition
* Variation
    * Position
    * Scale
    * Vary shape or color or ...

Questions
---------

_Should we use images taken from the Interweb or draw our own?_

> Most students have the program draw their own.  If you take images, 
  try to make sure that permissions are appropriate (and cite).

_How much is improv and how much is trying to make a picture you've already conceived?_

> You should start by conceiving of something and trying to make that thing.

_How do I come up with a concept?_

> You are at a liberal arts college.  Ideas should be your stock in trade.

> Look at past assignments for inspiration.

> Google random topics and see if you find inspiration.

> Go to the art gallery.

_Can we make some reasonable assumptions about the image size?_

> You can specify reasonable preconditions.  (Aspect ratio no more than
  6:1 or 1:6) (width at least 100, height at least 100)

_Not all of my images look good.  Is that okay?_

> Yes.  You can choose the ones that best represent your vision.

_Do we have to make all 1000 along the way?_

> No.

_Do you have a surprising talent for reading code and figuring out what
 inputs are likely to create identical images?_

> Yes.

_Should we check a variety of inputs (small, large, etc.)?_

> Yes.

_Collaboration_

> Groups of up to size 3 (no smaller than 1)

> You can talk to anyone about any aspect of the project.  Cite!

_Does the second proposal have to bear any relationship to the first?_

> No.

_Where can we get images we can use?_

> Google "Creative Commons"

_What images does Sam enjoy most?_

> Those in which he finds deep meaning.

Broader design principles
-------------------------

Some examples
-------------


Modeling the Drawing Process: Turtle Graphics
---------------------------------------------

* We've now seen three (more?) models of making images:
    * We can use drawings-as-values-style graphics to build composite
      images.
    * We can use GIMP-style graphics to select and then do something with
      the selection.
    * We can manipulate individual pixels
    * We can transform images
* These models permit us to create a variety of interesting drawings.
* However, they do not model how we normally draw, which involves
  taking pen (or brush) to paper (or canvas).
* The *turtle graphics* approach to describing
  images provides a simple model for how we might describe drawings.
* At any point, the person following the instructions has a pen in
  hand.  You need to give the person information on the direction in
  which to move the pen and the amount to move it.  (That's right,
  no curves here; just lots and lots of straight lines.)
* We separate the two basic operations: You can tell the person drawing
  to move forward or to turn in a particular direction.
* "It's so simple, even a turtle can do it."
* What if you don't want continuous lines?  You can tell the turtle to
  lift or drop the pen.
* Turtle graphics has been used to control robots that draw.
* Note that turtle graphics, much like GIMP graphics, is an
  "imperative" model: You give a series of commands
  to the thing doing the drawing.

Some Historical Notes
---------------------

*Disclaimer: Although I knew much of this information, I did crib
some ideas from Wikipedia and the Web for these notes.*

* Turtle graphics were invented by Seymour Papert (at MIT) in part of his
  development of the LOGO programming language. (1960's and beyond)
* LOGO was designed as a computer language intended to help children
  think better (or at least more algorithmically).
* The original implementation of LOGO did, in fact, have a kind of robot
  (commonly referred to as a <quote>turtle robot</quote>)
  hooked up to a computer.  Hence, it made sense for the language to have
  some basic operations for the robot.
* As computers became more commonplace, it made sense to simulate the
  turtle on the screen (since not everyone who had a computer would have
  a turtle robot).
* And it makes sense to show the turtle's path.
* After awhile, drawing on the screen became as interesting as (or more
  interesting than?) controlling the physical robot.
* The turtle graphics model has persisted, in various forms, over the
  years.
* Turtle graphics and LOGO are often used in constructionist approaches
  to teaching.  The goal is that students explore freely, starting with
  a few basic tools and strategies, they come up with their own problems
  and develop solutions to those problems.

Turtle Graphics in MediaScheme
------------------------------

* Create a new turtle that draws on a particular image
  with <code>(turtle-new image)</code>.
* Move it forward with <code>(turtle-forward! turtle amt)</code>
* Turn it with <code>(turtle-turn! turtle angle)</code>
* Lift the pen with <code>(turtle-up! turtle)</code>
* Put the pen on paper with <code>(turtle-down! turtle)</code>
* Additional operations for people who can't keep track of position
  and orientation
    * <code>(turtle-teleport! turtle col row)</code>
    * <code>(turtle-face! turtle angle)</code>
    * <code>(turtle-show! turtle)</code>
* You can also set the turtle's brush and color.

Lab
---

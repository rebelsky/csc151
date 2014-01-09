Outline 12: Raster Graphics and RGB Colors
==========================================

Held: Wednesday, 18 September 2013

Back to [Outline 11 - A Design Perspective](outline.11.html).
On to [Outline 13 - Pause for Breath](outline.13.html).

**Summary**

We consider the basics of <em>raster graphics</em>, a common technique for
describing and representing images.  We also consider <em>RGB colors</em>,
one of the most common mechanisms for representing colors digitally.

**Related Pages**

* Assignment: [Exam 1: Scheme Basics](../exams/exam.01.html)
* Reading: [Raster Graphics: Images from Pixels and Colors](../readings/raster-reading.html)
* Reading: [RGB Colors](../readings/rgb-reading.html)
* Lab: [Raster Graphics and RGB Colors](../labs/raster-lab.html)
* [EBoard](../eboards/12.html) 
  ([Source](../eboards/12.md))
  ([PDF](../eboards/12.pdf))

**Overview**

* Representing images, revisited.
* Pixels and colors: The basics.
* RGB colors.
* Those weird numbers.

**Administrivia**

* We seem to have a misunderstanding about workload.  If you're spending more
  than five hours on a homework assignment, something has gone wrong and we
  should talk.  
    * Preferably, you would realize that you were going to spend that much
      time before, say, 8pm on Tuesday night.
    * If you hit more than five hours, it's making sense, and you really 
      want to do the last bit, that's fine.
    * But if you're stuck, you should come to see me.
* Lab writeup: Extra 1 from today's lab, due Friday before class.
* Reading for Friday: [Transforming RGB Colors](../readings/transforming-rgb-reading.html)
* It sounds like there may be room for one more person in Dr. Davis's
  11:00 a.m. section of 151.  So, if you'd like to switch sections,
  let her know asap.  
* I plan to email you your current grade info by Friday.
* SACNAS Ice Cream Social Thursday, September 19th at 8:00PM in the 
  Biology Commons
* EC Opportunities:
    * CS Extras Thursday @ 4:30: Kim Spasaro on Linguistics Programming
    * CS Table Friday (Pair programming)
    * Other?
* I also encourage you to attend any of the other Title IX talks/events.
* We're going to try an experiment today.  Instead of giving my start-of-class
  lecture and clicker questions, I'm going to let you ask about five 
  questions on the readings.
* [Exam 1](../exams/exam.01.html) distributed and quickly discussed.
    * There will be time at the start of class for questions on 
      Friday, Monday, and Tuesday.  
    * I'll also add some Q&A to the exam itself.  Please check it
      regularly.

Raster Graphics
---------------

* Yet another model of images.
* This one corresponds closely to how computers actually represent images.
* The image is a grid of colors.
* You already know about the numbering of the grid points:  
    * Rows and columns numbered starting at 0
    * Rows numbered from top to bottom
    * Columns number from left to right
* It's painful to have to set individual pixels, but it can be useful.
    * At some point "under the hood", most programs eventually deal
      with individual pixels.

Colors
------

* Many ways to represent colors, too.
* Goals: Unambiguous, fast to process, compact
* The color names we've been using are
    * Ambiguous
    * Slow to process
    * Long
* Whoops!

RGB Colors
----------

* The most common internal representation of colors on computers.
* We think of a color as the combination of three 
  *primaries*: red, green, and blue.
    * These are the primaries for the so-called *additive* colors
    * You are probably used to the primaries being red, yellow, and blue,
     but those are the *subtractive* colors
* On computers, we represent each component as a number between 0 and 255,
  inclusive.
* It turns out that you can shove four numbers, each between 0 and 255,
  into the internal representation of an integer.
    * So, the red, green, and blue components are three of those numbers.
    * What's the forth?  In multi-layer images, it's the alpha channel.
* We use <code>rgb-new</code> to create these colors.
* We use <code>rgb-red</code>, <code>rgb-green</code>, and
  <code>rgb-blue</code> to extract the corresponding components.

Those Weird Color Numbers
-------------------------

* We're representing colors as three integers, each in the range
  [0..255].
* Yet when we ask MediaScript for a color, we tend to get a single integer
  which is rarely in that range?
* What's going on?
* Well, most computers have different techniques for representing really
  small integers (particularly integers in the range 0 to 255, inclusive) and
  standard-length integers.  We're using the smaller representation,
  but shoving three of those into a standard-length integer.
    * We use that representation because it makes everything faster.
* Even those of us who designed and implemented that representation
  can't read the values presented in that representation.



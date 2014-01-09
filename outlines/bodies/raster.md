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


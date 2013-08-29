Outline 11: Raster Graphics and RGB Colors
==========================================

Held: Tuesday, 17 September 2013

Back to [Outline 10 - A Design Perspective](outline.10.html).
On to [Outline 12 - Transforming Colors](outline.12.html).

**Summary**

We consider the basics of <em>raster graphics</em>, a common technique
for describing and representing images.  We also consider
<em>RGB colors</em>, one of the most common mechanisms for
representing colors digitally.

**Related Pages**


**Overview**

* Representing images, revisited.
* Pixels and colors: The basics.
* RGB colors.
* Those weird numbers.

**Administrivia**


<section id="raster" title=Raster Grapics">
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

<section id="colors" title=Colors">
* Many ways to represent colors, too.
* Goals: Unambiguous, fast to process, compact
* The color names we've been using are
    * Ambiguous
    * Slow to process
    * Long
* Whoops!

<section id="rgb" title="RGB Colors">
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

<section id="weird-rgb-numbers" title="Those Weird Color Numbers">
* We're representing colors as three integers, each in the range
  [0..255].
* Yet when we ask MediaScript for a color, we tend to get a single integer
  which is rarely in that range?
* What's giong on?
* Well, most computers have different techniques for representing really
  small integers (particularly integers in the range [0..255]) and
  standard-length integers.  We're using the smaller representation,
  but shoving three of those into a standard-length integer.
    * We use that representation because it makes everything faster.
* Even those of us who designed that representation can't read it.



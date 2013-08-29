Outline 37: Randomized (Unpredictable) Drawing
==============================================

Held: Friday, 8 November 2013

Back to [Outline 36 - Vectors](outline.36.html).
On to [Outline 38 - Characters and Strings](outline.38.html).

**Summary**

We consider Scheme's <code>random</code> procedure, how one might use that
procedure in writing simple simulations, and how the procedure can be used
to generate <q>unpredictable</q> images.

**Related Pages**


**Overview**

* Random art.
* Why use randomness.
* The <code>random</code> procedure.
* Simulation.

**Administrivia**


Randomized Images - The Theory
==============================
* Non-mainstream art philosophy: The images that come from random processes
  (or from nature) can be as interesting as the images that come from
  artists who intentionally plan the canvas.
* One important movement: Dada.  (Early 20th century; also a reaction to
  facism and industrialization and ...)
    * An example: Tristan Tzara's "How to make a Dadaist Poem"
* Disclaimer: After creation by random processes, some filtering of good
  from bad often happens.
* Disclaimer: Many of the random processes still include some artistic
  intention.
    * Jackson Pollock's painting style provides an interesting combination
    of intent and randomness.
* Modernized/computational suggestion: 
    * Randomized processes can provide inspiration
    * The ability to constrain some aspects of the process can provide a
    new mechanism for creation.

The <code>random</code> Procedure
=================================
* Scheme helps us by providing a <code>(random n)</code> procedure.
* <code>n</code> must be a positive integer.
* <code>random</code> returns an integer between 0 and <code>n</code>-1,
  inclusive.

Randomized Images - Practice
============================
* Many of the procedures we've written or used have numeric parameters.
* Those parameters can be generated "randomly".
* Many of the procedures we've written take one of a restricted number
  of inputs (e.g., there are only so many brushes).
* Those inputs can also be selected "randomly".
* Demo: Randomizing the brush

Other Uses of Randomness
========================
* We often use randomness in simulating unpredictable events, such
  as the rolling of an unbiased die.
* More requently, such randomness is used in larger-scale simulations.
* We'll stick with images, though.

Lab
===
* Do [](../Labs/random-drawing-lab.html)the lab</a>.


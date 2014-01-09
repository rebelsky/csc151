Outline 37: Randomized (Unpredictable) Drawing
==============================================

Held: Friday, 8 November 2013

Back to [Outline 36 - Vectors](outline.36.html).
On to [Outline 38 - Another Image Model: Iterating Over Positions](outline.38.html).

**Summary**

We consider Scheme's `random` procedure, how one might use that procedure
in writing simple simulations, and how the procedure can be used to
generate "unpredictable" images.

**Related Pages**


**Overview**

* Random art.
* Why use randomness.
* The `random` procedure.
* Simulation.

**Administrivia**

* There will be time for questions on assignment 8, which is our last
  assignment.
* There's been a request that I talk about `vector-fill!`
* Next Friday we will be moving our class to the 3rd floor ARH lecture
  hall (302, I believe) to hear Hilary Mason '00.  Class starts at 12:45.
* Upcoming extra credit opportunities:
    * A love-your-body week event.
    * Drag show.  (Yes, this is in addition to the other lyb events.)
    * Concert, Saturday, 7:30, S-L.
    * Post-24-hour show, Saturday, 7:30, ???
    * Town Hall, Wednesday, November 13, noon or 7:30 p.m.
    * Learning from Alumni, Thursday: Atul Gupta, Trustee
    * CS Extra, Thursday: Hilary Mason '00
    * CS Table, Next Friday, HCI
    * CDO with Hilary Mason '00, Friday, ???
    * Digital Commons talk Monday, November 19, 7:00 p.m. or so

Randomized Images - The Theory
------------------------------

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

The `random` Procedure
----------------------

* Scheme helps us by providing a `(random n)` procedure.
* `n` must be a positive integer.
* `random` returns an integer between 0 and `n`-1,
  inclusive.

Randomized Images - Practice
----------------------------

* Many of the procedures we've written or used have numeric parameters.
* Those parameters can be generated "randomly".
* Many of the procedures we've written take one of a restricted number
  of inputs (e.g., there are only so many brushes).
* Those inputs can also be selected "randomly".
* Demo: Randomizing the brush

Other Uses of Randomness
------------------------

* We often use randomness in simulating unpredictable events, such
  as the rolling of an unbiased die.
* More requently, such randomness is used in larger-scale simulations.
* We'll stick with images, though.

Lab
---

* Do [the lab](../Labs/random-drawing-lab.html)



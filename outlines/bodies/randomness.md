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


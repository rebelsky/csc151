Models of images
----------------

* We've seen a variety of models of images.
   * Images that we describe by composing basic shapes.
   * Images that we create by transforming existing images.
   * Images that we create by using the Gimp tools.
   * Images that we create by a combination of techniques.
* But there are certainly other models of image making.  We'll
  learn at least two more this semester.
* Why are we learning so many models of image making?  Because the
  basic operations you have affect the way you think about problem
  solving.

The `image-compute` model
-------------------------

* In the `image-variant` model, we built images with a starting
  image and a function from colors to colors.
* We will consider a variant of this model - images as functions
  from *positions* to colors.
* That is, given an (x,y) pair, determine a color for the pixel at
  (x,y).
* Syntax: `(image-compute *function* *width* *height*)`

Examples
--------

* Color blends are the most natural thing to make.
* We can also make shapes by using conditionals.
* Given that colors are just numbers, we can also just do numeric
  computations and see what they give us.

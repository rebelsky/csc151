A Few Project Ideas
===================
* You can draw curved lines with <br>
  <code>(image-draw-curve *image* *start* *end* *control*)</code>
    * Line from *start* to *end*
    * Curves in the direction of *control*
    * All three positions are created with
    <code>(position-new col row)</code>
    * You can also create positions with <code>(cons col row)</code>
* You can draw more complex curves with <br>
  <code>(image-curve-the-dots *image* *list-of-positions* *curviness*)</code>
    * The line goes through all the positions
    * The curviness expresses how much to curve as it makes the path
    * You'll probably want to experiment with it
* You can compute pixels in the selected region with <br>
  <code>(selection-compute-pixels! *image* *position-to-color*)</code>.
* If you want to compute the color of pixels along a line, you're best off
  selecting the line (that is, a polygonal shape close to the line) and
  using <code>selection-compute-pixels!</code>.
* You can get stuff from one image to another with <br>
  <code>(image-copy-selection IMAGE)</code> and <br>
  <code>(image-paste! IMAGE)</code>

Time to Work on Projects
========================

Use the remaining time to work on projects and to get ideas and advice
from other folks.

??? END   ???


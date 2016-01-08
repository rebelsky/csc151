CSC151.01 2015F, Class 45: Pause for Breath
===========================================

* Sit with project partners!

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * A Few Project Techniques.
    * Questions.
* Quiz.
* Project work time.

Preliminaries
-------------

### Admin

* Review sessions next week
    * Zachary (Monday)
* Friday PSA.
    * If you choose to partake, please do so responsibly.
    * Remember that consent is necessary.

### Upcoming Work

* Projects: Next Tuesday at 10:30 p.m.
* Reading for Monday
  [Analyzing Projedures](../readings/analysis-reading.html)
* No Lab Writeup.
* Exam 4 to be assigned Tuesday (due Monday of week 14).

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* Learning Deconstructed Workshop Series, Tuesdays at 11 in JRC 209.
* Metropolitan Opera Simulcast, November 21, 11:30 a.m. Lulu by Berg, 
  Harris Cinema.  (Warning!  It's about four hours long.)
* *Saturday Night's Silent Film + Live Score.*
* Talk on the Future of Libraries, Monday, noon.

#### Peer Support

* Translations (a play).  7:30 p.m. Thursday through Saturday,
  2:00 p.m. Sunday.  Tickets at the Box Office.
* Smash Brothers Tournament, Saturday.  (See signs around campus for
  more details.)
    * Novice players encouraged.

#### Miscellaneous

* *20+ minutes of fun in the snow.*

#### Regular Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included; felines only), and Mondays at 4:45.  Requires sign up in 
  advance.    MORE HELP NEEDED!
* Socrates Cafe', Saturdays, Younker, 2pm.
* Pun Club, Saturdays, 4pm, Way over Younker.

#### Upcoming Peer Support

* Women's Basketball vs. Beloit, Nov. 28 at 3:00 p.m.
* Women's Basketball vs. St. Norbert, Dec. 5 at 3:00 p.m.
* One-act Festival Dec. 5 & 6.
* Women's Basketball vs. Carroll, Dec. 12 at 3:00 p.m.

### Other Good Things (No Extra Credit)

* Diwali event Friday.
* Jingle Bell Holiday Friday.
    * Boy Scouts will be selling tenderloins in the Methodist church from
      about 5-7pm.
    * If you show up, I'll treat you to a tenderloin or chicken sandwich
      or potato.

### Project Ideas and Questions

_How do I copy and paste from one image to another?_

<pre class="programlisting">
;;; Procedure:
;;;   new-copy-paste!
;;; Parameters:
;;;   source, an image
;;;   source-left, a non-negative integer
;;;   source-top, a non-negative integer
;;;   source-width, a positive integer
;;;   source-height, a positive integer
;;;   target, an image
;;;   target-left, a non-negative integer
;;;   target-top, a non-negative integer
;;;   target-width, a positive integer
;;;   target-height, a positive integer
;;; Purpose:
;;;   Copy one rectangular region of the image to a rectangular
;;;   region in another image, resizing as necessary.
;;; Produces: 
;;;   [Nothing; called for the side effect]
;;; Preconditions:
;;;   0 <= source-left < (image-width source)
;;;   0 <= source-top < (image-height source)
;;;   (+ source-left source-width) < (image-width source)
;;;   (+ source-top source-height) < (image-height source)
;;;   0 <= target-left < (image-width target)
;;;   0 <= target-top < (image-height target)
;;;   (+ target-left target-width) < (image-width target)
;;;   (+ target-top target-height) < (image-height target)
;;; Postconditions:
;;;   The specified area of the target image now contains the same subimage
;;;   as the source area (scaled, as appropriate).
(define new-copy-paste!
  (lambda (source 
           source-left source-top source-width source-height
           target
           target-left target-top target-width target-height)
    (let ([source-layer (image-get-layer source)]
          [target-layer (image-get-layer target)])
      (image-select-rectangle! source REPLACE 
                               source-left source-top 
                               source-width source-height)
      (gimp-edit-copy source-layer)
      (image-select-rectangle! target REPLACE
                               target-left target-top
                               target-width target-height)
      (let ([pasted (car (gimp-edit-paste target-layer 1))])
        (image-select-nothing! source)
        (image-select-nothing! target)
        (gimp-layer-scale pasted target-width target-height 1)
        (gimp-image-flatten target)
        (context-update-displays!)))))
</pre>

_How can I select a non-rectangular region, such as a triangle?_

> `(image-select-polygon! image REPLACE (cons x1 y1) (cons x2 y2) ... )`

For example

        > (define kitten (image-show (image-load "/home/rebelsky/Desktop/kitten.jpg")))
        > (image-select-polygon! kitten REPLACE (cons 140 120) (cons 160 15) (cons 200 80))
        '()
        > (image-transform! kitten irgb-complement)

_How can I get a semi-transparent overlay?_

> First, select a portion of the image.

> Next, use `(image-transform! image (lambda (col row) ...))`.

> Finally, select nothing.

_Are there other things like image-transform!?_

> We also have `image-recompute!`, which is like `image-compute!`, but works on an existing image.

        > (image-recompute! kitten (lambda (col row)
                                     (modulo (* col row row col col) (irgb 255 255 255))))

### Questions

Quiz
----

Project work time
-----------------


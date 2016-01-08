CSC151.01 2015F, Class 46: Analyzing Procedures
===============================================

* New partners (for all three days).

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Notes on Projects.
    * Questions.
* Lab.

Preliminaries
-------------

### Admin

* I've made it through about half of your proposals.  I'll try to get
  to the rest tonight.  I'm including some notes in today's 
  preliminaries.
* Review sessions this week
    * Zachary (Monday)

### Upcoming Work

* Projects: Tuesday at 10:30 p.m.
* Reading for Tuesday 
  [Association Lists](../readings/association-lists-reading.html)
* Today's Lab writeup (due Wednesday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 46 (Your Names)_
    * Exercises: Exercise 3 (a-d)
* Exam 4 to be assigned tomorrow (due Monday of week 14).
* No quiz this week!

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* Learning Deconstructed Workshop Series, Tuesdays at 11 in JRC 209.
* Talk on the Future of Libraries, TODAY, noon, JRC 101.

#### Peer Support

* Women's Basketball vs. Beloit, Saturday, Nov. 28 at 3:00 p.m.
* December 1 at 4pm in Cultural Education Center, JM live translates!

#### Regular Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included; felines only), and Mondays at 4:45.  Requires sign up in 
  advance.    MORE HELP NEEDED!
* Socrates Cafe', Saturdays, Younker, 2pm. (Not this weekend.)
* Pun Club, Saturdays, 4pm, Way over Younker. (Not this weekend.)

#### Upcoming Peer Support

* Women's Basketball vs. St. Norbert, Dec. 5 at 3:00 p.m.
* One-act Festival Dec. 5 & 6.
* Choir Concert, Dec. 6 at 2pm in Herrick.
* Women's Basketball vs. Carroll, Dec. 12 at 3:00 p.m.

### Other Good Things (No Extra Credit)

* Jingle Bell Holiday December 4.

### Project Notes

Please be careful with your arguments about the number of possible images.
I had one group write that because they used `(modulo n 4)`, `(modulo n 10)`,
and `(modulo n 25)`, they had 4*10*25 different images.

Although you will get full credit on the "different images" criterion if you
just use `n` to compute 1 of 1000 different color schemes, you are likely to 
find your project more interestsing if you use `n` for multiple aspects of
your image.

Make sure to document your procedures.

Make sure to name your procedures well. 

Make sure that your code is elegant.  

Here's a procedure that violates all three of the prior rules.

    (define first-digit
      (lambda (n)
        (let ([number (remainder (remainder n 100) 10)])
          (cond [(equal? 0 number)
                 12]
                [(equal? 1 number)
                 11]
                [(equal? 2 number)
                 10]
                [(equal? 3 number)
                 9]
                [(equal? 4 number)
                 8]
                [(equal? 5 number)
                 7]
                [(equal? 6 number)
                 6]
                [(equal? 7 number)
                 5]
                [(equal? 8 number) 
                 4]
                [else 
                 3]))))

Better

    ;;; Procedure:
    ;;;   third-digit
    ;;; Parameters:
    ;;;   n, an integer in the range 0...999.
    ;;; Purpose:
    ;;;   Compute the rightmost digit in n.
    ;;; Produces:
    ;;;   digit, an integer in the range 0..9.
    (define third-digit
      (lambda (n)
        (remainder n 10)))

    ;;; Procedure:
    ;;;   recursion-depth
    ;;; Parameters:
    ;;;   n, an integer in the range 0...999.
    ;;; Purpose:
    ;;;   Compute the recursion depth we use for image n in our series.
    ;;; Produces:
    ;;;   depth, an integer in the range 3 .. 12.
    (define recursion-depth
      (lambda (n)
        (- 12 (third-digit n))))

    (define source-image
      (lambda (number)
        (cond [(equal? 0 number)
               "new-york.jpg"] 
              [(equal? 1 number)
               "chicago.jpg"]
              [(equal? 2 number)
               "grinnell.jpg"]
              [(equal? 3 number)
               "paris.jpg"]
              [(equal? 4 number)
               "paris-again.jpg"]
              [(equal? 5 number)
               "boston.jpg"]
              [(equal? 6 number)
               "hub.jpg"]
              [(equal? 7 number)
               "tokyo.jpg"]
              [(equal? 8 number) 
               "ellay.jpg"]
              [else 
               "twin-cities.jpg"])))

You could make that much more elegant using a vector and vector-ref.

You could also make that more elegant by naming your files "city-#.jpg"
and using `(string-append "city-" (number->string number) ".jpg")`.

While you may use `gimp-image-resize` (or whatever it's called) to resize
your original images if you are copying from existing images, you may not
use it after using any of the other operations.

You might find it useful to put the image number in the lower-right-hand
corner of the image.  You can use the following procedure to do so.  (And
no, you may not claim that because you get a different number on every 
image, it's a different image.)

    ;;; Procedure:
    ;;;   image-label!
    ;;; Parameters:
    ;;;   image, an image
    ;;;   label, a non-negative integer
    ;;;   color, a color
    ;;; Purpose:
    ;;;   Adds a label to the lower-right-hand corner of the image.
    ;;; Produces:
    ;;;   [Nothing; called for the side effect]
    ;;; Preconditions:
    ;;;   0 <= n < 1000
    ;;;   1 <= fontsize < 100
    (define image-label!
      (lambda (image label color)
        (let* ([width (image-width image)]
               [height (image-height image)]
               [tmp (string-append "00" (number->string label))]
               [str (substring tmp (- (string-length tmp) 3))])
          (context-set-fgcolor! color)
          (context-set-font-name! "Monospace Bold")
          (context-set-font-size! (quotient (min width height) 15))
          (image-display-text! image
                               str
                               (* .99 width) (* .99 height)
                               ALIGN-RIGHT ALIGN-BOTTOM)
          (context-update-displays!)
          image)))

Be careful about naming.    Remember that the name of the procedure
you are supposed to write is `(image-series n width height)`.

You can use the grading rubric as a check list.

Do you care if the helper procedures are local or not?  And if they are
similar, can I write one set of documentation?

    ;;; Procedures:
    ;;;   add-fish!
    ;;;   add-zorro-stripe!
    ;;;   add-annoying-professor!
    ;;;   add-nothing!
    ;;; Parameters:
    ;;;   image, an image
    ;;;   n, an integer in the range 0..999
    ;;; Purpose:
    ;;;   Add the obvious things to the image
    ;;; Produces:
    ;;;   [Nothing; called for the side effect.]

### Questions

Lab
---

Writeup is exercise 3.

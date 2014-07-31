CSC151.02 2014S, Class 15: Homogeneous Lists: Making and Manipulating Groups of Drawings 
=========================================================================================

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming work.
    * A few notes from yesterday's class.
    * New homework assignment.
    * Questions.
* Questions on the reading.
* Lab.

Preliminaries
-------------

### Admin

* I won't be able to hold a review session this week.  Sorry.
* Extra credit: 
    * Falling Club, 4:15-6:15 at the rock wall.
    * Thursday extra, Thursday @ 4:30 p.m., Sci. 3821, Red/Black trees.
    * Opera Iowa: The Elixir of Love, Thursday, 7:30, Roberts
    * CS Table Friday @ noon: Law, Order, and Computers

### Upcoming work

* Start homework 4
* Friday's reading: The GNU Image Manipulation Program and
  Scripting the Gimp Tools
* Lab writeup: Exercise 5
    * Subject: CSC 151.02 Writeup 11: Lists of Drawings (YOUR NAME)
    * Due Friday.

### A few notes from Tuesday's lab

`irgb-redder` and related procedures are not always invertible.
Consider what happens at the extreme values.

    > (define red1 (rgb-new 244 0 0))
    > (define red2 (rgb-new 255 0 0))
    > (define red3 (rgb-new 250 0 0))
    > (define black (rgb-new 0 0 0))
    > (define very-dark-grey (rgb-new 8 8 8))
    > (define very-dark-purple (rgb-new 8 0 8))

What do you think about the following procedure?

    (o irgb-complement irgb-redder irgb-complement)

How would you implement `irgb-redder`?  (There's how it's implemented, and
what we might do given what we've learned in using it.)

* Current implementation

    (define irgb-redder
      (lambda (irgb)
        (irgb (+ (irgb-red irgb) 32)
              (irgb-green irgb)
              (irgb-blue irgb))))


    (define irgb-redder
      (lambda (irgb)
        (irgb (+ (irgb-red irgb) 24)
              (- (irgb-green irgb) 16)
              (- (irgb-blue irgb) 16))))

### About homework 4

* New partners!
* Four problems, all emphasizing transformations.

### Questions on the Readings

* Nope.

Lab

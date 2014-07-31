CSC151.02 2014S, Class 16: Programming the GIMP Tools
=====================================================

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming work.
    * HW questions.
    * Pre-quiz questions.
    * Quiz.
* Brushes: Something we didn't tell you in the reading.
* Lab!

Preliminaries
-------------

### Admin

* A number of issues have put me significantly behind.  I hope to be less
  behind by Monday.  (You will get your exams back on Monday, as scheduled.)
* DrRacket wishes you a happy valentines day.
* Starting with the next HW, you can choose one of the following options
  (provided you fill in the survey)
    * Pick partners for me (pair or triplet or whatever)
    * Work by myself
    * Pick partners myself
* If you choose to participate in Harris, please be responsible.
* Extra credit: 
    * Long-form improv 7:30 pm tonight in the wall (which wall and how you 
      get into the wall is up to you to figure out)
    * ???

### Upcoming Work

* No readings for Monday!  We will just go over the exam.
* No Lab writeup for today (no matter what the schedule says)!
* Continue to work on the assignment.

### Questions on the Homework

### Pre Quiz Questions

### Quiz

A Few Quick Things
------------------

* Today's lab reflects the original motivation for this model of the course.
* For *some* of the brushes (e.g. "2. Hardness 100"), you can also set the
  brush size.

    (define canvas (image-new 200 200))
    (context-set-brush! "2. Hardness 100" 20)
    (image-draw-line! canvas 30 10 30 190)
    (context-set-brush! "2. Hardness 100" 30)
    (image-draw-line! canvas 60 10 60 190)
    (context-set-brush! "2. Hardness 100" 10)
    (image-draw-line! canvas 80 10 80 190)
    (context-set-brush! "2. Hardness 050" 20)
    (image-draw-line! canvas 110 10 110 190)
    (image-show canvas)


Lab
---

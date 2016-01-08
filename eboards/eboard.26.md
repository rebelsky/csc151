CSC151.01 2015F, Class 26: Preconditions, Revisited
===================================================

* New partners!
    * Don't forget to introduce yourselves!

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Lab.

Preliminaries
-------------

### Admin

* Review sessions this week
    * Monday 8pm (Zachary)
    * Wednesday 8pm (Zachary)
    * Thursday 8pm (Erin) 
    * No Sam Thursday review :-(
* I will be AFK (Away from Keyboard) starting about noon on Tuesday.  If 
  you have exam questions, ask them before then.
* I sent out notes on the prologues from exam 2.  If you don't regularly 
  read your email, you should check for those notes.
* Please don't ask tutors/mentors to answer questions on your exam code
  or to explain exam questions to you.

### Upcoming Work

* Reading for Tuesday:
  [Characters and Strings](../readings/strings-reading.html) 
* [Exam 2](../assignments/exam.02.html)  
    * Exam due in electronic form Tuesday night
    * Exam due in hardcopy Wednesday class time
    * Epilogue due Wednesday night
* Today's Lab writeup (due before class Wednesday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 26 (Your Names)_
    * Exercises: 1f, 3h

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery
* CS Table Tuesday, noon, White Dining Room, THERAC 25 (C)

#### Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included), Sunday at 4:45, and Mondays at 4:45.  Requires sign up in 
  advance.  
* Pun Club, Saturdays, 4pm, Way over Younker.
* Study Abroad Session, Monday the 12th 7-8pm in JRC 101.  Hear about 
  Study Abroad Experiences and think about Study Abroad.

### Quiz 6

We'll look at the first problem.  I'll probably return it tomorrow.

### An "Interesting" Use of Recursion

You wrote something like:

    (define sample-and-replace-d!
      (lambda (image left top width height)
        (let ([color1 (random-sample image left top width height)]
              [color2 (random-sample image left top width height)]
              [color3 (random-sample image left top width height)])
          (when (and (< (irgb-distance color1 color2) 50)
                     (< (irgb-distance color2 color3) 50)
                     (< (irgb-distance color3 color1) 50))
            (fill-rectangle! image left top width height
                              (irgb-average-3 color1 color2 color3))))))

We can use recursion!

          (cond
            [(and (< (irgb-distance color1 color2) 50)
                  (< (irgb-distance color2 color3) 50)
                  (< (irgb-distance color3 color1) 50))
             (fill-rectangle! image left top width height
                              (irgb-average-3 color1 color2 color3))]
            [else
             ; recurse on the top-left quarter
             ; recurse on the top-right quarter
             ; recurse on the bottom-left quarter
             ; recurson on the bottom-right quarter])

* Our base case is probably when width and height are small enough.
           
### Questions

Problem 6: Two approaches

* Approach 1: Clever use of `quotient` and `modulo`.
* Approach 2: Given a row number and the number of columns, compute all
  the points in that row.  Use `map` to generalize.

_Question too complex to rephrase on the eboard._

    > (map list (list "sam" "tyler" "bailey") (list "jones" "bailey" "doodle"))
    '(("sam" "jones") ("tyler" "bailey") ("bailey" "doodle"))
    > (map list (list 1 2 3) (list 4 5 6))
    '((1 4) (2 5) (3 6))

_How many test cases on problem 1?_

> I came up with something like 3 x 2 x 3 x 4 approaches.  I combined
  some things into a test of multiple concepts.  I ended up with ten
  or so.

_Are drawings that are not renderable (e.g. because they don't have any
 points that fall within a typical image) still drawings?_

> Yes.

_Should we put an example in problem 1?_

> Yes.  Show the first few lines of it failing massively on the 
  incorrect implementation.

_Should we get rid of the ugly X's?_

> That would be nice.  You can keep beautiful X's, though.  We do 
  judge an X by it's appearance.  (No, that joke failed miserably.)

_What does `drawing-render!` do?_

> Puts a drawing on top of an existing image.

> You should not need it for this exam.

_Should we show experiments for everything?_

> Yes, that's why there's a section for experiments in every problem.

Lab
---

Writeup: 1f, 3h

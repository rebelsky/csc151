CSC151.01 2015F, Class 27: Characters and Strings
=================================================

* Continue partners!

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
    * Wednesday 8pm (Zachary)
    * Thursday 8pm (Erin)
* I will be AFK (Away from Keyboard) starting about noon on Tuesday.  If 
  you have exam questions, try to ask them before then.  (I may still
  be on cell phone, but cell phone answers are less detailed.)

### Upcoming Work

* Reading for Wednesday:
  [Recursion with Helper Procedures](../readings/helper-recursion-reading.html) 
* [Exam 2](../assignments/exam.02.html)  
    * Exam due in electronic form TONIGHT
    * Exam due in hardcopy Wednesday class time
    * Epilogue due Wednesday night
* Today's Lab writeup (due before class Friday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 27 (Your Names)_
    * Exercises: 5, 6b
* Quiz Friday
    * Identify people in class from poorly-photocopied photographs
    * First names provided
    * You can find most of the people in class in the class photo listing
      on P'Web

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery
* Met Opera Simulcast on Saturday

#### Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included), Sunday at 4:45, and Mondays at 4:45.  Requires sign up in 
  advance.  
* Pun Club, Saturdays, 4pm, Way over Younker.
* AppDev Lyle's Pub Friday at 7:30 p.m.
* Grinnell Space Exploration Agency Mondays at 7pm in Noyce 1022

### Questions

_Will you be upset if my lines of Scheme are more than 80 characters and
 therefore wrap into unreadable form?_

> Yes.

_I'm still getting the annoying GDBus error.  What should I do?_

> I've found that most of the instances have to do with `image-get-pixel`.
  I've been using the following strategy.

> First, add the following to the definitions pane.

        (define image-get-pixel-verbose
          (lambda (image col row)
            (display (list 'image-get-pixel image col row))
            (newline)
            (image-get-pixel image col row)))

> Next, change the calls to `image-get-pixel` to use 
  `image-get-pixel-verbose`.

> Finally, look at where you're trying to get pixels form.

_My code for problem 3 has a lot of calls to `make-list`.  Do you think
 that's a good idea?_

> Probably not.  Think about the following pair of expressions.  The
  second is more efficient (and probably clearer).

        (map list (make-list 10 0) (iota 10))

        (map (section list 0 <>) (iota 10))

_Should we write at least the 4P's for our helper functions?_

> Yes.  Particularly if you name them things like "ell" or "ipse" or
  "fun", "ellipse1", "ellipse2"

_For 3b, can we assume that top and height are reasonable?_

> Yes.  I probably should have made you write preconditions, but I said
  "Do not document".

_Can I still document when you say "Do not document"?_

> Yes.

_What should our tests and examples look like if it outputs an image?_

        ; > (image-show (image-target! "red" "green" "blue" "purple" 25 17 83 11 200 800))
        ; 5
        ; ; Image 5 shows me ...
                                 
Lab
---

* Don't forget about `substring`!
* Why does `(substring a b)` go to position `b`-1?  
    * Because they look forward to `(substring a b)` and `(substring b c)`, 
      and don't want them to overlap.
    * Convention.
* Writeup: 5, 6b
* Hint for 6b: You should not need recursion!
* Solution for 6a

        (define string-sum
          (lambda (str)
            (sum (map char->integer (string->list str)))))

* Alternate solution for 6a

        (define string-sum
          (o sum (section map char->integer <>) string->list))

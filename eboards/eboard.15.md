CSC151.01 2015F, Class 15: Drawings as Values
=============================================

* Continue partners!
* Lab and reading in the back of the room.  I don't know why the reading
  printed so small.

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Representing images.
* Thinking about drawings through composition/decomposition.
* The underlying representation.
* Pure approaches vs impure approaches.

Preliminaries
-------------

### Admin

* Review sessions:
    * Wednesday, 8pm (Zachary)
    * Thursday, 10am (Sam)
    * Thursday, 8pm (Caleb)
* I don't know why it's so hard to print from DrRacket.  I'm looking into
  the issue.
* I hear that some of you are starting to get the "cs rush" - the joy of
  realizing that you've solved a hard problem.

### Upcoming Work

* Reading for Wednesday 
  [Homogeneous Lists](../readings/homogenous-lists-reading.html)
* [Exam 1](../assignments/exam.01.html) 
    * Electronic due TONIGHT: <http://bit.ly/151-2015F-exam1>
    * Printed version due TOMORROW: Keep cover sheet separate
    * Epilogue due TOMORROW NIGHT<http://bit.ly/151-2015F-exam1epi>
* Today's Lab writeup (due before class Friday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 15 (Your Names)_
    * Exercise: 

### Extra Credit Opportunities

#### Academic

* Any visit to the current show in the Faulconer gallery
* No CS Table this week - It's advising week!
* Wednesday CS Extra this week, 4:15 in 3821: Ursula Woltz on Building
  Coding Communities
* Thursday CS Extra this Week, 4:15 in 3821: SamR on The Architecture of
  Mediascript

#### Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included), Sunday at 4:45, and Mondays at 4:45.  Requires sign up in 
  advance.  Fundraising activity Saturday at 10:30 at 824 High Street.
* Pun Club, Saturdays, 4pm, Way over Younker.
* Singers concert on Family weekend!  Sept. 26, 2pm., Sebring-Lewis
* Orchestra concert on Family weekend!  Sept. 26, 2pm., Sebring-Lewis

### Non Extra-Credit Activities

* EE's show in Smith
* Grinnell Homecoming Parade Thursday at 5:30 p.m. - Small town homecoming
  is an interesting experience that everyone should see once

### Questions

_When I run my procedure, instead of seeing a result, I see something
 like `<procedure:hop.sadasfasffsdad#1231321>`_

    (define my-proc
      (lambda (a b c)
        (o (section max a <>) (section max b <>) (section max c <>))))
    > (my-proc 1 2 3)
    #<procedure:...gigls/higher.rkt:215:4>

> This means that you've written a procedure that returns a procedure.
  Congratulations!  Many (non-Grinnell) CS majors don't learn how to do 
  this until their senior year.   But that's probably not what you wanted.
  Send me your code and I'll help you figure it out.

_How many tests should we have in problem 4?_

> Enough that you are confident that a procedure written by any 
  well-intentioned but incompetent programmer that passes your tests
  will always be correct.  Probably about eight or so different cases
  in which you look at the minutes and seconds of each.  
    * EG says: Don't only write similar tests like "1 min 3 sec 
      plus 2 min 3 sec" "2 min 3 sec plus 3 min 4 sec".)

_Should we try times that go over an hour?_

> Yes, that would be good.  But they will give large numbers of minutes;
  you should not worry about dealing with hours.

_I got `Contract violation!  Expect a lawyer to appear soon.  Expected
 number?.  Got procedure!_

> (+ + -) will give you that error, as will any attempt to use a
  procedure when Scheme expects a number.

_Do you need a picture for the last problem?_

> No.  The kitten has suffered enough.

Representing images
-------------------

Thinking about drawings through composition/decomposition
---------------------------------------------------------

The underlying representation
-----------------------------

Pure approaches vs impure approaches
------------------------------------


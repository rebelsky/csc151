CSC151.01 2015F, Class 16: Homogeneous Lists: Making and Manipulating Groups of Drawings 
=========================================================================================

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Prebrief
* Lab

Preliminaries
-------------

### Admin

* New partners!  You know the drill.
* Trade: Cover sheet for Candy
* Review sessions:
    * Wednesday, 8pm (Zachary)
    * Thursday, 10am (Sam)
    * Thursday, 8pm (Caleb)
* Quiz Topics
    * Boolean Values
    * Drawings as Values
    * Testing!
* It doesn't look like people are using the printed labs/readings, so I'm
  giving up on them for now.  If you need one today, let me know and I'll
  print one at the start of class.
* Folks are trying to handle the printer problems.
* HW 4 is not quite ready.  Expect it to be distributed tonight.

### Upcoming Work

* Readings for Friday
  [The GNU Image Manipulation Program](../readings/gimp-reading.html) and
  [Programming the GIMP tools](../readings/gimp-tools-reading.html)
* Exam 1
    * Cover sheet due now!
    * Epilogue due TONIGHT <http://bit.ly/151-2015F-exam1epi>
* HW 3 to be distributed later.
* Today's Lab writeup (due before class Monday)
    * Email to <grader-151-01@cs.grinnell.edu> 
    * Subject: _CSC 151 Lab Writeup Class 16 (Your Names)_
    * Exercise: 

### Extra Credit Opportunities

#### Academic

* Any visit to the current show in the Faulconer gallery
* No CS Table this week - It's advising week!
* Wednesday CS Extra this week, 4:15 in 3821: Ursula Wolz on Building
  Coding Communities
* Thursday CS Extra this Week, 4:15 in 3821: SamR on The Architecture of
  Mediascript

#### Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included), Sunday at 4:45, and Mondays at 4:45.  Requires sign up in 
  advance.  Fundraising activity forthcoming, too!
* Pun Club, Saturdays, 4pm, Way over Younker.
* Singers concert on Family weekend!  Sept. 26, 2pm., Sebring-Lewis
* Orchestra concert on Family weekend!  Sept. 26, 2pm., Sebring-Lewis
* Open mic at Bob's 9pm Thursday
* Autumn Festival, Saturday at 6pm at Harris Gym
* Eid Dinner Friday night at dinner time.  Tickets necessary.
  Somewhere on campus.  They are selling tickets at the tables by
  the cafeteria.  If you would like to go and the cost is difficult
  for you, ask Sam for the money.

### Non Extra-Credit Activities

* EE's show in Smith
* Grinnell Homecoming Parade Thursday at 5:30 p.m. - Small town homecoming
  is an interesting experience that everyone should see once

### Questions

What were the important points from yesterday's class?

* When you scale, coordinates and sizes both scale.
* In some situations, the order of commands matters
    * `(square (increment 1))` != `(increment (square 1))`
    * It also matters for drawings some of the time
         * If you move then scale you get different results than if you
           scale then move.
         * However, you can scale horizontally and vertically in either order
* MediaScheme has built in shapes that you can maniuplate with various
  functions.  I don't care that I can't spell manipulate.

What were the important points that certain students should have taken
from today's reading?

* We can make lists of values that simplify your life because you can
  now do the same calculation to each member of the list.
* The procedure to make a list is `list` or `make-list`.
* The procedure to do something with each element of a list is `map`.

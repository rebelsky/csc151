CSC151.02 2014S, Class 23: Revisiting Lists
===========================================

_Overview_

* Preliminaries.
    * Admin.
    * Questions.
* Topics.
    * Lists, revisited.
    * New list operations.
* Lab.

Preliminaries
-------------

### Admin

### Upcoming Work

* Reading for Friday: Recursion Basics
* Writeup: Exercise 4
    * Subject: CSC 151.02 Writeup 15: Lists (OPTIONAL NAMES)
* Yay!  We have a new homework assignment
* I have appointments across campus this afternoon starting at 2:15, so I'll
  be leaving immediately after class.
* I'll be gone Friday for a middle-school math competition 
    * Kim will be teaching class 
* Kim and I will be gone most of next week for a conference on CS education.
    * Kim will be teaching class on Tuesday.
    * Would you prefer to have our awesome team of mentors or a guest
      lecturer on Wednesday and Friday?
* Because of general confusion and attendance issues, I'm giving up on 
  the Thursday daytime review sessions.  Sign up for individual
  appointments instead.  (I've done my best to expand available times.)
* Extra credit:
    * Thursday CS Extras at 4:30 p.m. in 3821: New CS Curriculum.  
    * Galaxy auction Friday at Eagle's lodge
      <http://www.galaxyinc.org/>
        * Dinner ($10.00) at 5:00 p.m. - GC Lasagna
        * Auction at 6:30 p.m.
    * Convo next Wednesday.
    * First Years: How to Use Your Summer, 6 March from 8-9 in JRC 101
    * Balancing Acts, Friday, 7 March at 7:30 in Flanagan
    * Men's Tennis, Saturday, 8 March at some time, here or Pella
    * Balancing Acts, Saturday, 8 March at 7:30 in Flanagan
    * Balancing Acts, Sunday, 9 March at 2:00 in Flanagan
    * Orchestra and Narration and Animation, Wednesday, 5 March
       * Tadpoles contemplate the meaning of life
    * Retrospective debate 7:30 pm on Thursday, "Should we move to office 365?"

### Questions

Lists, revisited
----------------

* Lists collect values together
* We can make cool pictures with lists by using map on a list of drawings
  and then rendering the list of drawings.
* map applies a procedure to each element of a list, or to corresponding elements
  of multiple lists
* `(make-list N val)` makes a list of N copies of `val`.
* `(append lst1 lst2)` joins two lists together
* `(list val1 val2 ... valn)` make a list
* `(iota N)` - make the list (0 1 2 3 ... N-1)
* `(reverse lst)` - make a new list in opposite order

New list operations
-------------------

* Finer grained operations on a list.

Four basic operations

* `(car lst)` - grab the first element of a list
* `(cdr lst)` - grabs all but the first element
* `(cons val lst)` - (construct) - put a value at the front of the list, making
  a new list
* `null` - empty list - also `()

`caddr`

* `(list-ref lst i)` - grab the ith element of a list
    * Counting starts at zero

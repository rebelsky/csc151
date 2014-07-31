CSC151.02 2014S, Class 40: Vectors
==================================

_Overview_

* Preliminaries.
    * Admin.
    * Quiz Questions.
    * Project Questions.
* Problems with lists.
* A solution: Vectors.
* Behind the scenes: How Scheme implements vectors.
* Important vector procedures.
* Quiz.
* Lab.

Preliminaries
-------------

### Admin

* Reading for Monday: Analyzing Procedures
* Homework for next week: Project proposals.
    * Please send me your project groups + name for the project group.
* No lab writeup.  

### Extra Credit

* Iowater activities, iowater@grinnell.edu
    * Saturday, April 12, 9-11, Little bear creek
    * Saturday, April 12, 1-4, Arbor Lake
    * Saturday, April 19: Tag drains
    * Saturday, April 26: Tag drains
* <http://www.strikingly.com/pioneerweekend>
* Tennis Saturday at 10am.
* CS extra next Monday: Walker and Liberto on bluetooth.
* CS extra next Thursday: Charlie Eddy on his project.
* Get and wear one of the "1 in 4" shirts next week.  Pick up shirt Tuesday
  through Thursday, wear on Friday.
* Oberlin tomorrow: Support Improv
* Early Music Ensemble Sunday at 2 in Faulconer
* Climbing competition Saturday at IAState.  Talk to Kim.
* Art community day (related to exhibition): 1:30 pm to 3:00 pm
* BAX Exhibition today at Faulconer, 4:30, 5:00, 5:30

### Questions before Quiz

_Why are nested lists important?_

> Lists are one of our favorite ways of representing data.

        '(("Strand"
           ("Summer Civilian" 5 4 4 0.6)
           ("Rio 2" 1 1 1 5)
           ("Noah" 5 5 5 5))
          ("Harris"
           ("Saturday Night Fever" 4 4 4 4 4 4 4)
           ("Came out last year" 1 1 1)))

_Do I really only use one apostrophe for a list, even with inner lists?

> Yes.


Problems with lists
-------------------

* A great way of storing data.
* Easy to use and think about.
* But ...
    * Hard to change (can't change, and expensive to build new list)
    * Expensive to get an element deep in the list

A solution: Vectors
-------------------

* A great way of storing data
* Need to know length in advance
* Easy/fast to change elements
* Easy/fast to get elements
* COmplicated/slow to increase or decrease size.

Behind the scenes: How Scheme implements vectors
------------------------------------------------

   (define number-tree-largest
      (lambda (ntree)
        (cond
          [(pair? ntree)
           (____________ (number-tree-largest (car ntree))
                         ________________________________)]
          [else
           ___________________])))


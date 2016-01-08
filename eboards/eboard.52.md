CSC151.01 2015F, Class 52: An Introduction to Sorting
=====================================================

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Quiz.
* Project.
* The problem of sorting.
* Writing sorting algorithms.
* Examples: Insertion, selection, etc.
* Formalizing the problem.

Preliminaries
-------------

### Admin

* Continue partners.
* We will continue crits of your artwork.
* We will also attempt to start some new issues.
* Friday PSA.

### Upcoming Work

* Reading for Monday
  [Sorting](../readings/sorting-reading.html)
* No lab writeup!
* Exam 4 prologue due TONIGHT!
* Exam 4 due Monday, Dec. 7.  Email it to me as an attachment.  Use your
  random number form last time, or grab a new one.
* Exam 4 cover sheet due Tuesday, Dec. 8.
* Exam 4 epilogue due Tuesday, Dec. 8.

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery.
* "Summer Opportunities in CS", Thursday at 4:15 p.m.

#### Peer Support

* Dance Ensemble, Friday and Saturday at 7:30 p.m.
* Women's Basketball vs. St. Norbert, Dec. 5 at 3:00 p.m.
* One-act Festival Dec. 5 at 2pm and & Dec 6 at 7 p.m.
* Choir Concert, Dec. 6 at 2pm in Herrick.
* Deshowber/Showcember, Friday, Gardner.  Support lots of your peers!

#### Regular Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included; felines only), and Mondays at 4:45.  Requires sign up in 
  advance.    MORE HELP NEEDED!
* Socrates Cafe', Saturdays, Younker, 2pm. 
* Pun Club, Saturdays, 4pm, Way over Younker. 

#### Misc.

* Moderation this weekend.

#### Upcoming Peer Support

* Women's Basketball vs. Carroll, Dec. 12 at 3:00 p.m.

### Other Good Things (No Extra Credit)

* Swim Meet December 4/5.
* Jingle Bell Holiday December 4.  I will not be there (swim meet), 
  I'll try to find a way to treat you to tenderloins / chicken / 
  potatoes.

### Questions

_Why does the following code make DrRacket upset?_

        (define read-file
          (lambda (file-name)
             (let ([line (read-line (open-input-file file-name))])
               (if (eof-object? line)
                   (close-input-port (open-input-file file-name))
                   (cons line (read-file file-name))))))

> Because you are not being careful in your recursion, it keeps opening
  ports again and again and again and always reads the first line, so it's
  even going to recurse forever.

_How can I fix it?_

> Maybe you should look at the sample code from the files lab for good ideas.

_I can't figure out how to call `binary-search` on problem 6._

> You shouldn't.  You should write a new procedure using the ideas of
  binary search (and perhaps even some of the code).

_How can we make fewer cons calls on problem 7?_

> Think about other ways to use map.  Look back at answer key to exam 3.
  Look at the reading on homogeneous lists.

_What's the latest I can ask for an extension?_

> 6 p.m. Monday.

Quiz
----

Project
-------

The problem of sorting
----------------------

Writing sorting algorithms
--------------------------

Examples: Insertion, selection, etc
-----------------------------------

Formalizing the problem
-----------------------


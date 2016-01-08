CSC151.01 2015F, Class 24: Recursion Basics
===========================================

* New Partners!

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Reminder: The Components of Algorithms
* Some Challenges
* Recursion: Key Ideas
* Expressing recursion in Scheme
* Lab

Preliminaries
-------------

### Admin

* We will continue this topic on Friday
* Review Sessions
    * Tonight at 8pm (Zachary)
    * Thursday at 10am (SamR)
    * Thursday at 8pm (Caleb)

### Upcoming Work

* Reading for Friday:
  [Recursion Basics](../readings/recursion-basics-reading.html) 
* [Exam 2](../assignments/exam.02.html)  
    * Prologue due Friday night
    * Exam due in electronic form Tuesday night
    * Exam due in hardcopy Wednesday class time
    * Epilogue due Wednesday night
* No lab writeup today
* Quiz Friday
    * `let`, `let*`
    * anonymous procedures
    * lists (using `cons`, `car`, and `cdr`)
    * `image-compute`
    * conditionals (using `if`, `when`, and `cond`)

### Extra Credit Opportunities

* If possible, send me these in advance.

#### Academic

* Any visit to the current show in the Faulconer gallery
* CS Extras Thursday at 4:15 pm in 3821: Blake Creasey on Watson
* Sarah Purcell and Jim Eimborg on The Digital Liberal Arts and You,
  Friday, 4:15 pm, ARH 102

#### Peer Support

* Pals of PALS, pals@grinnell.edu, normally Saturday at 7:45 am (breakfast
  included), Sunday at 4:45, and Mondays at 4:45.  Requires sign up in 
  advance.  
* Pun Club, Saturdays, 4pm, Way over Younker.
* Study Abroad Session, Monday the 12th 7pm in JRC 101 hear about 
  Study Abroad Experiences and think about Study Abroad

#### Miscellaneous

How would you like to read a fanfic made by one of the most prominent
friendly AI researchers in the entire world? And  how would you like
to learn about existential risk, rationality, and effective altruism
through the medium of HARRY POTTER? (included at bottom of the email)

Check out the first chapter, and come to the first meeting (10/10) of
Harry Potter and the Methods of Rationality club! Saturdays, 3pm in the
CS commons.

We're hosting a hackathon for Spring 2016 that involves teaching people
about the HPMOR fanfic through the medium of apps and websites.

<http://hpmor.com/chapter/1>

There's a shared Google doc for comments

<https://docs.google.com/document/d/1qwx7qn3I0GviOElEoTYVVLkVKgFBPB685HbyRPW1hQE/edit>

Also, like the FB page to get updates. 

<https://www.facebook.com/HPMORHackathon?fref=ts>

Contact [wuruth17] to get more information.

### Other Good Things

* Friends of Drake Library book sale this weekend.
  Friday 5-8 pm.  Saturday 8am-2pm.  Admission $3 on Friday and $0 
  on Saturday.

### Questions

Reminder: The Components of Algorithms
--------------------------------------

* Basic operations: We need to be able to rely on some things that the
  computer already knows about
* Variables: We need to be able to name things
* Sequencing: We need to describe the order in which things are done
* Conditionals: We need to be able to make choices
* Repetition: We need to be able to repeat actions
* Subroutines: Group and parameterize
* Input and output: Get info from the user, provide info to the user

We've seen all of these, including repetition

* Repetition: `map`, `image-variant`, "that weird grid thing from HW 5",
  `image-compute`.
* But none of these are sufficiently general.

Some Challenges
---------------

You are given a problem.  

* You are an executive.  You want to avoid work by delegating.
* You have a really smart executive assistant, but your assistant
  will refuse to do exactly the same problem.
* Your data are a list.  You have to pull of the car (if there is a car)
  before asking your assistant to do work.  (Your assistant gets the cdr)
* You use the result from  your assistant.

Task one: You get a LIST of employees, you have to determine if NAME is
an employee

        If the list is empty
          return false
        Otherwise, If (car lst) is "Sam"
          return true
        Otherwise
          Ask your assistant if Sam is in the (cdr of the list)
          Return whatever your executive assistant said

Task two: You get a list of employees, you want to determine how many
employees you have, numEmployees(LIST)

        If the list is empty
          return 0
        Otherwise
          Ask your assistant to count the cdr of the list 
          Add 1

Task three: You get a list of employees, you want to determine how many
employees have a name that starts with LETTER

        If the list is empty
          return 0
        Otherwise, If the car of the list starts with LETTER
          Ask your assistant to count the number of names that start with LETTER in the cdr of the list 
          Add 1 to that number
        Otherwise
          Ask your assistant to count the number of names that start with LETTER in the cdr of the list 
          Return that number

        If the list is empty
          return 0
        Otherwise
          Ask your assistant to count the number of names that start with LETTER in the cdr of the list
          If your card starts with LETTER, add 1 to that number
          Otherwise, just give back that number

Recursion: Key Ideas
--------------------

* Just as in the examples, we can have each person do the same set of
  instructions, we can have the computer keep doing the same set of
  instructions.
* The computer can serve as its own assistant.

Model

* See if there's a simple solution that doesn't require an assistant BASE CASE
    * E.g., Empty list
    * The thing we're looking for is the front of the list
* Simplify the problem and do it all over again RECURSIVE CASE
    * E.g., take the cdr
    * Solve the simplified problem
    * Use that to make our overall solution
  
Expressing recursion in Scheme
------------------------------

<pre>
(define contains?
  (lambda (lst name)
    (cond
      [(null? lst)
       #f]
      [(equal? (car lst) name)
       #t]
      [else
       (contains? (cdr lst) name)])))
</pre>

Lab
---

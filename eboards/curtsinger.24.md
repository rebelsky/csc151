CSC151.02 2015F, Class 24: Recursion Basics
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
* Lab (maybe)

Preliminaries
-------------

### Admin

* You will continue this topic on Friday
* Review Sessions
    * Tonight at 8pm (Zachary)
    * Thursday at 10am (SamR)
    * Thursday at 8pm (Caleb)

### Upcoming Work

* Reading for Friday: Recursion Basics
* Homework 5 due tonight!
* Exam 2
    * Exam due in electronic form Tuesday night
    * Exam due in hardcopy Wednesday class time
* No lab writeup today
* Quiz Friday
    * `let`, `let*`
    * anonymous procedures
    * lists (using `cons`, `car`, and `cdr`)
    * `image-compute`
    * conditionals (using `if`, `when`, and `cond`)

### Extra Credit Opportunities

#### Academic

* CS Extras Thursday at 4:15 pm in 3821: Blake Creasey on Watson
* CS Table Tuesday

#### Peer Support

* Active Minds Movie Monday at 8pm in ARH 302 "OCD The War Inside"

### Other Good Things

* The current show in the Faulconer gallery
* Sarah Purcell and Jim Eimborg on The Digital Liberal Arts and You,
  Friday, 4:15 pm, ARH 102
* Friends of Drake Library book sale this weekend.
  Friday 5-8 pm.  Saturday 8am-2pm.  Admission $3 on Friday and $0 
  on Saturday.
* Enjoy the community spirit of the Ultimate-sponsored 10-10 event,
  but please behave responsibly.

#### HPMOR

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

Repetition: We know some forms: 

* `map`, which repeats a procedure for each element of a list
* Write the same code again and again and again
* `image-variant`, which repeats a procedure on every pixel in an
  image
* `image-compute`, which repeats a procedure at every x-y coordinate

Some Challenges
---------------

Welcome to GrinCo

* Employees (even managers) look to the "Instruction Guide" for how
  to accomplish any task
* Most employees have moderately smart assistants
* Employees can do the following operations:
    * Take the car of the list
    * Examine the car of the list
    * Determine if the list is empty
    * Pass the cdr of the list to their assistant, and ask the assistant
      to do anything (legal and moral) with the cdr
    * Arithmetic, comparison, etc.

Given list L and person P, is person P on list L

        If the list is empty
          Say "no"
        Otherwise, If the car of the list is P
          Say "yes, P is on list L" (#t)
        Otherwise
          Pass the cdr to your assistant and ask him/her/zir if P is
          in the list
          Say whatever your assistant says

Given list L, determine how many cards are in list L

        If the list is empty
          return 0
        Otherwise
          Ask the assistant to count the cdr
          Add 1 to whatever your assistant says

Given list L, determine how many cards are in list L contain the letter A

        If the list is empty
          return 0
        Otherwise, if the car of the list contains 'a'
          Ask the assistant to count the number of people in cdr
            that contain 'a'
          Add 1 to whatever your assistant says
        Otherwise
          Ask the assistant to count the number of people in cdr
            that contain 'a'
          Use your assistant's work as is

Recursion: Key Ideas
--------------------

* Start with a problem.
* Simplify it slightly.
* Assume someone else can solve the simpler version
* Do something with that simpler solution.
* In cases where it's simple enough, don't pass it on, just answer
  the question
* Computers are smart enough to be their own assistant

        If it's simple enough to solve immediately
          solve it immediately
        Otherwise
          simplify the problem
          solve the simplified problem
          do something with the result

* In Scheme, we will use nesting to do the "simplify/solve/do something"

Expressing recursion in Scheme
------------------------------

        If the list is empty
          Say "no"
        Otherwise, If the car of the list is P
          Say "yes, P is on list L" (#t)
        Otherwise
          Pass the cdr to your assistant and ask him/her/zir if P is
          in the list

        (define contains?
          (lambda (lst value)
            (cond
              [(null? lst)
               #f]
              [(equal? (car lst) value)
               #t]
              [else
               (contains? (cdr lst) value)])))
               
        If the list is empty
          return 0
        Otherwise
          Ask the assistant to count the cdr
          Add 1 to whatever your assistant says
            
        (define number-of-items
          (lambda (lst)
            (if (null? lst)
                0
                (+ 1 (number-of-items (cdr lst))))))

        ; count the number of times value appears in the list
        (define count-equal
          (lambda (lst value)
            (cond
              [(null? lst)
               0]
              [(equal? (car lst) value)
               (+ 1 (count-equal (cdr lst) value))]
              [else
               (count-equal (cdr lst) value)])))
          
Amazingly, our code seems to work.

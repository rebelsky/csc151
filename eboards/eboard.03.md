CSC151.02 2014S, Class 03: An Introduction to Scheme
====================================================

_Overview_

* Preliminaries.
    * Admin.
    * Assignments.
    * Questions.
* A bit about the course.
* Very little Scheme.
* Lab.
* Debrief.

Preliminaries
-------------

### Admin

* Welcome to our new mentor, Helen D!
* Yes, I'll take attendance again.
    * And please make sure to preface your comments/questions with
      your name.
* I got over 200 email messages from students on Tuesday.  
    * (Yes, it's my fault for having students submit homework via email.)  
    * So that I can navigate my inbox, It's very important to me that you 
      take the time to title your email messages correctly.
    * I plan to go over your HW1 over the weekend.
* Sorry for forgetting to update the link to the current reading.  I hope
  you found it in the syllabus.
* We will have a quiz on Friday.  (Parts of an algorithm; A bit of Scheme)
* Extra credit: Thursday extra on summer research in CS, Thursday @ 4:30 
  in Noyce 3821.
* Extra credit: CS Table Friday at noon in the Day PDR in the Marketplace.
  The topic is "3D Printing (of Body parts)"
* Extra credit: Theatre Gigante on Friday.  Some piece on Spaulding Grey.

### Support Infrastructure

* Class mentors
* Tutors most nights (see purple sheet)
* Mentor sessions Thursday night, 7-8, 9-10
* Weekly review session, Thursday 2:15-3:05 (*may* move)
* I will have a review session at 2:15 p.m. tomorrow.  
    * While I don't expect to have anyone show up, I thought it would be
      good to get started on the weekly review sessions.

### Homework

* There are two readings for Friday's class, one on numbers and one on
  symbolic values.
* The first real homework assignment has been posted.  It will require
  some knowledge from Friday's class, but it might be worth looking at.
     * I will be assigning homework partners on Friday.
* Today's lab writeup, Extra problem 2  
     * Due before class on Friday
     * Email subject: CSC 151.02 Writeup 1: Starting Scheme (YOUR NAME HERE)
     * Email subject: CSC 151.02 Writeup 1: Starting Scheme (Kim Spasaro and Toby Baratta)
     * You can, but need not, write up the lab with your partner.
     * Due "two days" later.

### Questions

A bit about the course
----------------------

* Goals
    * Help you learn about CS: Algorithms, Data Structures etc.
       * Write your own
       * A few classics
    * Make you a better problem solver
    * Some programming skill applicable to many domainsa
    * Skills beyond CS - Group work and more
* Differences
    * Methodology - Learn by doing, not listening
    * Different way of thinking

Very little scheme
------------------

* Design algorithms
* Put them into play
   (+ 2 3)a
    * "Open paren, name of procedure, space arguments close paren"
    * (define sqrt171 (sqrt 171))

Lab
---

Important keystrokes:

<Esc> then P : Bring back the previous expression
<Ctrl>-up-arrow : Bring back the previous expression

Using max:

    (max val1 val2 val3) => the largest of the three values
    (max 7 1 2 6 5) => 7


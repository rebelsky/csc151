CSC151.02 2014S, Class 04: Computing with Symbols and Numbers
=============================================================

_Overview_

* Preliminaries.
    * Admin.
    * Questions.
    * Quiz.
* Lab.

Preliminaries
-------------

### Admin

* I sometimes forget to update links and lists of files (e.g., the link
  to the current reading).
    * Links are in the schedule.
    * Let me know if links seem to be missing.  ALL CAPS EMAIL is fine.
* No attendance.  I'll just ask names as I go.
* I think I've responded to all of the lab writeups I received by 9pm  on
  Thursday night.  (If you sent it later, I'll get to it this weekend.)
    * Please send lab writeups to me.  Your graders don't need to see
      them.
* There are some useful notes in the eboard from yesterday's extra class.
* We'll be moving the extra session to 3:15 on Thursdays.  I hope that's
  okay.  (I'll be playing with timing a bit.)
* Thursday mentor sessions moved to 7:00 rather than 7:30.
* Partner assignments over the next few weeks will be a chance for you
  to learn a bit about the kind of groups you prefer to work with
     * Same-sex group vs Mixed-sex group
     * Similar confidence levels vs Mixed confidence levels
     * Other criteria you want to suggest
* Extra credit: 
     * Theatre Gigante on Friday.  Some piece on Spaulding Grey.  Yes, 
       tickets are still available.
     * Thursday at 4:15: Spencer Liberto, Lea Marolt Sonnenschein, and 
       Daniel Torres on Ushahidi and more.
     * Others?

### Upcoming Work

* The first real homework assignment has been posted.  
     * You have assigned partners for the homework, which are posted today.
     * We'll give time for you to find your partners.
     * I may have to update the list as we get adds and drops.  (In most
       cases, there are three people, so the group can drop to two.)
* Reading for Monday: Drawings as values.  Our first experience in using
  images as a data type.
* Today's lab writeup, Extra problem 1  
     * Due before class on Monday.
     * Email subject: 
       CSC 151 Writeup 2: Numeric Computation (YOUR NAME(s) HERE)
     * You can, but need not, write up the lab with your partner.

### Questions

* Today: Work with anyone.  Monday, assigned partners.
* Students need to work on being more vocal in class.

### Quiz

* Ten minutes
* If you finish early, feel free to start on the lab

Lab
---

_Why do we get really weird numerators and denominators for simple things like
0.1?_

> Scheme represents every decimal number as a sum of values of the form 1/2^k
  * So, 1/10 = 1/16 + 1/32 + 1/256 + ....
  * When we simplify, we get some silly numerator and denominator.  
  * In this case something like 25/256.
  * As we get more accurate in our estimate, the larger the numerator and 
    denominator get.

_Help me think about modulo.

> Answer 1: It's like remainder, except for negative numbers.  For negative numbers
  add modulus

  (remainder -7 8) -> -7
  (mod -7 8) ->  1

> Answer 2: See today's outline, there's a pretty picture.



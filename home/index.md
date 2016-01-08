Front Door
==========

Introduction
------------

Welcome to the Fall 2015 section of Grinnell College's CSC
151, *Functional Problem Solving*, which is described relatively briefly
in the official [blurb](../handouts/blurb.html).  My own take on this
course is that we'll be starting to develop your knowledge of computer
science and *algorithmic problem solving*.  We will be using Scheme as
our development language, which gives us the abililty to use functional
approaches (as well as imperative and object-oriented approaches).
As in all Grinnell classes, we'll also be working on general skills,
from group work to "thinking on your feet".

In both sections of the course, we will be emphasizing *media computation*
- the application of algorithmic problem solving techniques to media.
We will particularly emphasize algorithms for creating and manipulating
images.

*CSC 151 requires no prior knowledge of computer science or computer
programming*.  We'll teach you everything we want you to know.  It's okay
if you have some experience (although at times it may put you at a
disadvantage - we do things differently), but it's clearly not necessary.

In an attempt to provide up-to-date information, and to spare a few
trees, I am making this as much of a "paperless" course as I can.  Hence,
materials will be in a course web.  If you are puzzled by the organization
of the Course Web, browse a bit and then ask me.  If you find that you
want paper copies of pages, please read the notes on printing copies.
If you find that you are regularly printing pages, let me know and I
can provide them for you.

Important Warnings
------------------

*Warning!*  Experience shows that CSC 151 exercises different parts of
your brain than other courses, even than math courses.  In general,
such exercise is a good thing - one of the key points of a liberal arts
education is that it exercises different parts of your brain.  However,
it may take a bit of time to get these new parts of your brain into shape.
Expect a few difficult times, but have confidence that you can get through
them and that you'll come out of the course with much more knowledge.

*Warning!*  Computers are sentient, stupid, and malicious.  When things
go wrong, don't blame yourself.  Ask me, a tutor, or the class mentor
for help.

*Warning!*  We are using some cutting-edge software, which means that
things will occasionally crash for no good reason.

*Warning!*  I am teaching three new courses this fall (in addition to CSC 151)
and serving as department chair.  I have instituted a wellness schedule:
Except on weeks in which I have an exam to grade, I am limiting myself to
two hours of evening work and five hours of weekend work.

*Warning!*  Nationwide, computer science is one of the highest reporters
of academic honesty issues.  Please make sure that you understand both
[the CS department's policy on academic honesty](http://www.cs.grinnell.edu/academic-honesty-policy)
and 
[the course policy on academic honesty](../handouts/academic-honesty.html).

Basics
------

*Meets*: MTWF 10:00-10:50 (morning section) in Science 3813.
Optional review sessions with SamR, Thursdays, 10:00-10:50, Science 3813.
Optional review sessions hosted by the class mentors TBD.

*Instructor*: 
[Samuel A. Rebelsky](http://www.cs.grinnell.edu/~rebelsky/)
[[rebelsky](mailto:rebelsky@grinnell.edu)],
Science 3824.  641-269-4410 (office).  641-990-2947 (cell).  
Office hours:  TBD.
I also tend to follow an open door policy: Feel free to stop by when my
door is open or to make an appointment for another time.

*Class Mentors*: 
Morning section: Erin Gaschott and Zachary Segall.  

*Grading* (subject to change):

* Class participation: 10%;
* Regular homework: 10%
* Lab writeups: 10%
* Project: 10%
* Weekly quizzes: 10%
* Exams (4 graded exams plus optional final): 45%
    * Optional final can be taken at 9am on Tuesday, 15 December 2015 or
      2pm on Tuesday, 15 December 2015
* Best of individual work (average quiz grade, average exam grade, final): 5%

The final examination for this course is *optional*.  It can be used as
a makeup for one examination.  I will count the final examination only
if it is higher than your lowest examination, and it will replace the
grade for that examination.  I have not yet received information from
the registrar on the available times for our final examination.

I will drop the grade on one quiz (the quiz with the lowest grade).

More information on grading can be found in the
[grading policies](../handouts/grading.html) page.

*Labs*: 
Computer science 151 is taught in a *collaborative workshop style*.
Each day, you'll work on laboratory problems with other students in
the class.  We may also start or end each class session with a short
lecture/discussion.  Most labs will require short writeups, which you
will normally do with your lab partner.  

*Extra Credit*:
I will often offer one unit of extra credit for attending a specified
academic event (e.g., a computer science talk or College convocation)
or for supporting your classmates in their public endeavors (e.g.,
attending a concert, dance recital, or sporting event).  Each category
is capped at four units of extra credit, which count as one point
toward your final grade.  So, if you attend four academic events and
four peer support events, you will receive an additional two points
toward your final grade.  For any activity you wish to credit this way,
you must send me a short (one paragraph) note about the activity within
two days of the activity.

*Tutoring*:
The CS department makes tutors for CSC 151 (and other courses) available
from 7:00-10:00 p.m. on Sunday through Thursday evening.  We also have
individual and small group tutors available for students who feel that
they would benefit from that extra support.  We generally do not assign
individual tutors until after the first exam and are likely to encourage
students to work with personal tutors in pairs or triplets rather than
individually.

*Good-Faith Grade Guarantee*: 
Because I realize that computer science may require a transition in
the way you think, and different students adapt to that transition at
different rates, in CSC 151 I reward effort as well as outcome.  Hence,
students who make a "good faith" effort in this class will pass the class,
with at least a C+.   A good-faith effort includes missing no more than
two classes, turning in every homework assignment and at least 95% of the
laboratory writeups, and spending the requisite time on each examination.
A good-faith effort also includes following the course policies.

*Class Software*:
For this course, we will be using [DrRacket](http://racket-lang.org) and
[The GNU Image Manipulation Program](http://www.gimp.org), along with
some locally written extensions.  It will be hard to run the software
outside of the Computer Science department's network (or the Math/Stats
department's network).  We recommend that you work in our labs for the
ability to get help.  Since some students have reasons to work away
from our lab, we also provide a [virtual machine](../reference/virtual-machine) that you can run on
most computers.  There are also some other options.  Talk to me for more
information.

*Appropriate Use of Technology*:
A key aspect of Grinnell's culture of self-governance is that we treat
each other with respect.  Because this course includes considerations
of appropriate uses of technology, using technology to harass or
denigrate other people is completely unacceptable and therefore grounds
for immediate failure in this class.

*Printing Pages*:
Most of the pages in the course web are designed for viewing onscreen.
However, I know that there can be value for printing pages and marking
them up; you learn a lot when you read actively.  If you do decide
to print, you should consider printing the document double-sided and
two-up (that is, two pages side-by-side on one physical page) so as
to conserve paper.  When I distribute documents, I will do my best to
distribute them in this form.

Optional Books and Other Readings
---------------------------------

Kelsey, Richard, [Clinger, William](http://www.ccs.neu.edu/home/will/),
and [Rees, Jonathan](http://mumble.net/jar/), eds. (1998).
[*Revised<superscript>5</superscript> Report on the Algorithmic Language
Scheme*](http://www.cs.grinnell.edu/courses/Scheme/r5rs-html/r5rs_toc.html).
February 20, 1998.

> The concise and complete definition of the last concise version of the
Scheme programming language.  (The sixth revised version is the latest
version, but it's is not so concise.)  You won't need to understand all
of it, but you may find it helpful.

Dybvig, R. Kent.  *The Scheme Programming Language*, Fourth
Edition.  Cambridge, MA: The MIT Press.  Available online at
`<http://www.scheme.com/tspl4/>`.  

> A longer and more readable reference on the Scheme programming language.

Rebelsky, Samuel (2015).
[The CS151 2015S Course Web](index.html).

> The hypertext that you are currently reading.  Many of these materials
(particularly those under [Readings](../readings/) and [Labs](../labs/)
are required.  You should make it a point to load the page of the day
at the beginning of each class to check announcements and such.


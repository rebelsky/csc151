Outline 10: Programing the GIMP Tools
=====================================

Held: Monday, 16 September 2013

Back to [Outline 09 - An Introduction to the GIMP](outline.09.html).
On to [Outline 11 - A Design Perspective](outline.11.html).

**Summary**

We continue our synthesis of algorithms and image making as we explore 
techniques for programming with the basic GIMP tools.

**Related Pages**

* Reading: [Programming the GIMP Tools](../readings/gimp-tools-reading.html)
* Lab : [Programming the GIMP Tools](../labs/gimp-tools-lab.html)
* [EBoard](../eboards/10.html) 
  ([Source](../eboards/10.md))
  ([PDF](../eboards/10.pdf))

**Overview**

* A new model of images making.
* Coding algorithms for drawing.
* Other useful techniques.
* Lab.

**Administrivia**

* Study break, tonight at 8pm.
* Grading stuff
    * I finally finished grading HW1.  Sorry for the delay.
    * Our grader has graded HW2 and I'll be returning it and commenting
      on it.
    * I'll be returning Friday's quizzes.  Some of you may want to chat
      with me.  
    * I'll distribute the exam tomorrow.
* Not quite lab writeup (due Wednesday):
    * Document the rectangle procedure from the first lab on drawings.
    * Email to rebelsky@grinnell.edu, 
      subject "CSC 151.02 Lab Writeup: Documentation"
* Reading for Tuesday: 
  [Design and Color](../readings/design-and-color-reading.html)
* EC Opportunities:
    * Convocation this Wednesday (see Sam's rant on the importance of convo
      in the outline for more details)
    * CS Extras Thursday @ 4:30: Kim Spasaro on Linguistics Programming
    * CS Table Friday (Pair programming)
    * Other?
* I also encourage you to attend any of the other Title IX talks/events.

Models of Images
----------------

* As we've seen in our early discussions, there are many ways to think 
  about an image.
* In our first explorations with the GIMP, we looked at an 
  *imperative*, *tool-based* model of drawing.
    * The model is <quote>imperative</quote> in that it consists of a 
    sequence of commands (do this, then this, then this).
    * The model is <quote>tool-based</quote> in that almost all operations
    involve selecting a tool and then applying that tool.
* Over the next few weeks, we'll see a variety of other models.

Encoding Drawing Cmmands
------------------------

* Because there are only a limited number of basic actions one can
  perform in GIMP, it is possible to represent each of these actions
  as a procedure.
* These procedures are *parameterized* in that you can modify
  how they work by providing different input values.
* Many of these procedures change the state of the system.  When procedures
  change things (as opposed to computing new values), we tend to suffix
  their name with an exclamation point.
* For clarity, we tend to prefix the name of a procedure with the kind of
  value it works on.  For example,
    * procedures that modify and create images begin with <code>image-</code>,
    * procedures that modify the global context begin with <code>context-</code>,
    * procedures that modify and create colors begin with <code>color-</code>.
* The primary model we use is to repeatedly select and then stroke or fill
  regions.
* We do not expect you to remember all of these procedure names.
    * One of the flaws of the current strategy for teaching 151 is that
    there are way too many procedures to remember.
* There is (or should be) a convenient reference menu in MediaScheme.
    * There is also a convenient reference section on the Web site.
* If there's something that you want documented, bug me.

Lab
---

* Work on [the lab](../Labs/gimp-tools-lab.html)the lab.
* Be prepared to reflect on some of the questions contained therein.



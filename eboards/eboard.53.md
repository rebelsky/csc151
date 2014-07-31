CSC151.02 2014S, Class 53: Objects in Scheme, Continued
=======================================================

_Overview_

* Preliminaries.
    * Admin.
    * Questions.
* Objects, revisited.
* Building a four-way switch.
* Lab.
* Reflection.

Preliminaries
-------------

### Admin

* Exam 3 returned.
    * If you neglected to write "There's more to life than CS" and you met the
      criteria, please talk to me after class.
    * Reminder: There are few benefits for comparing exam scores.
* Today: Finish learning object basics.
* Tomorrow: Files.
* Wednesday: Wrapup and evaluate.
* Friday (optional class): Go over exam 3, prepare for final.
* Grading done: Exams, some quizzes.
* Grading to go: Projects, more quizzes, lots of daily writeups, extra credit.
    * Expect grades on Wednesday
    * Extra credit is supposed to be within three days of the event.  You can
      try submitting it until 5 pm on Friday of finals week.
        * Please do not submit extra credit while you are at block party

### Upcoming Work

* No more homework.
* Reading for Tuesday: [Files in Scheme](../readings/files-reading.html)
* No lab writeup.

### Extra Credit

* Orchestra Wednesday, 7:30 pm.
* Pub quiz Wednesday at 9 pm, the normal stuff.
* CS Table Friday: Informal chat.
* Improv at a time to be improvised.
* Neverland study break NEXT Tuesday at 9 or something.

### Questions

* Will your son put the mutant 2048 on the Interweb?

Objects, revisited
------------------

* Object encapsulate procedure and stuff
   * Hides the underlying representation of the data
   * Represent information in an implicit way, rather than explicitly
* How do we achieve encapsulation
   * Procedures have a vector that stores the information and that they change
* Instead of calling procedures on objects, we send them messages

<pre>
;;; Procedure:
;;;   make-switch
;;; Parameters:
;;;   [None]
;;; Purpose:
;;;   Creates a new switch in the off position.
;;; Produces:
;;;   newswitch, a switch
;;; Preconditions:
;;;   [None]
;;; Postconditions:
;;;   newswitch is an object which responds to two messages:
;;;     :get-position
;;;       Shows the current position ('on or 'off)
;;;     :toggle!
;;;       Switches the current position
(define make-switch
  (lambda () ; Accept NO parameters.  Each time you call it, builds a new objects.
    (let ((state (vector #f)))   ; All switches are off when manufactured.
       ; This state vector stores the information for our switch/it is the
       ; encapsulated data.  The association object/function keeps this state
       ; and can access it and modify it.
      (lambda (message) ; Accept one message
        (cond  ; Figure out what message it is
          ((eq? message ':type)
           'switch)
          ((eq? message ':->string)
           (string-append "#<switch>(" 
                          (if (vector-ref state 0) "on" "off")
                          ")"))
          ((eq? message ':get-position) 
           (if (vector-ref state 0) 'on 'off))
          ((eq? message ':toggle!) 
           (vector-set! state 0 (not (vector-ref state 0))))
          (else 
           (error "#<switch>: unrecognized message" message)))))))
</pre>

Big picture:

* Vector to hold data
    * Design issue: How do we represent our data?
* Handle messages with (lambda (message) (cond ...))
    * Default is error message
    * What messages do we handle?
    * What instructions?
    


Building a four-way switch
--------------------------

Reflection
----------


Outline 50: Objects in Scheme
=============================

Held: Tuesday, 3 December 2013

Back to [Outline 49 - File Basics](outline.49.html).
On to [Outline 51 - Objects in Scheme, Continued](outline.51.html).

**Summary**

We begin to explore *objects* in Scheme.  Objects encapsulate data and
the procedures that work with those data.

**Related Pages**

* Reading: [Objects](../readings/objects-reading.html)
* Lab: [Objects](../labs/objects-lab.html)
* [EBoard](../eboards/50.md) 
  ([Source](../eboards/50.md))
  ([HTML](../eboards/50.html))
  ([PDF](../eboards/50.pdf))

**Overview**

* Motivating problems: Circles, turtles, and counters.
* Building and using compound values.
* Objects: A new approach to compound values.
* Creating objects in Scheme.

**Administrivia**

* I will reserve time for questions on [The Project](../assignments/project.html).
* I will reserve time for questions on [Exam 3](../assignments/exam.03.html).
* Final lab writeup!  (Due Friday)
  CSC151.02 Lab Writeup 31: Objects (Your Name Here)
* Some of you might find this interesting
  <https://github.com/kyledreger/1000-nights>
* Upcoming extra credit opportunities:
    * It's December.  Does anyone want to share their NaNoWriMo work with 
      their peers?
    * Any self-care week activity.
    * _One Grinnell_ rally on December 4 at 4pm (unless you are taking photos).
        * And yes, I've sent a note to Dean Arora about the scheduling.
    * Basketball Wednesday at 5:00.
    * Learning from Alumni Thursday at 2:15: Erik Hanson (in person)
    * CS Extras Thursday at 4:30: Summer Opportunities in CS
    * CS Table Friday: TBD.
    * Swim meet Friday/Saturday.

Motivating Problems
-------------------

* Suppose we want to make a drawing composed of a lot of circles.
  How should we represent the circles?
* How might we implement a counter to keep track of the number
  of times we do procedure calls?
* How might we implement turtles?

Compound Values
---------------

* We've seen two ways to represent such compound values.
    * As a list
    * As a vector
* Once we've chosen a representation, we then build a set of procedures
  that work with that representation.
* As we've seen in our experiments with representing compound
  values, there are strengths and weaknesses to simply choosing
  a representation and writing procedures to work with that
  implementation.
* Strengths: Access parts by procedure; Relatively easy to use.
* Weaknesses: Not fully encapsulated; hard to separate core
  operations from external operations (since they're called
  the same way); hard to limit access.

Objects: Encapsulating Values and Operations
--------------------------------------------

* In the late 1960's, some computer scientists decided to extend
  the idea of representing data into something they call an
  *object*
* Objects group data.
* Objects also do things.
* You can't directly access the parts of an object.
* Rather, you ask the object to do things or tell you things using their
  internal state.
* The requests you send to objects are called *messages*.
* Traditional objects also provide a number of other advantages.  
  Nonetheless, we'll focus on encapsulation.

Objects in Scheme
-----------------

* Standard Scheme doesn't include objects as a built-in type.  Hence, we
  have to implement them ourselves.
    * And, even if some newer variants of Scheme, like Racket, include
      objects, there's a benefit to thinking about how to implement them
      yourself.
* The approach that we recommend is that you implement objects as
  procedures that take a *message* as a parameter.
* Traditionally, the messages begin with a colon.
* Here's a simple object that will respond when you greet it or
  leave it.
<pre>
(define greeter
  (lambda (message)
    (cond 
      ((eq? message ':enter) (display "Hello") (newline))
      ((eq? message ':leave) (display "Goodbye") (newline))
      (else (error "Unknown Message")))))
</pre>
* Here's how we use it
<pre>
&gt; <kbd>(greeter ':enter)</kbd>
<schemeout>Hello</schemeout>
&gt; <kbd>(greeter ':leave)</kbd>
<schemeout>Goodbye</schemeout>
&gt; <kbd>(greeter ':sleep)</kbd>
<schemeout>Unknown Message</schemeout>
</pre>

Adding State
------------

* But how do we have an object keep track of information about itself?
* We build a local symbol table that is only accessible to the
  procedure.  
* We can build such a table by putting a <code>let</code>
  *outside* the <code>lambda</code> for the procedure.
<pre>
(define fixed-value
  (let ((value 5))
    (lambda (message)
      (cond
        ((eq? message ':get) value)
        (else (error "fixed-value:" "unknown message"))))))
</pre>
* Typically, we use vectors to encapsulate our state because
  we know how to mutate vectors.
<pre>
(define incrementable-value
  (let ((value (vector 0)))
    (lambda (message)
      (cond
        ((eq? message ':get) (vector-ref value 0))
        ((eq? message ':add1!)
         (vector-set! value 0 
                      (+ 1 (vector-ref value 0))))
        (else (error "fixed-value:" "unknown message"))))))
</pre>
* And an example of its use
<pre>
&gt; <kbd>(incrementable-value ':get)</kbd>
<schemeresult>0</schemeresult>
&gt; <kbd>(incrementable-value ':add1!)</kbd>
&gt; <kbd>(incrementable-value ':get)</kbd>
<schemeresult>1</schemeresult>
</pre>

Lab
---

* Begin the [lab on objects in Scheme](../labs/objects-lab.html).
* Plan to continue that lab tomorrow.


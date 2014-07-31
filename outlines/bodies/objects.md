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
        [(eq? message ':get) value]
        [else (error "fixed-value:" "unknown message")]))))
</pre>
* Typically, we use vectors to encapsulate our state because
  we know how to mutate vectors.
<pre>
(define incrementable-value
  (let ((value (vector 0)))
    (lambda (message)
      (cond
        [(eq? message ':get) 
         (vector-ref value 0)]
        [(eq? message ':add1!)
         (vector-set! value 0 
                      (+ 1 (vector-ref value 0))))
        [else (error "fixed-value:" "unknown message")]))))
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
* Plan to continue that lab next class.

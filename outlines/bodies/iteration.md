Types of procedures and evaluation order
----------------------------------------

* This is a short chance to reflect on what we've been doing with
  some aspects of Scheme.
* The first few procedures we learned, like `square` or `*` or
  even `drawing-vscale` had a few important properties:
    * They left their arguments unchanged
    * Even if applied to the same argument, it doesn't matter which
      order we do the computation (other than inside-out)
* With both the gimp tools and turtles procedures, procedures are
  a bit different.
    * They are likely to change their arguments.  For example, if we
      move a turtle forward, it is now at a new location.
    * Because operations change state, the order in which the operations
      are applied to the same object does make a difference.

Repetition and Map
------------------

* `map` allows us to repeat operations.
* However, you don't know the order in which the operations are applied.
  (On some machines, they are even done in parallel.  Certainly, when
  Amazon and Google use their map-reduce technology, they want things
  done in parallel.)
* So it doesn't make sense to use `map` with side-effecting operations,
  unless you're feeling lucky.
* What's the alternative?  We can use `for-each`.  It's almost exactly
  like `map`, except that
     * Order is guaranteed
     * You're not building a list
* What if you want to build a list and guarantee the order?  Some
  implementation of Scheme include a variant of `map` called
  `mapcar`.  And you'll soon learn how to implement that yourself.

Another approach to this material
---------------------------------

_This is the approach I used to use for this material.  I've kept it in
the eboard for historical reasons (and because I may want to go back)._

### The Problem: Making Spirals

* We ended the turtles lab trying to make spirals.
* Basically, you need to move forward a little and turn a little
* Three possible strategies:
    * Move the same amount each time and turn the same amount each time
    * Move a little more each time, and turn the same amount each time
    * Move the same amount each time, and turn a different amount each
    time
* The first strategy procedures a circle, and is possible to do with
  `repeat`.  
* The other two strategies seem difficult to do without a *lot* of 
  hand coding.

### The `for-each` Function

* We'd like to use `map`, but there are two problems.
    * Officially, you don't know the order in which the function is
      applied when you do a `map`; it could be first to last,
      it could be last to first; it could be all at the same time.
    * We get back a list, which we really don't need.
* Scheme provides `for-each` for situations like this.
* Like `map`, but for sequences of actions.
    * `for-each` is guaranteed to work in order.
    * `for-each` doesn't return anything.

Lab
---

* Do the lab.
* Be prepared to reflect.

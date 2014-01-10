Lists
=====

* Lists are a core aspect of Scheme and LISP.
* Lists are ordered collections of information.
* Dynamic: Lists can "grow" and "shrink" 
  + Or at least you can build larger or smaller lists from
    other lists.
* Lists are *pure*: You build new lists from old; you don't modify
  the previous list.
* Lists look a lot like procedure application (intentionally).
* The simplest list: the empty list is `null` or 
  `()`.
* You extend lists at the front (or, more precisely, build
  new lists) with 
<pre>
(cons *thing-for-the-front* *rest-of-the-list*)
</pre>
* For example,
<pre>
&gt; (cons 'a null)
(a)
&gt; (cons 'b (cons 'a null))
(b a)
</pre>
* You can also create lists with `list`.
<pre>
&gt; (list 'a 'b 'c)
(a b c)
</pre>
* You extract parts of lists with three operations (we'll reflect on
  the naming later in the semester):
  + `car`: get the initial element of the list.
  + `cdr`: get all but the initial element of the list.
  + `list-ref`: get the ith element of the list.
* One disadvantage: Scheme lists look a lot like procedure
  applications, so it's sometimes hard for beginning programmers
  to tell what's going on.
  + You can always tell by context, but it takes some time to
    get used to the context.
* We'll look at some behind-the-scenes issues in a few weeks.

Spot Lists
==========

* Goal: Design our own implementation of images.
* Starting point: Little spots on the screen.
* Idea: Represent the spot as a list.
* Followup idea: Represent an image as a list of spots.
* Today we'll focus on the first of the two ideas.
* Later (in a week or so), we'll look at how you deal with lists of spots.


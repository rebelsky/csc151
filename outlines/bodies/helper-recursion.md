Basics of Helper Recursion
--------------------------

* Write a helper procedure to do the real recursion
    * Typically has an extra parameter to accumulate partial results
* A few benefits
    * Sometimes clearer
    * Sometimes more efficient
    * Sometimes easier to get correct

Tail Recursion
--------------

* Note that the two forms of recursion we've seen (direct recursion and
  helper recursion) have a somewhat different post-recursion step
    * In the first kinds of recursive procedures we wrote, there's still
      work to do after the recursive call finishes.
    * In the helper-recursion procedures, once we're done with the recursive
      call, the result is ready; it requires no further processing (at least
      not within the helper).
* It turns out that there are particularly efficient ways to implement
  recursive procedures that do not further process recursive results.
* Because of this efficiency, we have a special term for such procedures.
  We call them *tail-recursive procedures*.  
* If all the recursive calls are the last operation of a procedure (that is, the
  "tail" of the procedure), then we say that the procedure
  is tail recursive.
    * If some work may be required after one of the recursive calls, then we
    say that the procedure is not tail recursive.

Clarity in Tail Recursion
-------------------------

Some programmers find tail recursion much easier to understand.  It's
certainly easier to chart.  And that may make it easier to design.
We can also keep track of what's going on a bit better.

Let's do an example: Let's count the number of bright colors in a
list.

What should we keep track of along the way?

* The elements of the list we haven't examined yet.
* The count of the bright colors we've already seen.

When are we done?

* When there's nothing left in the list.

What do we return?

* The count.

What do we do in other situations?

* ...

Note: For whatever reason, I see some students who find tail recursion
very natural and standard recursion confusing, and some students who find
standard recursion confusing and tail recursion natural.  I'll push you to
work on both.

Old Notes
---------

_These are from a previous time I taught the class.  I leave them around
for historical reasons._

### Delayed Evalution in Recursive Procedures

* A number of you have noted that recursion, as written, builds up a
  bunch of stuff to evaluate.
* For example, if we're summing the list `'(2 3 5 7 11 13)`, we end up with <br>
  `(+ 2 (+ 3 (+ 5 (+ 7 (+ 11 (+ 13 (sum ())))))))` <br>
  before we start doing the addition.
* Similarly, in selecting only the names of dark colors from a list, we 
  might end up with <br>
  `(cons "black" (cons "darkblue" (cons "darkgrey" (select-dark ()))))` <br>
* Once we get to the base case of the recursion, we can then start to build
  up the actual result.
* Some people find the delayed evaluation natural, others find it awkward.
* For the latter group, we look for a strategy that helps us evaluate
  partial results along the way.

### Helper Recursion

* The model that we call *helper recursion* (and that many of our
  colleagues call "tail recursion") adds an extra parameter
  to the recursive procedure
    * That extra parameter carries along partial/intermediate results
* For example, in summing the list (2 3 5 7 11 13), we might have
<pre>
  partial-sum            unexplored-elements
  0                      (2 3 5 7 11 13)
  2                      (3 5 7 11 13)
  5                      (5 7 11 13)
  8                      (7 11 13)
  15                     (11 13)
  26                     (13)
  39                     ()
</pre>
* When we run out of elements, we can use the intermediate result as
  our final result
* However, there's a small problem with this strategy: When a client makes the
  *first* call to the procedure, they won't necessarily understand the
  purpose of the extra parameter.
    * Hence, we make the modified procedure a helper to the top-level
    procedure. 
    * The top-level procedure is responsible for filling in the extra
    parameter of the helper.


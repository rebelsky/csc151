Notes on Exam 3, Problem 6
==========================

Let's start with the original procedure:

<pre>
(define tree-balanced-v0?
 (lambda (tree)
   (if (pair? tree)
       (let ([left-depth (tree-depth (car tree))]
             [right-depth (tree-depth (cdr tree))])
         (and (= left-depth right-depth)
              (tree-balanced-v0? (car tree))
              (tree-balanced-v0? (cdr tree))))
       #t)))
</pre>

First, we observe that if the new `tree-balanced?` returns the depth
for balanced trees, then we can probably use it instead of tree-depth.

<pre>
(define tree-balanced?
 (lambda (tree)
   (if (pair? tree)
       (let ([left-depth (tree-balanced? (car tree))]
             [right-depth (tree-balanced? (cdr tree))])
         (and (= left-depth right-depth)
              (tree-balanced? (car tree))
              (tree-balanced? (cdr tree))))
       #t)))
</pre>

Next, we observe that there are identical pairs of calls to
`tree-balanced?`.  We've seen in the past that doing identical calls
leads to inefficiency.  Since we've named the results of the first
first of each pair of identical calls, we can just use that name in 
the second place.

<pre>
(define tree-balanced?
 (lambda (tree)
   (if (pair? tree)
       (let ([left-depth (tree-balanced? (car tree))]
             [right-depth (tree-balanced? (cdr tree))])
         (and (= left-depth right-depth)
              left-depth
              right-depth)
       #t)))
</pre>

Okay, we're making progress.  But we're not there yet.  Right now, our
code is a bit broken.  It clearly doesn't return depths, even though we're
assuming it will.  It may return Boolean values (as part of the design),
which means that `(= left-depth right-depth)` is dangerous.  

Let's start with the tests.  For it to be balanced, we need the left
subtree to be balanced, the right subtree to be balanced, and the two
to have the same depth.  Fortunately, Scheme treats anything other than
false as true, so we can just use `left-depth` for "Is the left subtree
balanced?" and `right-depth` for "Is the right subtree balanced?"  If
they are both balanced, using `=` to compare them is fine.  So we just
have to rearrange a bit.

<pre>
(define tree-balanced?
 (lambda (tree)
   (if (pair? tree)
       (let ([left-depth (tree-balanced? (car tree))]
             [right-depth (tree-balanced? (cdr tree))])
         (and left-depth        ; left subtree is balanced
              right-depth       ; right subtree is balanced
              (= left-depth right-depth)))
       #t)))
</pre>

But we still need to return numbers that represent the depth.  There are 
two cases: In the base case, the depth is 0.  In the other case, if it's
balanced, then the depth is one more than the depth of either subtree
(since they have the same depth, it doesn't matter which one).  We
could explicitly do the test, as in the following version.

<pre>
(define tree-balanced?
 (lambda (tree)
   (if (pair? tree)
       (let ([left-depth (tree-balanced? (car tree))]
             [right-depth (tree-balanced? (cdr tree))])
         (if (and left-depth        ; left subtree is balanced
                  right-depth       ; right subtree is balanced
                  (= left-depth right-depth))
             (+ 1 left-depth)
             #f))
       0)))
</pre>

This solution is fine.  However, we can also take advantage of the
design of `and`, which returns `#f` if any of its arguments is false
and the value of its last argument is true, and condense the tests
into the `and`.

<pre>
(define tree-balanced?
 (lambda (tree)
   (if (pair? tree)
       (let ([left-depth (tree-balanced? (car tree))]
             [right-depth (tree-balanced? (cdr tree))])
         (and left-depth        ; left subtree is balanced
              right-depth       ; right subtree is balanced
              (= left-depth right-depth)
              (+ 1 left-depth)))
       0)))
</pre>

There are certainly other ways to phrase or develop this procedure. 
But starting with a working procedure and evolving it into the new
procedure seemed like a good approach.

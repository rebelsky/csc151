Notes on Exam 3, Problem 9
==========================

There are a variety of ways to approach this problem.  We'll start
with a straightforward but somewhat verbose versoin.

What do we know?  

* For the base case, `(nest fun 1)` should return `fun` (or, for the
  more verbose among us, `(lambda (val) (fun val))`.
* For the recursive case, we have `(nest fun n)`.  Let's suppose we
  commput `(nest fun (- n 1))` and call that `f`.  `f` nests `n`-1
  copies of `fun`, so we want to create a function that, given a 
  value, `val`, applies `f` and then applies `fun` to the result.

Putting this all together, we get the following procedure.

<pre>
(define nest
  (lambda (fun n)
    (if (= n 1)
        (lambda (val) (fun val))
        (let ([f (nest fun (- n 1))])
          (lambda (val) (fun (f val)))))))
</pre>

Some folks may note that we have two identical `lambda` statements and
rewrite this as

<pre>
(define nest
  (lambda (fun n)
    (lambda (val)
      (if (= n 1)
          (fun val)
          (let ([f (nest fun (- n 1))])
            (fun (f val)))))))
</pre>

If we find we're defining a function and only using it once, there's
no reason to define it.  We can just plug in the definiens.

<pre>
(define nest
  (lambda (fun n)
    (lambda (val)
      (if (= n 1)
          (fun val)
          (fun ((nest fun (- n 1)) val))))))
</pre>

However, for most people, that's kind of hard to read.  So let's start
over again.

* `(nest fun 1)` should just be `fun`.
* To compute `(nest fun n)`, we need to compute `(nest fun (- n 1))`,
  which we'll call `f`.  We want a function  that applies `f` (which applies
  `fun` `n`-1 times) and then applies `fun` more time.  But we know how
  to apply a function and then another function, we use function
  composition, typically represented as `o`.

Putting it all together, we get

<pre>
(define nest
  (lambda (fun n)
    (if (= n 1)
        fun
        (o fun (nest fun (- n 1))))))
</pre>

Now, we have not yet added a husk to this kernel.  Hence, it will do 
all sorts of strange things if, say, we give it a non-integer or an
integer less than 1 for the `n` parameter.  And it will do even stranger
things if we give it something other than a unary procedure for `fun`.
We know how to test for positive integers.  We know how to test for
procedures.  However, there's no easy way to test for unary procedures,
so we'll just check whether or not `fun` is a procedure and cross our
fingers.

<pre>
(define nest
  (lambda (fun n)
    (cond
      [(or (not (integer? n)) (< n 1))
       (error "nest expects a positive integer for parameter 2, given " n)]
      [(not (procedure? fun))
       (error "nest expects a procedure for parameter 1, given " fun)]
      [else
       (letrec ([kernel (lambda (n)
                          (if (= n 1)
                              fun
                              (o fun (kernel (- n 1)))))])
         (kernel n))])))
</pre>





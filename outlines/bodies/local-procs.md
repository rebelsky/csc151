Husk and Kernel Programming
---------------------------

* Particularly for recursive procedures, it is inefficient to check
  preconditions at every recursive call
    * If the preconditions were met for the first call, they should be
    met for every subsequent call.
* Hence, programmers tend to use what I refer to as "Iowa's Great
  Contribution to Programming": The Husk-and-Kernel approach
    * The husk checks the preconditions and, if all preconditions are met,
    calls the kernel.
    * The kernel does the real work.
* Corn serves as the metaphor: The husk protects the kernel, and the
  kernel is the valuable part.
    * And no, Husk-and-Kernel programming was not invented in Iowa.

Local Procedure Bindings
------------------------

* Today's class will focus not on something new, but on a better way to do something old: Define helper procedures.
* We frequently want to define procedures that are only available to certain other procedures (typically to one or two other procedures).  
*  We call such procedures *local procedures*
* Most local procedures can be done with `let` and `let*`.
* However, neither `let` nor `let*` works for recursive procedures.
* When you want to define a recursive local procedure, use `letrec`.
* When you want to define only one, you can use a variant of `let` called "named let".

`letrec`
-------------------

* A `letrec` expression has the format
<pre>
(letrec ([*name<sub>1</sub>* *exp<sub>1</sub>*]
         [*name<sub>2</sub>* *exp<sub>2</sub>*]
         ...
         [*name<sub>n</sub>* *exp<sub>n</sub>*])
  *body*)
</pre>
* A `letrec` is evaluated using the following series
  of steps.
    * First, enter `*name<sub>1</sub>*` through
    `*name<sub>n</sub>*` into the binding table.
    (Note that no corresponding values are entered.)
    * Next, evaluate `*exp<sub>1</sub>*` through
    `*exp<sub>n</sub>*`, giving you results
    `*result<sub>1</sub>*` through 
    `*result<sub>n</sub>*`.
    * Finally, update the binding table (associating
    `*name<sub>i</sub>*` and 
    `*result<sub>i</sub>*` for each
    reasonable *i*.
* Not thate its meaning is fairly similar to that of `let`, except
  that the order of entry into the binding table is changed.

Named `let`
----------------------
* Named `let` is somewhat stranger, but is handy for
  some problems.
* Named `let` has the format
<pre>
(let *name* 
  ((*param<sub>1</sub>* *exp<sub>1</sub>*)
   (*param<sub>2</sub>* *exp<sub>2</sub>*)
   ...
   (*param<sub>n</sub>* *exp<sub>n</sub>*))
  *body*)
</pre>
* The meaning is as follows:
    * Create a procedure with formal parameters 
    `*param<sub>1</sub>*` ... 
    `*param<sub>n</sub>*` 
    and body `*body*`.
    * Name that procedure `*name*`.
    * Call that procedure with actual parameters
    `*exp<sub>1</sub>*` through
    `*exp<sub>n</sub>*` .
* Yes, that's right, we've packaged together the procedure definition
  and the procedure call.
* In effect, we're just doing
<pre>
(letrec ((*name* (lambda (*param<sub>1</sub>* ...
*param<sub>n</sub>
*)
                  *body*)))
   (*name* *val<sub>1</sub>* ... *val<sub>n</sub>*))
</pre>

An Example
----------

* As an example, let's consider the problem of writing `reverse`.
* A first version, without local procedures
<pre>
(define reverse
  (lambda (lst)
    (reverse-kernel lst null)))
(define reverse-kernel
  (lambda (remaining so-far)
    (if (null? remaining)
        so-far
        (reverse-kernel (cdr remaining) (cons (car remaining) so-far)))))
</pre>

The principle of encapsulation suggests that we should make
`reverse-kernel` a local procedure.

<pre>
(define reverse
  (letrec [(kernel
            (lambda (remaining so-far)
              (if (null? remaining)
                  so-far
                  (kernel (cdr remaining) (cons (car remaining) so-far)))))]
    (lambda (lst)
      (kernel lst null))))
</pre>

The pattern of "create a kernel and call it" is so common that
  the named let exists simply as a way to write that more concisely.

<pre>
(define reverse
  (lambda (lst)
    (let kernel [(remaining lst)
                 (so-far null)]
      (if (null? remaining)
          so-far
          (kernel (cdr remaining) (cons (car remaining) so-far))))))
</pre>

Lab
---

* Work on the [the lab](../Labs/local-procs.html).


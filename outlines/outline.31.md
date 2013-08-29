Outline 31: Naming Local Procedures
===================================

Held: Tuesday, 29 October 2013

Back to [Outline 30 - Another Image Model: Iterating Over Positions](outline.30.html).
On to [Outline 32 - Numeric Recursion](outline.32.html).

**Summary**

We explore why and how one writes local recursive procedures.

**Related Pages**


**Overview**

* Why have local procedures.
* Creating local procedures with <code>letrec</code>.
* Creating local procedures with named let.
* An example: <code>reverse</code>.

**Administrivia**


Husk and Kernel Programming
===========================
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
========================
* Today's class will focus not on something new, but on a better way to do something old: Define helper procedures.
* We frequently want to define procedures that are only available to certain other procedures (typically to one or two other procedures).  
*  We call such procedures *local procedures*
* Most local procedures can be done with <code>let</code> and <code>let*</code>.
* However, neither <code>let</code> nor <code>let*</code> works for recursive procedures.
* When you want to define a recursive local procedure, use <code>letrec</code>.
* When you want to define only one, you can use a variant of <code>let</code> called "named let".

<code>letrec</code>
-------------------
* A <code>letrec</code> expression has the format
<boxcode>
(letrec ((*name<sub>1</sub>* *exp<sub>1</sub>*)
         (*name<sub>2</sub>* *exp<sub>2</sub>*)
         ...
         (*name<sub>n</sub>* *exp<sub>n</sub>*))
  *body*)
</boxcode>
* A <code>letrec</code> is evaluated using the following series
  of steps.
    * First, enter <code>*name<sub>1</sub>*</code> through
    <code>*name<sub>n</sub>*</code> into the binding table.
    (Note that no corresponding values are entered.)
    * Next, evaluate <code>*exp<sub>1</sub>*</code> through
    <code>*exp<sub>n</sub>*</code>, giving you results
    <code>*result<sub>1</sub>*</code> through 
    <code>*result<sub>n</sub>*</code>.
    * Finally, update the binding table (associating
    <code>*name<sub>i</sub>*</code> and 
    <code>*result<sub>i</sub>*</code> for each
    reasonable *i*.
* Not thate its meaning is fairly similar to that of <code>let</code>, except
  that the order of entry into the binding table is changed.

Named <code>let</code>
----------------------
* Named <code>let</code> is somewhat stranger, but is handy for
  some problems.
* Named <code>let</code> has the format
<boxcode>
(let *name* 
  ((*param<sub>1</sub>* *exp<sub>1</sub>*)
   (*param<sub>2</sub>* *exp<sub>2</sub>*)
   ...
   (*param<sub>n</sub>* *exp<sub>n</sub>*))
  *body*)
</boxcode>
* The meaning is as follows:
    * Create a procedure with formal parameters 
    <code>*param<sub>1</sub>*</code> ... 
    <code>*param<sub>n</sub>*</code> 
    and body <code>*body*</code>.
    * Name that procedure <code>*name*</code>.
    * Call that procedure with actual parameters
    <code>*exp<sub>1</sub>*</code> through
    <code>*exp<sub>n</sub>*</code> .
* Yes, that's right, we've packaged together the procedure definition
  and the procedure call.
* In effect, we're just doing
<boxcode>
(letrec ((*name* (lambda (*param<sub>1</sub>* ...
*param<sub>n</sub>
*)
                  *body*)))
   (*name* *val<sub>1</sub>* ... *val<sub>n</sub>*))
</boxcode>

An Example
==========
* As an example, let's consider the problem of writing <code>reverse</code>.
* A first version, without local procedures
<boxcode>
(define reverse
  (lambda (lst)
    (reverse-kernel lst null)))
(define reverse-kernel
  (lambda (remaining so-far)
    (if (null? remaining)
        so-far
        (reverse-kernel (cdr remaining) (cons (car remaining) so-far)))))
</boxcode>
* The principle of encapsulation suggests that we should make
  <code>reverse-kernel</code> a local procedure.
<boxcode>
(define reverse
  (letrec ((kernel
            (lambda (remaining so-far)
              (if (null? remaining)
                  so-far
                  (kernel (cdr remaining) (cons (car remaining) so-far))))))
    (lambda (lst)
      (kernel lst null))))
</boxcode>
* The pattern of "create a kernel and call it" is so common that
  the named let exists simply as a way to write that more concisely.
<boxcode>
(define reverse
  (lambda (lst)
    (let kernel ((remaining lst)
                 (so-far null))
      (if (null? remaining)
          so-far
          (kernel (cdr remaining) (cons (car remaining) so-far))))))
</boxcode>

Lab
===
* Work on the [](../Labs/local-procs.html)the lab</a>.



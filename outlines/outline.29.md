Outline 29: Preconditions, Revisited
====================================

Held: Friday, 18 October 2013

Back to [Outline 28 - Other Forms of List Recursion](outline.28.html).
On to [Outline 30 - Another Image Model: Iterating Over Positions](outline.30.html).

**Summary**

We consider preconditions and programming techniques for ensuring that
preconditions are met.

**Related Pages**


**Overview**

* Verifying preconditions.
* The <function>error</function> procedure.
* Husk and Kernel programming.

**Administrivia**


Preconditions
=============
* Remember: Documentation is a contract, be careful.
* Even if you don't write documentation (or don't write
  careful documentation), you should reflect on your expectations
  for parameters.
* We call those expectations the <emphasis>preconditions</emphasis>
  of the procedure.
* In some cases, you may want to explicitly test to ensure that the
  preconditions are met.
    * Testing lets you provide more useful error messages.
    * Testing prevents dangerous results from being returned.

Reporting Failure
=================
* When a precondition fails, you want to stop computation immediately
  and report the error.
* In Scheme, you can do so with <function>error</function> or
  <function>throw</function> 
    * The one to use depends on the version of Scheme you are using.
    * Our Scheme interpreter uses <function>error</function>.

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



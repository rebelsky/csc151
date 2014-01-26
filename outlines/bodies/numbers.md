Types
-----

* As you may have noted in your first experiments with Scheme, Scheme
  assigns *types* to variables.
* For example, a value might be a number, or a string, or an image 
  identifier, or a procedure, or a drawing, or ....
* Computer scientists often think of types in two different ways:
    * *Data-driven*: A type is a set of values.
    * *Purpose-driven*: A type provides information on the valid
      operations that may be applied to a piece of data.
* We will alternate between the two definitions.
* Many languages (particularly the ones you've reported being familiar
  with) require you to assign a type to a variable when you declare
  that variable.
* Scheme does not require you to assign types ot variables; it checks
  the type of each operand when it executes a procedure.
    * Scheme also provides procedures that let you determine the type
    of a value.
* As the semester progresses, you will learn new types.
* As you learn each type, you'll learn a variety of things (that 
  correspond, in some sense, to those two approaches):
    * How to express values in the type.  For example, we express string
      values by surrounding them with double-quotation-marks and we express
      numbers in much the way we always have.
    * What operations are possible on values in the type.  For example, we
      can use the addition operation (<code>+</code>) on numbers and we
      can use the <code>string-append</code> operation on strings.

Lab
---

* Do [the lab on numeric values](../Labs/numeric-values-lab.html)
* Be prepared to reflect.

Scheme's Numeric Types
----------------------

* Instead of a general "numbers" type, Scheme provides a variety
  of kinds of numbers.
* Integers are numbers without a fractional component.
* Rational numbers can be expressed as the ratio of two integers.
* Real numbers appear somewhere on the number line.
    * In mathematics, real numbers can be rational or irrational.
    * In Scheme, real numbers are all rational.
* Complex numbers may include an *imaginary* component.
* You can (almost) always use an integer when a real is expected, but
  you cannot always use a real when an integer is expected.
* Scheme also represents some numbers exactly and some numbers
  inexactly.  (That is, it approximates some numbers.)
    * It certainly has to approximate irrational numbers.
    * But it also approximates many other numbers.
    * It may surprise you to see which numbers are represented inexactly.
    (We'll return to this issue later.)
* Some important numeric predicates (procedures that return true or
  false):
  <code>number?</code>,
  <code>real?</code>,
  <code>integer?</code>,
  <code>exact?</code>, and
  <code>inexact?</code>.

Modulo
------

* The <code>mod</code> (modulo, modulus) operation is one of the trickier 
  operations we use in this class (and we use it a lot).
* Essentially, <code>mod</code> is used to break up the number line into
  even chunks.
    * If you mod by 7, you break the number line up into chunks of size 7.
    * If you mod by 23, you break the number line up into chunks of size 23.
* For each chunk, we start counting at 0.
* For example
<pre>
Number line:  -9 -8|-7 -6 -5 -4 -3 -2 -1| 0  1  2  3  4  5  6| 7  8  9 10 11 
Modulo 7:      5  6| 0  1  2  3  4  5  6| 0  1  2  3  4  5  6| 0  1  2  3  4 
</pre>
* The <code>(modulo *i* *n*)</code> operation allows us to 
  *cycle* through the numbers between 0 and <code>*n*</code>-1.


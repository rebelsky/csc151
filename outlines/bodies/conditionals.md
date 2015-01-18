The Parts of an Algorithm
-------------------------

Remember those?  We did them early on in the semester.

* You need to have some *basic operations*.
* You need to be able to *sequence* your operations, explicitly
  or implicitly.
* It's nice if you can *name values*.
* You need to be able to write *subroutines* (aka *procedures*) that
  parameterize a piece of code.
* You need to be able to *repeat* instructions.
* You need to be able to *choose* between options.

How many of these do we know?  Almost all of them.

Choosing Between Options with `if`
----------------------------------

* The first mechanism for choice.
* Form `(if TEST CONSEQUENT ALTERNATE)`
* Meaning
    * Evalute the TEST.
    * If the TEST is not false ("holds"), evaluate and use the value
      of the CONSEQUENT.
    * If the TEST is false, evaluate and use the value of the ALTERNATE.
* Note:
    * You only get *one* consequent
    * You only get *one* alternate

Optional Evaluation with `when`
-------------------------------

* Useful only when you're sequencing operations.
* Form `(when TEST CONSEQUENT_1 CONSEQUENT_2 ... CONSEQUENT_n)`
* Meaning
    * Evaluate the TEST.
    * If the consequent is not false ("holds"), evaluate each
      of the consequents in turn.  Use the value of the last
      consequent.
    * If the consequent is false, do nothing.  Return nothing.
* Note:
    * You get as many consequents as you want.

Choosing Between Multiple Options with `cond`
---------------------------------------------

* Form 

        (cond 
          [TEST_1 CONSEQUENT CONSEQUENT ... CONSEQUENT]
          [TEST_2 CONSEQUENT CONSEQUENT ... CONSEQUENT]
          ...
          [TEST_n CONSEQUENT CONSEQUENT ... CONSEQUENT]
          [else ALTERNATE_1 ALTERNATE_2 ALTERNATE_n])

* Meaning
    * Evaluate each test in turn.
    * When a test holds (is not false), evaluate all of the
      consequents in sequence and return the value of the last one.
    * If none of the tests hold, evaluate all of the alternates
      in sequence and return the value of the last one.

Comparing Approaches
--------------------

* Returns a value: `cond` and `if`.
* Lets you have multiple consequents: `when` and `cond`.
* Let's you choose between options `cond` and `if`.

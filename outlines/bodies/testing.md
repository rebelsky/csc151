*Most of my thoughts on testing have ended up in the reading.*

Basic Idea
----------

* We verify the correctness of procedures by running tests that compare
  predicated values to actual values.

Model
-----

* We do a single comparison with `check-equal?` (or some variants).
* We group one or more comparisons into a <q>test case</q> with 
  `test-case`.  That lets us add a description to the checks.
* We group one or more tests or comparisons into a <q>test suite</q> with 
  `test-suite`.  Unlike `test-case`, which runs the test,, `test-suite`
  builds a value that you run later.

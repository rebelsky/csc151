CSC151.01 2015F, Class 54: Merge Sort
=====================================

* Continue partners.

_Overview_

* Preliminaries.
    * Admin.
    * Upcoming Work.
    * Extra Credit.
    * Questions.
* Lab.

Preliminaries
-------------

### Admin

* Please make sure to attend class on Wednesday and Friday this week.  
  I consider those days particularly important.
* Review sessions Wednesday at 8 p.m., Thursday at 10 a.m., Thursday at
  8 p.m.  A chance to ask about the sample final (except for nest).
* If you mistakenly discussed the `nest` procedure with someone else,
  please let me know ASAP.

### Upcoming Work

* No more readings!
* No more lab writeups!
* Exam 4 cover sheet due Tuesday, Dec. 8. NOW
* Exam 4 epilogue due Tuesday, Dec. 8. TONIGHT

### Extra Credit Opportunities

#### Academic

* CS Table, noon, TODAY, 3821.  Bring your own lunch.  Discuss cartoons with
  fun people.
* Any visit to the current show in the Faulconer gallery.
* "Summer Opportunities in CS", Thursday at 4:15 p.m.

#### Peer Support

* Women's Basketball vs. Carroll, Saturday, Dec. 12 at 3:00 p.m.

### Questions

_Can I ask a question on the exam in class?_

> The exam was due last night.  You can ask a question about turning
  it in, but that's about it.

_I took an extension, can I ask you via email or in office hours?_

> Yes.  (See, Whee, Yeagh, ...)

_Should we wait until we turn in the exam to turn in the cover sheet?_

> Yes.

_Attachment?_

> Yes.

Lab
---

How to compute log base 2

    (define log2 (lambda (x) (/ (log x) (log 2))))

For extra 1, the values have the form '("Last" "First"), so your 
comparison should look like

    (define compare-names
      (lambda (name1 name2)
        ...))

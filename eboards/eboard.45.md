CSC151.02 2014S, Class 45: Association Lists
============================================

_Overview_

* Preliminaries.
    * Admin.
    * Questions.
* Storing information in tables.
* Representing table entries as lists.
* Representing tables as lists.
* Association lists: Scheme's standard table representation.
* Implementing key association list procedures.

Preliminaries
-------------

### Admin

* Our computers are continuing to run slowly.  We may adapt lab around
  the computers (e.g., by doing a collaborative class lab).
* Because of the problems with the computers, I'm extending the deadline
  for both project and exam 3 by two days (Thursday this week and
  Thursday next week, respectively).
* Welcome to our prospective students.

### Upcoming Work

* Reading for Tuesday: Binary Search.
* Homework for Thursday: Projects.
* No lab writeup: (No matter what it says online.)

### Extra Credit

* Any pride week activity.
* Math Extra, Thursday.  Sphere packing.
* Iowater project April 26 - Tag drains.  Mail [iowater] for details.
* Dance shows, 7:30 p.m. Thursday, Friday, Saturday, 2:30 pm Sunday
* Jazz combo Bucksbaum Thursday 8pmish.

### Questions on projects

Lecture
-------

* Storing data is one of the key things computers do. 
* How can we do this in Scheme?
* Simple approach:
    * We think of data in terms of tables
    * Student: student id number, last name, first name, email address, 
      enthusiasms, list of courses, gpa, ...
* In Scheme, we can use a vector or list for each entry in the tablea
    * Vectors let us reference each item individually (lists, too, but slowly)
    * Vectors are mutable
* We can think of a table as a collection of entries (list or vector)
    * Lists let us add more elements.

The table on the screen

        (list
         (list 2314 "Rebelsky" "Samuel" "rebelsky@grinell.edu "
               (list "my children" "annoying students" "computer science"
               (list "CSC 151" "CSC 207" ...)))
         (list 2185 "Smith" "JaneOrJoe" "smithtay@grinnell.edu"
               ...))

What do we do with these data?  Typically, we search for things

Since matching is so easy and so common, Scheme comes with a built-in procedure,
assoc
Lab
---

Let's try lab

CSC151 2015F, Review Session Week 14 - 2015-12-10
=================================================

_Overview_

* We look at potential final questions.
* You ask about topics that you'd like to understand better.

_Admin_

* I have an 11 a.m. meeting, so will have to leave right at 10:50.
* EC for honors voice recital Friday at 4:15 in Sebring-Lewis

About the Exam
--------------

We discussed the exam in class yesterday.  It's comprehensive.  It will
have four questions.  It will be somewhere between quiz questions and
exam questions.

We may cover every topic.  We will almost certainly cover something
related to sorting.

Can we ask you questions about confusingly worded problems?  Yes.
However, I will mostly be there for clarification, not guidance.

Sample Final Questions
----------------------

We will not get to all of these.  There are also three others on the
sample final examination.

There are enough questions here that I would recommend that you look
at them online for a few minutes and then discuss which you would like
to do first.

Votes:

* "The file one" 6
* "The circle one" 2
* "The counting/analysis one at the end" 2
* "Is it efficient?" from the sample final 2
* "Using sorting routines"

### Using Sorting Routines

Assume that we represent names as lists of the form (last-name first-name). Write an expression to merge the following two lists:

    (define mathstats-faculty
      (list (list "Blanchard" "Jeff")
            (list "Chamberland" "Marc")
            (list "Fellers" "Pamela")
            (list "French" "Chris")
            (list "Jonkman" "Jeff")
            (list "Kuiper" "Shonda")
            (list "Mileti" "Joseph")
            (list "Moore" "Emily")
            (list "Moore" "Tom")
            (list "Olsen" "Chris")
            (list "Paulhus" "Jennifer")
            (list "Shuman" "Karen")
            (list "Wolf" "Royce")))
    
    (define more-faculty
      (list (list "Moore" "Chuck")
            (list "Moore" "Ed")
            (list "Moore" "Gordon")
            (list "Moore" "Roger")))

#### A Solution

We need a comparator that takes two names and determines whether one
can come before the other.  A name is a list of length 2.

    (define name-may-precede?
       (lambda (name1 name2)
         (let ([last1 (car name1)]
               [first1 (cadr name1)]
               [last2 (car name2)]
               [first2 (cadr name2)])
           (cond
             [(string-ci<? last1 last2)
              #t]
             [(string-ci>? last1 last2)
              #f]
             [(and (string-ci=? last1 last2)
                   (string-ci<=? first1 first2))
              #t]
             [else
              #f]))))

    (define name-may-precede?
       (lambda (name1 name2)
         (let ([last1 (car name1)]
               [first1 (cadr name1)]
               [last2 (car name2)]
               [first2 (cadr name2)])
           (string-ci<=? (string-append last1 ", " first1)
                         (string-append last2 ", " first2)))))
     
               
### Modes of Image Making

We have learned four primary mechanisms for making images: drawings
as values, `image-compute`, GIMP tools, and turtles.  Using each of
these four mechanisms, draw the outline of a black circle of radius 40,
centered at (50,50), on a white background.

### A Solution, using `image-compute`

    (image-show (image-compute (lambda (col row)
                                 (let ([distance-from-center
                                        (sqrt (+ (square (- 50 col))
                                                 (square (- 50 row))))])
                                   (if (< 38 distance-from-center 42)
                                       (irgb 0 0 0)
                                       (irgb 255 255 255))))
                               100 100))

### A solution using GIMP tools

    (context-set-bgcolor! "white")
    (context-set-fgcolor! "black")
    (define canvas (image-show (image-new 100 100)))
    (image-select-ellipse! canvas REPLACE 10 10 80 80)
    (context-set-brush! "2. Hardness 100" 2)
    (image-stroke! canvas)
 
### Turtle-gone

Write a procedure, `(turtle-gon turtle sides side-length)` that uses
a turtle to draw a regular polygon of the specified number of sides and
side length.

### Reversing Vectors

Write a procedure, `(vector-reverse! vec)`, that reverses a vector
"in place".  For example,

    > (define vec1 (vector 1 2 3 'a 'b 'c))
    > vec1
    '#(1 2 3 a b c)
    > (vector-reverse! vec1)
    > vec1
    '#(c b a 3 2 1)
    > (vector-reverse! vec1)
    > vec1
    '#(1 2 3 a b c)

### Whatzitdo

Consider the following procedure.

    (define whatzitdo
      (lambda (lst)
        (let where ([here 0]
                    [there (- (vector-length lst) 1)])
          (if (> there here)
              empty
              (let ([elsewhere (quotient (+ here there) 2)])
                (node (vector-ref lst elsewhere)
                      (where here (- elsewhere 1))
                      (where (+ elsewhere 1) there)))))))

a. Describe or show the result of calling `whatzitdo` on the collection
of values 5 2 3 1 8 9 3 2 12.

b. Rewrite `whatzitdo` so that the various names (e.g., `whatzitdo`,
`lst`, `here`) are clearer.

c. Write the six-P style documentation for `whatzitdo`.

### What's Wrong?

The following procedure is poorly designed.  Explain why, and suggest
three different ways of fixing the problem.

    (define list-largest
      (lambda (lst)
        (cond
          [(null? (cdr lst))
           (car lst)]
          [(> (car lst) (list-largest (cdr lst)))
           (car lst)]
          [else
           (list-largest (cdr lst))])))

### What's Wrong?

The following procedure to count the number of integers in a file.  What
is wrong with this procedures?  Rewrite it so that it is likely to work
correctly.

    (define tally-integers
      (lambda (file-name)
        (let kernel ([port (open-input-file file-name)])
          (let ([next-val (read port)])
            (cond
              [(eof-object? (read port))
               (close-output-port file-name)
               0]
              [(integer? (read port))
               (+ 1 (tally-integers file-name))]
              [else
               (tally-integers port)])))))

#### A Solution

* We might want to rename it to make it clear that it tallies a file.
  (Not an error; just good style.)
* We have a kernel, but we never call it.
    * Should we just erase the `kernel`?
    * Should we see where we should call it?
* We never use `next-val`.
    * Should we erase it?
    * Should we see where to use it?
* Calling `read-val` multiple times is dangerous.  It means that we
  may be reading multiple values.  E.g., we could read 3 and call it
  `next-val`, then read another value and see that it's the end of file.
  We will not count that 3.
* `port` is an input port, so we should use `close-input-port`
* We should use `port`, not `file-name` for the call to close.
* Rather than recursing on file-tally-integers, we should recurse on kernel.

    (define file-tally-integers 
      (lambda (file-name)
        (let kernel ([port (open-input-file file-name)])
          (let ([next-val (read port)])
            (cond
              [(eof-object? next-val)
               (close-input-port port)
               0]
              [(integer? next-val)
               (+ 1 (kernel port))]
              [else
               (kernel port)])))))

Here's a version that tells us how it's thinking.

    (define file-tally-integers
      (lambda (file-name)
        (let kernel ([port (open-input-file file-name)])
          (let ([next-val (read port)])
            (display "I read ") 
            (display next-val)
            (cond
              [(eof-object? next-val)
               (display " and hit the end of the file")
               (newline)
               (close-input-port port)
               0]
              [(integer? next-val)
               (display " and it's an integer")
               (newline)
               (+ 1 (kernel port))]
              [else
               (display " and I'm ignoring it")
               (newline)
               (kernel port)])))))

### More Code Reading

Consider the following two definitions:

    (define stuff1
      (append (list 1)
              (append (list 2)
                      (append (list 3)
                              (append (list 4)
                                      (append (list 5)
                                              null))))))
    (define stuff2
      (append (append (append (append (append (list 1) 
                                              (list 2))
                                      (list 3))
                              (list 4))
                      (list 5))
              null))

a. What do stuff1 and stuff2 look like?

    > stuff1


    > stuff2


b. How many calls to `cons` are made by `append` and `list` in creating
`stuff1`?

`append`:

`list`:

c. How many calls to `cons` are made by `append` and `list` in creating
`stuff2`?

`append`:

`list`:

### Problem 3 from the Sample Exam

#### A Solution

If I start with the list '(1 2 3 4), `list-reverse-1` says "append
the reverse of '(2 3 4) to (1)"  Append will spend 3 calls to
`cons` doing that

To build the reverse of '(2 3 4), we must append the reverse of
'(3 4) to (2).  That requires 2 calls to cons.

To build the reverse of '(3 4), we must append the reverse of (4)
to (3).  That requires 1 call to cons.

6 calls to cons for list-reverse-1 of a list of length 4.

7+6+5+4+3+2+1 = 28 calls to cons for list-reverse-1 of a list of length 8?

If we are counting calls to `car`, we have one call to `car` for every
call to `cdr` in `append`.  We also have one call to `car` in 
`list-reverse-1` for each element in the list.  

So ... for four elements, we have 6 + 4 = 10 calls to `car`.

For eight elements, we have 28 + 8 = 36 calls to `car`.



Additional Topics
-----------------

### Files

* A file is information somewhere in our filesystem.
* We associate a name with that thing in our filesystem.
* In Scheme, we want a way to step through the file.  A port is something
  that keeps track not just of the information, but where we are in reading
  or writing the information.
* `(open-input-file FILENAME)` creates the port for a file.  It has
  a location and a file.
* If we write `(let ([black (open-input-file "stuff.txt")] [green (open-input-file "stuff.txt")))`, both `black` and `green` refer to the same file, but may be at different locations in the file during our computation.
* We should clean up after ourselves when we are done with a file.
  We use `(close-input-port PORT)` or `(close-output-port PORT)`.
* Input ports are for files we read, output ports are for files we write.


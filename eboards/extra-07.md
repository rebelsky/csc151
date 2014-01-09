Extra Topics, Week 7

_Notes by HF.  Thanks HF!_

Stuff on Quiz:

* Recursion
* Preconditions

Recursion

* solve problem by solving a simpler version of the problem and extending that solution (recursive case)
    * Lists: smaller version of the problem: one fewer element
* At some point, it's simple enough we can solve it directly (base case)
    * base case test: is it simple? 
    * For lists, the base case test is Empty? One element?

Example:
counting all #'s < 50 in a list

Input: list of real numbers

Output: integer

    If the list is empty (base case test)
       there are no number <50 (0) (base case computation)
    Otherwise
       count how many number < 50 appear in rest if first element <50 add 1 to number < 50

    (define count-small
       (lambda (lst)
          (if (null? lst)
                0
          (if (< (car lst) 50)
             (+ 1 (count-small (cdr lst)))
             (count-small (cdr lst))))))
    
    (count-small '(1 60 3 4 75 2))

extract all #'s < 50 in a list

Input: list of real numbers

Output: list of real #'s

Example:
add all #'s < 50 in a list

    Input: list of real numbers
    Output: integer
    If the list is empty (base case test)
       there are no number <50 (0) (base case computation)
    Otherwise
        add number < 50 appear in rest if first element <50 add first element to number < 50

    (define add-small
        (lambda (lst)
            (if (null? lst)
                  0
            (if (< (car lst) 50)
                 (+ (car lst) (add-small (cdr lst)))
                 (add-small (cdr lst))))))

Example:
Multiply #'s < 50

    If the list is empty
        the product is 1
    Otherwise
        compute product of remainder of list
        if first is small, multiply first by remainder of list
        o/w just use the product of the remainder of list

Multiply example with running product

(3 4 110 15 6 83)

update and remove to compute running product

Tail Recursion:

    (define f
        (lambda (prod remaining)
              (if (null? remaining)
                    prod
                    (if (< (car remaining) 50)
                          (f (* prod (car remaining))
                               (cdr remaining))
                           (f prod
                              (cdr remaining))))))
    

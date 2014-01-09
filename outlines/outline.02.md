Outline 02: An Introduction to Linux
====================================

Held: Monday, 2 September 2013

Back to [Outline 01 - An Introduction to Algorithms](outline.01.html).
On to [Outline 03 - An Introduction to Scheme](outline.03.html).

**Summary**

Today we begin to consider the content and structure of the course.  We
also prepare ourselves to use our laboratory environment (that is, the 
Linux workstations).

**Related Pages**

* Reading: [The Linux Environment](../readings/linux-reading.html)
* Lab: [Getting Started with Linux](../readings/linux-lab.html)
* [EBoard](../eboards/02.html) 
  ([Source](../eboards/02.md))
  ([PDF](../eboards/02.pdf))

**Overview**

* Lessons from day one.
* Common parts of an algorithm.
* About the course.
* Getting started with Linux.
* Some administrative details (if there's time).

**Administrivia**

* Reminder: If you expect to have a long-standing interest in CS (even if
  you don't plan to be a CS major), you can be on the csstudents mailing
  list and you can participate in CS Table.  Email me to get added to
  the mailing list.
    * CS Table meets in JRC 224A at Noon on Fridays.  We pay for your
      meal if you're a student not on board.
    * This week, we're reading Alan Turing's [Computing Machinery and
      Intelligence](http://www.csee.umbc.edu/courses/471/papers/turing.pdf).
* The CS SEPC is hosting a study break tonight at 8pm in the CS Commons.
  Feel free to attend.
* With over sixty surveys between my two classes, I didn't have time
  to respond to all of them yet.  (If I'm lucky, I can respond to a
  survey in 10 minutes.)  Give me a few days.
    * You can find some answers to questions in [the
      FAQ](../handouts/faq.html).  
    * I'm also preparing a [summary of
      lessons](../handouts/lessons.html).
* Very few people even bothered to look up PGP or IRC.
    * We will be using IRC starting next week, but I will give you a
      short in-class introduction first.
    * And since some folks are concerned about revalations about Microsoft
      or the NSA, you might want to learn about PGP.
* For today's lab (and only today's lab), I'll try to have one of you 
  per computer.  We will need to spread out to both labs, and even across
  the hallway.
* You have four (!) short readings for tomorrow: 
  [The Parts of an Algorithm](../readings/algorithms-reading.html),
  [The DrRacket Programming Enviornment](../readings/drracket-reading.html),
  [Beginning Scheme](../readings/beginning-scheme-reading.html), and
  [How Scheme Evaluates Expresssions (take 1)](../readings/scheme-eval-1.html).
* I'll note that Dr. Davis and I seem to have taken very different approaches
  to today's class.
* Instead of taking attendance, I will hand out out account information
  for the CS department workstations.

Reflections on Making Sandwiches
--------------------------------

*What else did you learn from the Nut Butter and Jelly exercise?*

The Parts of an Algorithm
-------------------------

* As you may have noted, there are some common aspects to algorithms.
  That is, there are techniques that we use in many of the algorithms
  we write.  
* It is worthwhile to think about these algorithm parts
  because we can rely on them when we write new algorithms. 

### Variables: Named Values

* As we write algorithms, we like to name things.  
* Sometimes we use long names, such as "the piece of bread in 
  your dominant hand".
* Sometimes, we use shorter names, such as "bread-dom".  
* As we start to write more formal algorithms, we will need
  techniques for noting which names we are using and indicating
  what they name (and, sometimes, what kind of thing they name).
* We call these named values *variables*, even though they
  don't always vary.
* We need to be careful to use unambiguous names.  Recall the 
  problems with using "it" in your descriptions.

### Parameters: Named Inputs

* Many algorithms take data as input (and generate other data
  as output).
* The "open a jar" algorithm takes the jar as an input.
* A "find square root" algorithm would take a number as input.
* A "look up a telephone number" algorithm might take a phone
  book and a name to lok for as inputs.
* In each case, the algorithm should works on many different inputs.
* The algorithm works as long as the input is
  "reasonable" (we can't find the square root of a piece of bread,
  we can't make a sandwich with pi).
* We call these inputs *parameters*.

### Conditionals: Handling Different Situations

* At times, our algorithms have to account for different conditions, doing
  different things depending on those conditions.  
* In our PB and J algorithm, we had to consider the type of lid for the jar.
* We call such operations *conditionals*.  
* Conditionals typically take either the form <br>
  if *some condition holds* then *do something*
* Here's a slightly more complex form <br>
  if *some condition holds* then *do something* otherwise
  *do something else*
* At times, we need to decide between more than two possibilities.
  Typically, we organize those as a sequence of tests (called *guards*)
  and corresponding things to do.

### Repetition

* At times, our algorithms require us to do something again and again.
* For example, you told me to repeatedly twist the jar top.
* We call this technique "*repetition*".  
* Again, repetition takes many forms.  
* We might do work until we've reached a desired state.
* We might continue work as long as we're in some state.
* We might repeat an action a fixed number of times.
* You can probably think of many other forms of repetition.
* As in the jar top example, you need to be careful to ensure that your
  repetition terminates.

### Subroutines: Named Helper Algorithms

* Many algorithms require common actions for their operation.  
* Most of you wrote a common "How to open a jar" action.
* If we were going to make lots of sandwiches, your instructions would
  become a common action.
* We can write additional algorithms for these common actions and 
  use them as part of our broader algorithm.  
* We can also use them in other algorithms.
* We call these helper algorithms "*subroutines*".

About This Class
----------------

* Computer Science 151 has a number of goals
    * To introduce you to fundamental ideas of computer science: abstraction,
      algorithms, and data
    * To enhance your problem-solving skills and give you experience
      in formal representation of problems and solutions.
    * To introduce you to two primary paradigms of problem solving:
      functional and imperative.
    * To give you some programming skills that you can apply to problems
      in other disciplines.
    * To improve other learning and thinking skills (as we hope all
      Grinnell classes will do).
* I expect and hope that you will find CSC151 different from any class
  you've taken in the past.
    * We use a different format than many classes: a collaborative,
      workshop-style format.  (You may have seen this format in other
      introductory science courses; we do it somewhat differently.)
    * Computers and computer science also require you to think differently.
      I expect that you'll exercise some brain cells you may have forgotten
      you have.  (And after all, isn't liberal arts education an exercise
      in thinking in as many ways as you can?)
* Like most computer science courses, CSC151 will have both theoretical
  and practical components.  I hope you will enjoy relating the two.
* And, hey, we're going to make pretty pictures, too.

Lab: Getting Started with Linux
-------------------------------

* We'll break about midway through today's class to get you set up
  working with our Linux computers.
* This "lab prep" is somewhat pointless and annoying, but also necessary.
* You should not work in a team for today's lab, and we'll spread out
  to both this room and the neighboring room.
* Do [the lab](../Labs/linux-lab.html)

Administrative Issues
---------------------

* I am not sure whether or not I will cover these topics in class.
  They are included for your edification.*
* Please refer to the [course web site](../home/) for more details.  
* Teaching philosophy: I support your learning.
* Policies
    * Attendance: I expect you to attend every class.  I understand that
      sometimes you have to miss.  Let me know when and wy.
    * Grading: I'm a hard grader.  I don't grade everything.
    * Course web.
    * Etc.
* Daily work
    * Attend class, work on lab and participate in discussion.
    * Finish the lab in the evening.
    * Do the reading for the next class in the evening.
* The quizzes
    * Every Friday, plus a few pop quizzes
* The exams
    * Three take-home exams during the semester.  Plan to spend
      four hours on each one.
    * An *optional* final to make up for a bad exam grade.
    * Take all three exams anyway.
* The labs
    * Available online. 
* The homework
    * Weekly, due on Wednesdays
* Academic honesty
    * Core to the academic process.
    * The college's basic policy: Cite carefully.
    * My basic policy: Don't cheat.  (Also: It's usually okay to work with
      others, provided you cite them.)
    * Read [my handout on academic honesty](../Handouts/academic-honesty.html)
      carefully.



Beginner's Guide to Dyalog APL - Design Document

*[Introduction](#introduction)
*[Example Structure](#example-structure)
*[First Steps](#first-steps)
*[Execution Order](#execution-order)
*[Basic Functions and Variables](#basic-functions-and-variables)
*[Keyboards and Input](#keyboards-and-input)

### Introduction
Entice the new user with a friendly outline - reflect the humour present in tutorials.dyalog.com
- Welcoming paragraph
- Purpose and scope
- How to navigate

### Example Structure 
- An ongoing introductory course for new users of Dyalog APL
  - Video tutorial
  - TutorialWS example + Jupyter notebook
  - .dyalog files as appropriate
  - DyalogTutorials wiki entry
    - References
- Example projects / project walkthroughs
  - .dyalog files OR project folder OR GitHub repo for the project
  - Long form video of development
  - Short from edited how-to / how-it-was-done
  - Possibly TutorialWS example + Jupyter notebook
  - DyalogTutorials wiki entry
    - References

### First Steps
Start Dyalog. You will be met with either the Ride (MacOS, Linux) or Windows interface.
**Images here?**
- type a number
- type some numbers
- do some maths
  - + × 
    - Click the symbol, ` backtick entry, [keyboard layouts](#keyboards-and-input)
  - 2÷3
    - only 10 most significant digits displayed
    - 200000÷3
    - ⎕PP
      - 5÷7 | ⎕PP←16
    - ⎕FR
- Monadic / Dyadic functions
  - -3, ¯3, ÷3
    - 2-5
    - -2×5 | ¯2×5 | 5-2×5 | 5¯2×5
      SYNTAX ERROR
    - 2-¯3 | -2-¯3
  - ÷3 | ÷2 | ÷1 | ÷0
    DOMAIN ERROR
  - 5÷5 | 5÷0 | 0÷5 | 0÷0
    - Any number divided by itself is 1, though the result could just as well have been 0 or DOMAIN ERROR. In Dyalog APL, the result is 1 (though there's a way to change this if it really upsets you). 
- Arrays
  - ⍳10
  - ⎕IO
  - 1 2 3 × 1 2 3 4 
  LENGTH ERROR
The rest of these tutorials, unless stated otherwise, assume that ```⎕IO←1```  
At any time, you are encouraged to play in the interpreter. [[1]](#playing-with-apl)
  - .2 × ⍳10
  - 3 + .2 × ⍳10
So counting is pretty easy in APL, right? What's next?  

Functions in APL can be monadic (prefix) or dyadic (infix).
```⍴``` is the Greek letter rho, its dyadic function is reshape.
```APL
      2 3 4 ⍴ ⍳2×3×4
 1  2  3  4
 5  6  7  8
 9 10 11 12
           
13 14 15 16
17 18 19 20
21 22 23 24
```
```⍴ VAR``` gives the shape of the variable VAR.  
```N ⍴ VAR``` gives the N reshape of VAR.  
```APL
      LIST ← ⍳6
      TABLE ← 2 3 ⍴ LIST
      LIST×LIST
1 4 9 16 25 36
      TABLE×TABLE
 1  4  9
16 25 36
      ⍴LIST
6
      ⍴TABLE
2 3
```

APL is an array programming language. It is specialised to make manipulating arrays straightforward and intuitive [[2]](#Array-languages). Let's play with arrays:   
```APL
      LT←LISTOFTABLES←2 3 4⍴⍳24
```

### Execution Order
- +-×÷
- () parentheses

### Basic Functions and Variables
- 
- +← (plus gets)
- ,← (catenate gets)

### Keyboards and Input
- The language bar
- `- (backtick minus)
- Keyboard input
  - Linux
    - start Dyalog
    - setxkbmap gb,apl -option grp:win_switch
  - MacOS
    - Check: same as linux?
  - Windows

### Playing with APL
"I have long been struck by the contrast between the success with which the adventurous learn APL simply by using it, and the frequent failure of lecture courses to communicate the simplicity and applicability of the language."  
- Kenneth E. Iverson in A Working Introduction to APL © 1981 I.P. Sharp Associates

### Array Languages
If you have come here with experience from other programming languages, the use of symbols may have stuck out as the major difference with APL. Another major difference is the focus on arrays. Where you may have to construct nested loops over array indices in other languages, in APL you do it all at once!

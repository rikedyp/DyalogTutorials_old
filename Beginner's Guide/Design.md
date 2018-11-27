Beginner's Guide to Dyalog APL - Design Document

[Introduction](#introduction)
[Example Structure](#example-structure)
[First Steps](#first-steps)
[Keyboards and Input](#keyboards-and-input)

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
- type a number
- type some numbers
- do some maths
  - + × 
    - Click the symbol, ` backtick entry, [keyboard layouts](#keyboards-and-input)
  - 2÷3
    - only 10 most significant digits displayed
    - 200000÷3
    - ⎕PP
    - ⎕FR
- Monadic / Dyadic functions
  - -3, ¯3, ÷3
    - 2-5
    - -2×5 | ¯2×5 | 5-2×5 | 5¯2×5
      - SYNTAX ERROR
    - 2-¯3 | -2-¯3
  - ÷3 | ÷2 | ÷1 | ÷0
    - DOMAIN ERROR
  - 5÷5 | 5÷0 | 0÷5 | 0÷0
    - Any number divided by itself is 1, though the result could just as well have been 0 or DOMAIN ERROR. In Dyalog APL, the result is 1 (though there's a way to change this if it really upsets you). 

### Keyboards and Input
- The language bar
- `- (backtick minus)
- Keyboard input

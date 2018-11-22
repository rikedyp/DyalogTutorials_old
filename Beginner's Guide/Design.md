Beginner's Guide to Dyalog APL - Design Document

[Introduction](#introduction)
[Examples](#examples)
[References](#references)

### Introduction
Entice the new user with a friendly outline - reflect the humour present in tutorials.dyalog.com
- Welcoming paragraph
- Purpose and scope
- How to navigate

### Exercises
Simple exercises
- Quick Maths
```APL
      2+2
4
      2×2
4
      2*2
4
      1 2 3 + 4 5 6
5 7 9
      1 2 3 × 4 5 6
4 10 18
      1 2 3 - 4 5 6
¯3 ¯3 ¯3
      1 2 3 ÷ 4 5 6
0.25 0.4 0.5
```
- Fraction from decimal
How do we find the fraction from a decimal number?
```APL
∇frac a
 m←10*⌊/⍸0=1|(10*⍳7)×a
 d←b[c←⌊/⍸0=1|b←(⍳m)÷a]
 c,'÷',d
∇
```
``` ⍳10000000``` is the largest before WS FULL (default settings)  
CAUTION: frac ○1 suggests that π is rational!

- Alphabetise [[1]](#1-iverson-ke--1981-ip-sharp-associates)
```APL
NAMES←↑'SMITH, R.J.' 'JONES, C.' 'ABEL, H.L.' 'SMITH, R.A.'
      A←(⎕A), ' ,.'
      ⍴A
29
      A⍋NAMES
3 2 4 1
      NAMES [A⍋NAMES;]
ABEL, H.L. 
JONES, C.  
SMITH, R.A.
SMITH, R.J.
```
### References
##### 1. Iverson K.E. - A Working Introduction to APL © 1981 I.P. Sharp Associates

# Alphabetize [[1]](#1-iverson-ke--1981-ip-sharp-associates)
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

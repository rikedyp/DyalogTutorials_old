## First steps into Dyalog APL
This document presumes you have installed Dyalog APL. If not, [click here]() to get Dyalog APL (free for personal / non-commercial use)

Start Dyalog. You will be met with either the Ride (MacOS, Linux) or Windows interface.
**Images here?**

APL is A Programming Language designed by a mathematician. You can use it like a calculator:
```APL
      2+2
4
      2×2
4
      2*2
4
```
As you can see, + (plus), × (times) and * (power) all do the same thing...  
... well obviously not, but they work just like they do in mathematics.
```APL
      2+3
5
      2-3
¯1
      2×3
6
      2*3
8
      2÷3
0.6666666667
```
By default, Dyalog APL will output 10 decimal places, and calculations are performed with 16.  
```⎕PP``` (Print Precision) gives the number of decimal places to be displayed in the interpreter. It is a variable which can be set:
```APL
      ⎕PP
10
      5÷7
0.7142857143
      ⎕PP←16
      5÷7
0.7142857142857143
```

Let's try something:
```APL
      ⍳10
1 2 3 4 5 6 7 8 9 10
```
The default layout is for input to be indented by six spaces and output to be unindented. 
Dyalog APL starts counting (indexes) from 1 by default. We can change that:
```APL
      ⎕IO←0
      ⍳10
0 1 2 3 4 5 6 7 8 9
```
The rest of these tutorials, unless stated otherwise, assume that ```⎕IO←1```  
At any time, you are encouraged to play in the interpreter. [[1]](#playing-with-apl)
```APL
      .2×⍳10
0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8 2
      3 + .2 × ⍳10
3.2 3.4 3.6 3.8 4 4.2 4.4 4.6 4.8 5
```  
  
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
Now we introduct 3 new 
### Playing with APL
"I have long been struck by the contrast between the success with which the adventurous learn APL simply by using it, and the frequent failure of lecture courses to communicate the simplicity and applicability of the language."  
- Kenneth E. Iverson in A Working Introduction to APL © 1981 I.P. Sharp Associates

### Array Languages
If you have come here with experience from other programming languages, the use of symbols may have stuck out as the major difference with APL. Another major difference is the focus on arrays. Where you may have to construct nested loops over array indices in other languages, in APL you do it all at once!

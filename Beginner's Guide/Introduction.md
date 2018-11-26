# Introduction
So you've found APL. Your interest is piqued and you are ready to imbibe the runes and begin the indoctrination.
"Let's get started", you say to yourself. Teach me to become an APL wizard.

APL has a notation and syntax that, with practise, will allow you to easily translate the solutions in your head in to programs that will run on a computer.
The terse syntax and lack of symbols can seem like tall hurdles when you are just beginning to use a new programming language. This guide is intended to provide steps to help the new user surmount those hurdles. The new user is still likely to fall and scrape their knees.

So let us not delay. [Download Dyalog APL](https://www.dyalog.com/download-zone.htm) and get started!

Start Dyalog. You will be met with either the Ride (MacOS, Linux) or Windows interface.
***Images here?***

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
At any time, you are encouraged to play with the APL you learn. [1](#playing-with-apl)
```APL
      .2×⍳10
0.2 0.4 0.6 0.8 1 1.2 1.4 1.6 1.8 2
      3+.2×⍳10
3.2 3.4 3.6 3.8 4 4.2 4.4 4.6 4.8 5
```  
  
So counting is pretty easy in APL, right? What's next?
```APL
      LIST←⍳6
      TABLE←2 3 ⍴ LIST
```

```APL
      LIST×LIST
1 4 9 16 25 36
      TABLE×TABLE
 1  4  9
16 25 36
```

### Playing with APL
"I have long been struck by the contrast between the success with which the adventurous learn APL simply by using it, and the frequent failure of lecture courses to communicate the simplicity and applicability of the language." - Kenneth E. Iverson in A Working Introduction to APL © 1981 I.P. Sharp Associates

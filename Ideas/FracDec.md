# Fraction from decimal
Give the mixed fraction a + (b ÷ c) from a decimal number x.zyjklmn...

### How do we find the fraction from a decimal number?
```APL
∇frac a
 m←10*⌊/⍸0=1|(10*⍳7)×a
 d←b[c←⌊/⍸0=1|b←(⍳m)÷a]
 c,'÷',d
∇
```
Extension - robust mixed fractions
```APL
∇frac n;a;m;b;d;c
 a←1|n
 m←m←10*7⌊⌊/⍸0=1|(10*⍳7)×a
 d←b[c←⌊/⍸0=1|b←(⍳m)÷a]
 :If 1>n
     c,'÷',d
 :ElseIf 1<n
     (⌊n),'+ (',c,'÷',d')'
 :Else
     'dunno'
 :EndIf
∇
```
``` ⍳10000000``` is the largest before WS FULL (default settings)  
CAUTION: frac ○1, *1 suggests that π, e are rational!

Train 🚂
```APL
(1∧⊢,÷)
```
NB: Depends on ⎕CT, ⎕DCT and ⎕FR

 start;i

 Random←{⍵⊃⍨?≢⍵}
 ReactionTo←{1⊣⎕←(Random ⍺)⊣⎕←⍎⍵}
 Has←{×≢⍵ ⎕S 0⊢⍺}

 Gives←{
     patterns←,⍵
     ⎕←⍺
     input←⍞
     '→'∊input:0
     input Has⊃patterns:PERFECT ReactionTo input
     input Has⊃1↓patterns:OK ReactionTo input
     ⎕←Random WRONG
     ⍺ ∇ ⍵
 }
 :For i :In ⍳⍴PROMPT
     :If (⊃i⌷PROMPT)Gives i⌷EXPECTED
     :AndIf 1
         ⎕←'Well done!'
     :Else
         ⎕←'Bye!'
     :EndIf
 :EndFor

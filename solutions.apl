]cd gh/ohAitch/advent2021
      in1←,⎕csv'in/1.txt'⍬4
      ⊢d1p1←+/2</in1
      ⊢d1p2←+/2</3+/in1
      in2←⊃¨⎕CSV⍠'Separator' ' '⊢'in/2.txt'⍬4
      ⊢d2p1←×/⊃+/{⍵×('fdu'⍳⍺)⌷3 2⍴1 0 0 1 0 ¯1}/in2
      ⊢d2p2←{⍺ ×⍥(+/)⍺×+\⍵}/↓⍉↑{⍵×('fdu'⍳⍺)⌷3 2⍴1 0 0 1 0 ¯1}/in2
      in3←'1'=↑⊃⎕nget'in/3.txt'1
      ⊢d3p1←((2⊥⊢)×(2⊥~))0<+⌿¯1+2×in3
      ⊢d3p2←×/2⊥⍉↑0 1{⍵⌿⍨b=⍺=0≤+⌿¯1+2×b←⍵⌷[2]⍨⊃⍸(∨⌿≠∧⌿)⍵}⍣{1=⊃⍴⍺}¨⊂(⊂∘⍋⌷⊢)in3

      in12←⊃¨{⍵≡'zt':'tz'⋄⍵}¨⎕CSV⍠'Separator' '-'⊢'in/12.txt'⍬
      s e←'se'⍳⍨⊃low cap←⎕←{(⌽'es'∪⍵~⎕A)(⍵∩⎕A)}∪,in12
      ways←({(low∘.,low)∊⍵}+{(⍉+.∧⊢)(cap∘.,low)∊⍵})↓(⌽⍪⊢)in12
      take←{(⍳⍺)(,[⍳2](⊢,⍤1 0~)⍤1)⍣⍵⍉⍪⍬}
      ⊢d12p1←+/∊{×/2 (⌷∘ways)⍤,/ (s,⊢,e⍨)5 take ⍵}¨ 0,⍳5
      ⊢d12p2←+/∊{×/2 (⌷∘ways)⍤,/ (s,⊢,e⍨) ∪⊃⍪/((⊢∘.,⊂)⍳5)⌷¨⍨⊂⊂6 take ⍵}¨0,⍳6

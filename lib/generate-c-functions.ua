# Experimental!
# Generic Uiua FFI function binding string builders.
# Intended for generators that normalize C ABI declarations into:
# - a public Uiua binding name
# - a `Lib {...}` signature string
# - argument count/pack metadata

Digits ← "0123456789"

AssertStringLiteral ← ⍤"Expected string literal" /× =@" ⊂ ⊃(⊡0|⊡¯1) ⯾₁∞ °□⊢
JoinBy!      ←^ $"$\"\__\_\"" ⇌↘1⇌↘1 °□⊢ ⊸AssertStringLiteral
JoinLines    ← /JoinBy!"\n"

DigitNames ← (
  ⍜⊜∘≡⋅"Zero" ⊸⦷ @0
  ⍜⊜∘≡⋅"One" ⊸⦷ @1
  ⍜⊜∘≡⋅"Two" ⊸⦷ @2
  ⍜⊜∘≡⋅"Three" ⊸⦷ @3
  ⍜⊜∘≡⋅"Four" ⊸⦷ @4
  ⍜⊜∘≡⋅"Five" ⊸⦷ @5
  ⍜⊜∘≡⋅"Six" ⊸⦷ @6
  ⍜⊜∘≡⋅"Seven" ⊸⦷ @7
  ⍜⊜∘≡⋅"Eight" ⊸⦷ @8
  ⍜⊜∘≡⋅"Nine" ⊸⦷ @9
)

BindingArityFromCount  ← |1 $"|_" °⋕
VoidSignatureFromCount ← |1 $"|_.0" °⋕
NonzeroArgPackFromCount ← |1 $"□,_" °⋕
ArgumentPackFromCount   ← |1 ⨬(NonzeroArgPackFromCount|⋅"{}") ⊸=0

RawFunctionLine    ← |2 $"  _ ← Lib {_}"
ReturnStackLine    ← |4 $"_ ← _ Raw._ _"
VoidStackLine      ← |4 $"_ ← _ ◌ (Raw._ _)"
ReturnBoxedLine    ← |2 $"_ ← |0.1 (Raw._ {})"
VoidBoxedLine      ← |2 $"_ ← |0.0 (◌ (Raw._ {}))"
EndFunctionLine    ← |2 $"_ ← |0.0 (◌ (Raw._ {}))"
BeginObverseLine   ← |5 $"_ ← _ ⌅(◌ (Raw._ _)|◌ (Raw._ {}))"
RawFunctionBlock   ← |1 $"┌─╴Raw\n_\n└─╴" JoinLines

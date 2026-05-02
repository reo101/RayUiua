# Experimental!

# Expanded ? Dimensions Original
Expand ← (
  ⤚˜↙⊙(¯⧻⊸△) # ToFixDimensions Dimensions Original ? Dimensions Original
  ⍥(
    # Fix leftmost dimension by reshaping (expanding)
    ⟜₂(⬚0↯⊃(°⊸⊢⊃⊢(△⋅⋅∘)|⋅⋅∘)) # ToFixDimensions Dimensions OriginalE ? ToFixDimensions Dimensions OriginalE
    # Rotate (transpose) ToFixDimensions and Original
    ↻₋₁⊙⊙⍉ # ToFixDimensionsT Dimensions OriginalT ? ToFixDimensions Dimensions Original
  )⊸⧻      # `⧻ToFixDimensions` times
  ⬚0⋅↯     # Reshape to the missing dimensions
)
新形 ← Expand

┌─╴test
  Got ← Expand 2_3_4_2 [1_2_3 3_4_5 5_6_7]

  Expected ← [[[[1 2] [3 4] [5 6] [0 0]]
               [[0 0] [0 0] [0 0] [0 0]]
               [[0 0] [0 0] [0 0] [0 0]]]
              [[[0 0] [0 0] [0 0] [0 0]]
               [[0 0] [0 0] [0 0] [0 0]]
               [[0 0] [0 0] [0 0] [0 0]]]]

  ⍤⤙≍ Got Expected
└─╴

Glider ← 新形 5_5 °⊚ [2_0 2_1 2_2 1_2 0_1]

┌─╴test
  Expected ← Glider

  Got ← [[0 1 0 0 0]
         [0 0 1 0 0]
         [1 1 1 0 0]
         [0 0 0 0 0]
         [0 0 0 0 0]]

  ⍤⤙≍ Got Expected
└─╴

┌─╴Comonady
  生のゲーム ← |1 (
    # WindowsMatrix ? LifeMatrix
    窓 ← ≡(↘1↘¯1)(↘1↘¯1)⬚0⧈∘3_3
    # Alive ? Window
    命 ← ⊡1_1
    # NeighboursCount ? Window
    隣 ← -⊃(⊡1_1|/+♭)
    # Alive ? Alive NeighboursCount
    続 ← ⍣(⍩=3°0|⍩∊2_3°1)
  
    ≡₂(続⊃(命|隣))窓
  )
└─╴

Life₁ ↚ ∨∩=₃⟜+⊸(/+↻⊂A₂C₂)
Life₂ ↚ Comonady.生のゲーム

Life ← Life₁

┌─╴test
  Got₁ ← Life₁ Glider
  Got₂ ← Life₂ Glider
  Expected ← [[0 0 0 0 0]
              [1 0 1 0 0]
              [0 1 1 0 0]
              [0 1 0 0 0]
              [0 0 0 0 0]]
  ∩⌟(⍤⤙≍) Got₁ Got₂ Expected
└─╴

Demo ← ⍥⊸Life20 Glider

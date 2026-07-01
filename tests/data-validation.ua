# Experimental!
# Run with Uiua 0.19.1 in the dev shell: uiua test tests/data-validation.ua

RL ~ "../lib/raylib"

┌─╴test
  ⍤⤙≍ 1 RL.VectorTwo.X RL.VectorTwo 1 2
  ⍤⤙≍ "root" RL.BoneInfo.Name RL.BoneInfo "root" ¯1
  ⍤⤙≍ [1 2 3 4] RL.Color 1 2 3 4
  # Preserve numeric-array fields such as VrDeviceInfo.LensDistortionValues.
  ⍤⤙≍ [1 2 3 4] RL.Number [1 2 3 4]
└─╴

┌─╴test
  ⍤"Numeric field accepted text" ⍣(⋅0 RL.VectorTwo "x" 2)(⋅1)
  ⍤"String field accepted a number" ⍣(⋅0 RL.BoneInfo 1 ¯1)(⋅1)
  ⍤"Color channel accepted text" ⍣(⋅0 RL.Color "r" 2 3 4)(⋅1)
└─╴

┌─╴test
  ◌ ⊨ RL.VectorTwo.t RL.VectorTwo 1 2
  ◌ ⊨ RL.BoneInfo.t RL.BoneInfo "root" ¯1
  ⍤"VectorTwo.t lost its numeric field types" ⍣(⋅0 ⊨ RL.VectorTwo.t {"x" 2})(⋅1)
  ⍤"BoneInfo.t lost its string field type" ⍣(⋅0 ⊨ RL.BoneInfo.t {1 ¯1})(⋅1)
└─╴

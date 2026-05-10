# Experimental!

RL ~ "../lib/raylib"

RL.SetConfigFlags RL.ConfigFlags.FlagWindowResizable

RL.InitWindow 800 600 "rayuiua"
RL.SetTargetFPS 60

Loop ← |1 (
  # &s "frame"
  ◌
  ⍜(RL.BeginDrawing)(
    RL.ClearBackground RL.Color.Green
    RL.DrawRectangle 80 80 160 80 RL.Color.White
    RL.DrawText "green" 124 110 20 RL.Color.Black
    []
  )
  ◌
  ◌
  0
)

ShouldContinue ← |1 (
  ¬ RL.WindowShouldClose {}
  ⊙◌
)

⍢(Loop|ShouldContinue) 0

RL.CloseWindow {}

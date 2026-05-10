# Experimental!

RL ~ "../lib/raylib"

RL.SetConfigFlags RL.ConfigFlags.FlagWindowResizable

RL.InitWindow 800 600 "rayuiua"
RL.SetTargetFPS 60

Loop ← (
  ⍜(RL.BeginDrawing)(
    RL.ClearBackground RL.Color.Green
    RL.DrawRectangle 80 80 160 80 RL.Color.White
    RL.DrawText "green" 124 110 20 RL.Color.Black
  )
)

⍢(Loop|¬RL.WindowShouldClose)

RL.CloseWindow

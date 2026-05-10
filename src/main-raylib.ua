# Experimental!

Raylib ~ "../lib/raylib"

◌ Raylib.SetConfigFlags {Raylib.ConfigFlags.FlagWindowResizable}

◌ Raylib.InitWindow {800 600 "rayuiua"}
◌ Raylib.SetTargetFPS {60}

Loop ← (
  # &s "frame"
  under(Raylib.BeginDrawing)(
    ◌ Raylib.ClearBackground {Raylib.Color.Green}
    ◌ Raylib.DrawRectangle {80 80 160 80 Raylib.Color.White}
    ◌ Raylib.DrawText {"green" 124 110 20 Raylib.Color.Black}
  )
)

⍢(Loop|¬Raylib.WindowShouldClose {}) 0

◌ Raylib.CloseWindow {}

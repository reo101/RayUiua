# Experimental!

Raylib ~ "lib/raylib"

◌ Raylib~InitWindow {800 600 "rayuiua"}
◌ Raylib~CloseWindow {}

# ◌ Raylib~InitWindow {800 600 "rayuiua"}
# ◌ Raylib~SetTargetFPS {60}
# 
# ⍣(¬Raylib~IsWindowReady {}) 0
# 
# DrawFrame ← (
#   ◌ Raylib~BeginDrawing {}
#   ◌ Raylib~ClearBackground {Raylib~Green}
#   ◌ Raylib~DrawRectangle {80 80 160 80 Raylib~White}
#   ◌ Raylib~DrawText {"green" 124 110 20 Raylib~Black}
#   ◌ Raylib~EndDrawing {}
# )
# 
# Frame ← (
#   DrawFrame
#   +1
# )
# 
# ShouldDraw ← ¬Raylib~WindowShouldClose {} ◌
# 
# ⍢(Frame|ShouldDraw) 0
# ◌
# 
# ◌ Raylib~CloseWindow {}

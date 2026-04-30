# Experimental!

LibLoader ~ "loader"

Lib ← LibLoader~ResolveLibrary "raylib" "raylib"

Color ← "uchar[4]"

InitWindow        ← Lib {"void" "InitWindow" "int" "int" "char*"}
CloseWindow       ← Lib {"void" "CloseWindow"}
WindowShouldClose ← Lib {"uchar" "WindowShouldClose"}
IsWindowReady     ← Lib {"uchar" "IsWindowReady"}
IsWindowFocused   ← Lib {"uchar" "IsWindowFocused"}
SetWindowFocused  ← Lib {"void" "SetWindowFocused"}
SetWindowState    ← Lib {"void" "SetWindowState" "uint"}
SetTargetFPS      ← Lib {"void" "SetTargetFPS" "int"}
SetConfigFlags    ← Lib {"void" "SetConfigFlags" "uint"}
GetScreenWidth    ← Lib {"int" "GetScreenWidth"}
GetScreenHeight   ← Lib {"int" "GetScreenHeight"}
GetCurrentMonitor ← Lib {"int" "GetCurrentMonitor"}
GetWindowHandle   ← Lib {"void*" "GetWindowHandle"}
TakeScreenshot    ← Lib {"void" "TakeScreenshot" "char*"}

BeginDrawing    ← Lib {"void" "BeginDrawing"}
EndDrawing      ← Lib {"void" "EndDrawing"}
ClearBackground ← Lib {"void" "ClearBackground" Color}
DrawText        ← Lib {"void" "DrawText" "char*" "int" "int" "int" Color}
DrawRectangle   ← Lib {"void" "DrawRectangle" "int" "int" "int" "int" Color}

MeasureText    ← Lib {"int" "MeasureText" "char*" "int"}
GetRandomValue ← Lib {"int" "GetRandomValue" "int" "int"}
Fade           ← Lib {Color "Fade" Color "float"}

LightGray ← [200 200 200 255]
RayWhite  ← [245 245 245 255]
White     ← [255 255 255 255]
Black     ← [0 0 0 255]
Red       ← [230 41 55 255]
Green     ← [0 228 48 255]
Blue      ← [0 121 241 255]

FlagWindowTopmost     ← 4096
FlagWindowUndecorated ← 8

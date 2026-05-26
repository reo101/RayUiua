# Experimental!

SDL ~ "../../lib/sdl"

◌ SDL.Init SDL.InitVideo

Window   ← SDL.CreateWindow "sdluiua" 320 240 0
Renderer ← SDL.CreateRenderer Window "opengl"

DrawFrame ← |0.0 (
  ◌ SDL.SetRenderDrawColor Renderer 0 255 0 255
  ◌ SDL.RenderClear Renderer
  ◌ SDL.RenderPresent Renderer
  SDL.Delay 16
)

ShouldContinue ← |0 (
  SDL.PumpEvents
  ¬∨∩SDL.HasEvent SDL.EventQuit SDL.EventWindowCloseRequested
)

⍢(DrawFrame|ShouldContinue)

SDL.DestroyRenderer Renderer
SDL.DestroyWindow Window
SDL.Quit

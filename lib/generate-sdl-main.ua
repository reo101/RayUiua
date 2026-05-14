# Experimental!
# Usage:
#   uiua run lib/generate-sdl-main.ua [path/to/sdl_api.json] [path/to/output.ua] [loader/import/path]

Gen ~ "generate-sdl"

Args       ← &args
InputPath  ← ⬚"sdl_api.json"⊡1 Args
OutputPath ← ⬚"lib/sdl.generated.ua"⊡2 Args
LoaderPath ← ⬚"loader"⊡3 Args
Output     ← Gen.SourceFromPathWithLoader InputPath LoaderPath

&fwa OutputPath Output
&p $"Wrote _ from _" OutputPath InputPath

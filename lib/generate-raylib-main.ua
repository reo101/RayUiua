# Experimental!
# Usage:
#   uiua run lib/generate-raylib-main.ua [path/to/raylib_api.json] [path/to/output.ua] [loader/import/path]

Gen ~ "generate-raylib"

Args       ← &args
InputPath  ← ⬚"raylib_api.json"⊡1 Args
OutputPath ← ⬚"lib/raylib.generated.ua"⊡2 Args
LoaderPath ← ⬚"loader"⊡3 Args
Output     ← Gen.SourceFromPathWithLoader InputPath LoaderPath

&fwa OutputPath Output
&p $"Wrote _ from _" OutputPath InputPath

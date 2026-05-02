# Experimental!
# Import this module when you want generated source as a string or as inline
# macro-expanded Uiua code. Use <lib/generate-raylib-main.ua> as the runnable
# entrypoint for file output:
#   uiua run lib/generate-raylib-main.ua [path/to/raylib_api.json] [path/to/output.ua]

Digits ← "0123456789"

GetName       ← °□get "name"
GetType       ← °□get "type"
GetValue      ← °□get "value"
GetReturnType ← °□get "returnType"
GetParams     ← |1 ⍣(°□get "params"){}
GetFields     ← °□get "fields"

TitleWord    ← ⍜⊡⌵0¯⌵
SplitUnders  ← ⊜□⊸≠@_
Quote        ← $"\"_\""
JoinWords    ← /$"_ _"
JoinLines    ← /$"_\n_"
JoinBlocks   ← /$"_\n\n_"
JoinBars     ← /$"_|_"
ExtractNums  ← ≡⋕ ⊜□⊸∊Digits
Starts       ← |2 ⊢⌕
QuoteMask    ← >0 ⦷ @"
InsideQuotes ← ×⊃(¬QuoteMask|◿2 \+ QuoteMask)
QuotedWords  ← |1 ⊜□⊸InsideQuotes

DigitNames ← (
  ⍜⊜∘≡⋅"Zero" ⊸⦷ @0
  ⍜⊜∘≡⋅"One" ⊸⦷ @1
  ⍜⊜∘≡⋅"Two" ⊸⦷ @2
  ⍜⊜∘≡⋅"Three" ⊸⦷ @3
  ⍜⊜∘≡⋅"Four" ⊸⦷ @4
  ⍜⊜∘≡⋅"Five" ⊸⦷ @5
  ⍜⊜∘≡⋅"Six" ⊸⦷ @6
  ⍜⊜∘≡⋅"Seven" ⊸⦷ @7
  ⍜⊜∘≡⋅"Eight" ⊸⦷ @8
  ⍜⊜∘≡⋅"Nine" ⊸⦷ @9
)

PascalName ← (
  /◇⊂⍚TitleWord
)

EnumRenames ← comptime(map {
    "KeyboardKey"
    "MaterialMapIndex"
    "ShaderLocationIndex"
  } {
    "Key"
    "MaterialMap"
    "ShaderLocation"
  })

ColorPrefixLen   ← |1 ($"/+ ⊃[_]" /$"_|_" ˙⍚$"((×⧻\"_\") Starts \"_\")" QuotedWords °□⊢)^!{"DARK" "LIGHT" "RAY"}
SplitColorName   ← |2 ⊂ ∩TitleWord⊃(↙|↘)
SpecialColorName ← |1 SplitColorName ColorPrefixLen ⊸∘
ColorName        ← |1 ⨬(TitleWord|SpecialColorName) >0 ColorPrefixLen ⊸∘

CTypeNames ← {
  "void"
  "bool"
  "char"
  "short"
  "int"
  "long"
  "long long"
  "float"
  "double"
  "unsigned char"
  "unsigned short"
  "unsigned int"
  "unsigned long"
  "unsigned long long"
  "char *"
  "const char *"
  "void *"
  "const void *"
  "unsigned char *"
  "const unsigned char *"
  "int *"
  "unsigned int *"
  "float *"
  "float[2]"
  "float[4]"
  "char[32]"
  "int[4]"
}

CLayoutNames ← {
  "void"
  "uchar"
  "char"
  "short"
  "int"
  "long"
  "long long"
  "float"
  "double"
  "uchar"
  "ushort"
  "uint"
  "ulong"
  "unsigned long long"
  "char*"
  "char*"
  "void*"
  "void*"
  "uchar*"
  "uchar*"
  "int*"
  "uint*"
  "float*"
  "float[2]"
  "float[4]"
  "char[32]"
  "int[4]"
}

CSignatureMap ← comptime(map CTypeNames ⍚Quote CLayoutNames)
CLayoutMap    ← comptime(map CTypeNames CLayoutNames)

ValueTypeNames ← {
  "Color"
  "Vector2"
  "Vector3"
  "Vector4"
  "Quaternion"
  "Matrix"
  "Rectangle"
  "Image"
  "Texture"
  "Texture2D"
  "TextureCubemap"
  "RenderTexture"
  "RenderTexture2D"
  "NPatchInfo"
  "GlyphInfo"
  "Font"
  "Camera2D"
  "Camera3D"
  "Camera"
  "Ray"
  "RayCollision"
  "BoundingBox"
  "Wave"
  "AudioStream"
  "Sound"
  "Music"
  "VrDeviceInfo"
  "VrStereoConfig"
  "FilePathList"
  "AutomationEvent"
  "AutomationEventList"
}
ValueNameMap   ← comptime(map ValueTypeNames ⍚DigitNames ValueTypeNames)
ValueLayoutMap ← comptime(map ValueTypeNames ⍚($"_Layout" DigitNames) ValueTypeNames)
AliasLayoutMap ← comptime(map {
    "Quaternion"
    "Texture2D"
    "TextureCubemap"
    "RenderTexture2D"
    "Camera"
  } {
    "VectorFourLayout"
    "TextureLayout"
    "TextureLayout"
    "RenderTextureLayout"
    "CameraThreeDLayout"
  })

TypeName   ← |1 ⍣(get ⊙ValueLayoutMap)(⍣(get ⊙CSignatureMap)"\"void*\"")
LayoutType ← |1 ⍣(get ⊙AliasLayoutMap)(⍣(get ⊙ValueLayoutMap)(⍣(get ⊙CLayoutMap)"void*"))
ValueName  ← |1 ⍣(get ⊙ValueNameMap)∘

KnownCLayout    ← |1 has ⊙CLayoutMap
ContainsStar    ← |1 >0 /+ ⌕ "*"
StringCType     ← |1 >0 /+ ⊃[(Starts "char *")|(Starts "const char *")|(Starts "char[")]
NumberCType     ← |1 /× ⊃[KnownCLayout|¬StringCType|¬ContainsStar|¬≍"void"]
ValidatorKind   ← |1 /+ ⊃[NumberCType|((×2) StringCType)]
ValidatorSuffix ← |1 ⨬(⋅""|⋅": Number"|⋅": String") ValidatorKind ⊸∘

FieldName       ← |1 DigitNames TitleWord GetName
RenderDataField ← |1 $"__" ⊃(FieldName|ValidatorSuffix GetType)
JoinFields      ← /$"_|_"

PreludePrefix ← comptime(JoinLines {
    "# Generated from raylib rlparser JSON by <lib/generate-raylib.ua>."
    "# Do not edit by hand."
    "# Experimental!"
    "# Type check!"
    ""
  })

StaticPrelude ← comptime(JoinLines {
    "Lib ← LibLoader~ResolveLibrary \"raylib\" \"raylib\""
    ""
    "Number ← °0type"
    "String ← °1type"
  })

GeneratePrelude ← |1 $"_\n_" ⊃(⋅PreludePrefix|$"LibLoader ~ \"_\"")

RenderColorLine ← |1 (
  $"  _ ← [_]" ⊃(ColorName GetName|JoinWords °⋕ ExtractNums GetValue)
)

FilterColors     ← ▽⊃(≡◇(≍"COLOR" °□get "type")|∘)
ColorLines       ← JoinLines ⍚RenderColorLine FilterColors
RenderColorBlock ← |1 $"┌─╴Color\n  ~[R: Number|G: Number|B: Number|A: Number]\n_\n└─╴" ColorLines

StructName        ← |1 ValueName GetName
StructLayoutName  ← |1 $"_Layout" StructName
FieldLayout       ← |1 LayoutType GetType
FieldLayoutPart   ← |1 ⨬(FieldLayout|⋅"_") ⊃(has⊙ValueLayoutMap GetType|∘)
StructLayoutBody  ← |1 /$"_; _" ⍚FieldLayoutPart GetFields
ValueLayoutFields ← ▽⊃(≡◇(has⊙ValueLayoutMap GetType)|∘)
StructLayoutArgs  ← |1 JoinWords ⍚FieldLayout ValueLayoutFields GetFields

RenderStructLayout ← |1 (
  ⊃(StructLayoutName|StructLayoutBody|StructLayoutArgs)
  $"_ ← $\"{_}\" _"
)

RenderAliasLayout ← |1 (
  ⊃(StructLayoutName|TypeName GetType)
  $"_ ← _"
)

RenderStructDataDef ← |1 (
  ⊃(StructName|JoinFields ⍚RenderDataField GetFields)
  $"~_ {_}"
)

NonColorStructs      ← ▽⊃(¬≡◇(≍"Color" GetName)|∘)
PublicAliases        ← ▽⊃(¬≡◇(Starts "*" GetName)|∘)
RenderStructLayouts  ← |1 JoinLines ⍚RenderStructLayout °□get "structs"
RenderAliasLayouts   ← |1 JoinLines ⍚RenderAliasLayout PublicAliases °□get "aliases"
RenderStructDataDefs ← |1 JoinLines ⍚RenderStructDataDef NonColorStructs °□get "structs"
RenderTypePrelude ← |1 (
  ⊃(RenderStructLayouts|RenderAliasLayouts|RenderStructDataDefs)
  $"_\n\n_\n\n# Data definitions for Raylib structs.\n_"
)

EnumName          ← ⍣(get ⊙EnumRenames)∘ GetName
RenderEnumVariant ← |1 $"  |_" DigitNames PascalName SplitUnders GetName
RenderEnumCValue  ← |1 °⋕ GetValue
EnumVariants      ← |1 JoinLines ⍚RenderEnumVariant °□get "values"
EnumCValues       ← |1 JoinWords ⍚RenderEnumCValue °□get "values"

RenderEnumBlock ← |1 (
  ⊃(EnumName|EnumVariants|EnumCValues)
  $"┌─╴_\n_\n  CValues ← [_]\n  ToC ← ⌅(|1 ⊡⊙CValues| |1 ⊢⊚=⊙CValues)\n  FromC ← °ToC\n└─╴"
)

GetDefines      ← °□get "defines"
GetEnums        ← °□get "enums"
GetFunctions    ← °□get "functions"
RenderDefines   ← |1 RenderColorBlock GetDefines
RenderEnums     ← |1 JoinBlocks ⍚RenderEnumBlock GetEnums
LookupParamType ← |1 TypeName °□get "type"

BuildFunction ← |1 (
  ⊃(DigitNames GetName
  | (
      ⊃(TypeName GetReturnType|Quote GetName|JoinWords ⍚LookupParamType GetParams)
      $"_ _ _"
    )
  )
  $"_ ← Lib {_}"
)

RenderFunction  ← |1 BuildFunction
RenderFunctions ← |1 JoinLines ⍚RenderFunction GetFunctions
RenderParts     ← ⊃(⋅StaticPrelude|RenderTypePrelude|RenderDefines|RenderEnums|RenderFunctions)

GenerateBody ← |1 $"_\n\n_\n\n_\n\n_\n\n# Top-level function bindings.\n_" RenderParts

GenerateSourceWithLoader ← |2 ˜$"_\n\n_" GenerateBody ⊙GeneratePrelude
GenerateSource           ← |1 GenerateSourceWithLoader ⊙"loader"

HasDescriptionField ← |1 >0 /+ ⌕ "\"description\":"
CleanApiJson        ← |1 JoinLines ▽⊃(¬≡◇HasDescriptionField|∘) ⊜□⊸≠@\n
ReadApiJson         ← |1 CleanApiJson &fras

SourceFromPathWithLoader ← |2 GenerateSourceWithLoader °json ReadApiJson ⊙∘
SourceFromPath           ← |1 SourceFromPathWithLoader ⊙"loader"
SourceFromDecodedArgs    ← |1 SourceFromPathWithLoader ⊃(⊡0|⊡1)

# Compile-time expansion path. Import this module and call, for example:
#   Gen ~ "lib/generate-raylib"
#   Gen~DefineRaylib!"raylib_api.json"
# If expanding somewhere that cannot import "loader" relative to the generated
# code, provide both the API path and loader import path:
#   Gen~DefineRaylibWithLoader‼"raylib_api.json""../lib/loader"
# Macro operands are Uiua code, so quoted paths are decoded with °json
DefineRaylib!           ←^ SourceFromPath °json °□⊡0
DefineRaylibWithLoader‼ ←^ SourceFromDecodedArgs ⍚°json °□
DefineRaylibFromEnv!    ←^ SourceFromPath (&var "RAYLIB_API_JSON") ◌

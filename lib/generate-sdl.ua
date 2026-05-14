# Experimental!
# Generate SDL3 Uiua bindings from a small ABI/API JSON.
# The expected JSON shape intentionally matches the function portion of
# raylib's rlparser output:
#   {"functions":[{"name":"SDL_Init","returnType":"bool","params":[...]}]}

CGen ~ "generate-c-functions"

Digits ← "0123456789"

GetName       ← °□get "name"
GetReturnType ← °□get "returnType"
GetParams     ← |1 ⍣(°□get "params"){}

AssertStringLiteral ← ⍤"Expected string literal" /× =@" ⊂ ⊃(⊡0|⊡¯1) ⯾₁∞ °□⊢
Quote        ← $"\"_\""
SplitUnders  ← ⊜□⊸≠@_
PascalName   ← /◇⊂
JoinBy!      ←^ $"$\"\__\_\"" ⇌↘1⇌↘1 °□⊢ ⊸AssertStringLiteral
JoinWords    ← /JoinBy!" "
JoinLines    ← /JoinBy!"\n"
Starts       ← |2 ⊢⌕
ContainsStar ← |1 >0 /+ ⌕ "*"

DigitNames ← CGen.DigitNames
StripSdlPrefix ← |1 ⨬(∘|↘4) ⊸(>0 /+ Starts "SDL_")

CTypeNames ← {
  "void"
  "bool"
  "char"
  "signed char"
  "unsigned char"
  "short"
  "unsigned short"
  "int"
  "unsigned int"
  "long"
  "unsigned long"
  "long long"
  "unsigned long long"
  "float"
  "double"
  "char *"
  "const char *"
  "void *"
  "const void *"
  "Uint8"
  "Sint8"
  "Uint16"
  "Sint16"
  "Uint32"
  "Sint32"
  "Uint64"
  "Sint64"
  "SDL_InitFlags"
  "SDL_WindowFlags"
  "SDL_GLContext"
  "SDL_PropertiesID"
}

CLayoutNames ← {
  "void"
  "uchar"
  "char"
  "char"
  "uchar"
  "short"
  "ushort"
  "int"
  "uint"
  "long"
  "ulong"
  "long long"
  "unsigned long long"
  "float"
  "double"
  "char*"
  "char*"
  "void*"
  "void*"
  "uchar"
  "char"
  "ushort"
  "short"
  "uint"
  "int"
  "ulong"
  "long long"
  "uint"
  "ulong"
  "void*"
  "uint"
}

CSignatureMap ← comptime(map CTypeNames ⍚Quote CLayoutNames)
TypeName ← |1 ⍣(get ⊙CSignatureMap)(⨬(⋅"\"int\""|⋅"\"void*\"") ⊸ContainsStar)

PreludePrefix ← comptime(JoinLines {
    "# Generated from SDL3 API JSON by <lib/generate-sdl.ua>."
    "# Do not edit by hand."
    "# Experimental!"
    "# Type check!"
    ""
  })

StaticPrelude ← comptime(JoinLines {
    "Lib ← LibLoader~ResolveLibrary \"sdl3\" \"SDL3\""
    ""
    "Number ← °0type"
    "String ← °1type"
    ""
    "InitVideo ← 32"
    "WindowOpenGL ← 2"
    "WindowResizable ← 32"
    "EventQuit ← 256"
    "EventWindowCloseRequested ← 528"
  })

GeneratePrelude ← |1 $"_\n_" ⊃(⋅PreludePrefix|$"LibLoader ~ \"_\"")

GetFunctions    ← °□get "functions"
LookupParamType ← |1 TypeName °□get "type"

BindingName     ← |1 DigitNames PascalName SplitUnders StripSdlPrefix GetName
BindingArgCount ← |1 ⧻ GetParams
BindingArity    ← |1 CGen.BindingArityFromCount BindingArgCount
VoidSignature   ← |1 CGen.VoidSignatureFromCount BindingArgCount
ArgumentPack    ← |1 CGen.ArgumentPackFromCount BindingArgCount
BuildFunctionSig ← |1 (
  ⊃(TypeName GetReturnType|Quote GetName|JoinWords ⍚LookupParamType GetParams)
  $"_ _ _"
)

BuildRawFunction     ← |1 CGen.RawFunctionLine ⊃(BindingName|BuildFunctionSig)
BuildReturnStack     ← |1 CGen.ReturnStackLine ⊃(BindingName|BindingArity|BindingName|ArgumentPack)
BuildVoidStack       ← |1 CGen.VoidStackLine ⊃(BindingName|VoidSignature|BindingName|ArgumentPack)
BuildReturnBoxed     ← |1 CGen.ReturnBoxedLine ⊃(BindingName|BindingName)
BuildVoidBoxed       ← |1 CGen.VoidBoxedLine ⊃(BindingName|BindingName)
BuildReturnFunction  ← |1 ⨬(BuildReturnStack|BuildReturnBoxed) ⊸(=0 BindingArgCount)
BuildVoidFunction    ← |1 ⨬(BuildVoidStack|BuildVoidBoxed) ⊸(=0 BindingArgCount)
BuildFunction        ← |1 ⨬(BuildReturnFunction|BuildVoidFunction) ⊸(≍"void" GetReturnType)

RenderRawFunctions ← |1 CGen.RawFunctionBlock ⍚BuildRawFunction GetFunctions
RenderFunctions    ← |1 JoinLines ⍚BuildFunction GetFunctions
RenderParts        ← ⊃(⋅StaticPrelude|RenderRawFunctions|RenderFunctions)

GenerateBody ← |1 $"_\n\n# Raw FFI bindings.\n_\n\n# Top-level function bindings.\n_" RenderParts

GenerateSourceWithLoader ← |2 ˜$"_\n\n_" GenerateBody ⊙GeneratePrelude
GenerateSource           ← |1 GenerateSourceWithLoader ⊙"loader"

ReadApiJson ← &fras
SourceFromPathWithLoader ← |2 GenerateSourceWithLoader °json ReadApiJson ⊙∘
SourceFromPath           ← |1 SourceFromPathWithLoader ⊙"loader"
SourceFromDecodedArgs    ← |1 SourceFromPathWithLoader ⊃(⊡0|⊡1)

DefineSdl!           ←^ SourceFromPath °json °□⊡0
DefineSdlWithLoader‼ ←^ SourceFromDecodedArgs ⍚°json °□
